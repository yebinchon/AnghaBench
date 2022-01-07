; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_state.c_dst_trans_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_state.c_dst_trans_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_trans = type { i32, %struct.bio*, %struct.TYPE_2__* }
%struct.bio = type { i32 }
%struct.TYPE_2__ = type { %struct.dst_state* }
%struct.dst_state = type { i32 }

@WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dst_trans_send(%struct.dst_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_state*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.dst_trans* %0, %struct.dst_trans** %3, align 8
  %7 = load %struct.dst_trans*, %struct.dst_trans** %3, align 8
  %8 = getelementptr inbounds %struct.dst_trans, %struct.dst_trans* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.dst_state*, %struct.dst_state** %10, align 8
  store %struct.dst_state* %11, %struct.dst_state** %5, align 8
  %12 = load %struct.dst_trans*, %struct.dst_trans** %3, align 8
  %13 = getelementptr inbounds %struct.dst_trans, %struct.dst_trans* %12, i32 0, i32 1
  %14 = load %struct.bio*, %struct.bio** %13, align 8
  store %struct.bio* %14, %struct.bio** %6, align 8
  %15 = load %struct.dst_trans*, %struct.dst_trans** %3, align 8
  %16 = getelementptr inbounds %struct.dst_trans, %struct.dst_trans* %15, i32 0, i32 0
  %17 = call i32 @dst_convert_cmd(i32* %16)
  %18 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %19 = call i32 @dst_state_lock(%struct.dst_state* %18)
  %20 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %21 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %26 = call i32 @dst_state_init_connected(%struct.dst_state* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %61

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.bio*, %struct.bio** %6, align 8
  %33 = call i64 @bio_data_dir(%struct.bio* %32)
  %34 = load i64, i64* @WRITE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %38 = load %struct.dst_trans*, %struct.dst_trans** %3, align 8
  %39 = getelementptr inbounds %struct.dst_trans, %struct.dst_trans* %38, i32 0, i32 0
  %40 = load %struct.dst_trans*, %struct.dst_trans** %3, align 8
  %41 = getelementptr inbounds %struct.dst_trans, %struct.dst_trans* %40, i32 0, i32 1
  %42 = load %struct.bio*, %struct.bio** %41, align 8
  %43 = call i32 @dst_send_bio(%struct.dst_state* %37, i32* %39, %struct.bio* %42)
  store i32 %43, i32* %4, align 4
  br label %51

44:                                               ; preds = %31
  %45 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %46 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dst_trans*, %struct.dst_trans** %3, align 8
  %49 = getelementptr inbounds %struct.dst_trans, %struct.dst_trans* %48, i32 0, i32 0
  %50 = call i32 @dst_data_send_header(i32 %47, i32* %49, i32 4, i32 0)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %44, %36
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %58

55:                                               ; preds = %51
  %56 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %57 = call i32 @dst_state_unlock(%struct.dst_state* %56)
  store i32 0, i32* %2, align 4
  br label %65

58:                                               ; preds = %54
  %59 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %60 = call i32 @dst_state_reset_nolock(%struct.dst_state* %59)
  br label %61

61:                                               ; preds = %58, %29
  %62 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %63 = call i32 @dst_state_unlock(%struct.dst_state* %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @dst_convert_cmd(i32*) #1

declare dso_local i32 @dst_state_lock(%struct.dst_state*) #1

declare dso_local i32 @dst_state_init_connected(%struct.dst_state*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @dst_send_bio(%struct.dst_state*, i32*, %struct.bio*) #1

declare dso_local i32 @dst_data_send_header(i32, i32*, i32, i32) #1

declare dso_local i32 @dst_state_unlock(%struct.dst_state*) #1

declare dso_local i32 @dst_state_reset_nolock(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

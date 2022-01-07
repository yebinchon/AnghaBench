; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_receive_rcom_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_receive_rcom_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_rcom = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_mhandle = type { i32 }

@DLM_RCOM_LOOKUP_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_rcom*)* @receive_rcom_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_rcom_lookup(%struct.dlm_ls* %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rcom*, align 8
  %5 = alloca %struct.dlm_rcom*, align 8
  %6 = alloca %struct.dlm_mhandle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %4, align 8
  %11 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %16 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 28
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @DLM_RCOM_LOOKUP_REPLY, align 4
  %25 = call i32 @create_rcom(%struct.dlm_ls* %22, i32 %23, i32 %24, i32 0, %struct.dlm_rcom** %5, %struct.dlm_mhandle** %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %59

29:                                               ; preds = %2
  %30 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %33 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @dlm_dir_lookup(%struct.dlm_ls* %30, i32 %31, i32 %34, i32 %35, i32* %8)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %29
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %44 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %46 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %49 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %51 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %54 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %56 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %6, align 8
  %57 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %58 = call i32 @send_rcom(%struct.dlm_ls* %55, %struct.dlm_mhandle* %56, %struct.dlm_rcom* %57)
  br label %59

59:                                               ; preds = %41, %28
  ret void
}

declare dso_local i32 @create_rcom(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rcom**, %struct.dlm_mhandle**) #1

declare dso_local i32 @dlm_dir_lookup(%struct.dlm_ls*, i32, i32, i32, i32*) #1

declare dso_local i32 @send_rcom(%struct.dlm_ls*, %struct.dlm_mhandle*, %struct.dlm_rcom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

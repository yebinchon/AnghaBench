; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_target_scsi3_pr_reservation_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_target_scsi3_pr_reservation_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.se_session*, %struct.se_device* }
%struct.se_session = type { i64, i64 }
%struct.se_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i32 }

@TCM_RESERVATION_CONFLICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @target_scsi3_pr_reservation_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_scsi3_pr_reservation_check(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.se_session*, align 8
  %6 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %7 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %7, i32 0, i32 2
  %9 = load %struct.se_device*, %struct.se_device** %8, align 8
  store %struct.se_device* %9, %struct.se_device** %4, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 1
  %12 = load %struct.se_session*, %struct.se_session** %11, align 8
  store %struct.se_session* %12, %struct.se_session** %5, align 8
  %13 = load %struct.se_device*, %struct.se_device** %4, align 8
  %14 = getelementptr inbounds %struct.se_device, %struct.se_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.se_device*, %struct.se_device** %4, align 8
  %20 = getelementptr inbounds %struct.se_device, %struct.se_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.se_device*, %struct.se_device** %4, align 8
  %25 = getelementptr inbounds %struct.se_device, %struct.se_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %30 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.se_device*, %struct.se_device** %4, align 8
  %32 = getelementptr inbounds %struct.se_device, %struct.se_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.se_session*, %struct.se_session** %5, align 8
  %37 = getelementptr inbounds %struct.se_session, %struct.se_session* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %18
  br label %63

41:                                               ; preds = %18
  %42 = load %struct.se_device*, %struct.se_device** %4, align 8
  %43 = getelementptr inbounds %struct.se_device, %struct.se_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.se_device*, %struct.se_device** %4, align 8
  %50 = getelementptr inbounds %struct.se_device, %struct.se_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.se_session*, %struct.se_session** %5, align 8
  %55 = getelementptr inbounds %struct.se_session, %struct.se_session* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, -2147483648
  store i32 %60, i32* %6, align 4
  br label %63

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %41
  store i32 0, i32* %2, align 4
  br label %71

63:                                               ; preds = %58, %40
  %64 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @core_scsi3_pr_seq_non_holder(%struct.se_cmd* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @TCM_RESERVATION_CONFLICT, align 4
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %68, %62, %17
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @core_scsi3_pr_seq_non_holder(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

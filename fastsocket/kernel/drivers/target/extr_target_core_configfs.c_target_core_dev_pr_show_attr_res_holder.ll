; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_dev_pr_show_attr_res_holder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_dev_pr_show_attr_res_holder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TRANSPORT_PLUGIN_PHBA_PDEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Passthrough\0A\00", align 1
@DRF_SPC2_RESERVATIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*)* @target_core_dev_pr_show_attr_res_holder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_core_dev_pr_show_attr_res_holder(%struct.se_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.se_device*, %struct.se_device** %4, align 8
  %8 = getelementptr inbounds %struct.se_device, %struct.se_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TRANSPORT_PLUGIN_PHBA_PDEV, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.se_device*, %struct.se_device** %4, align 8
  %19 = getelementptr inbounds %struct.se_device, %struct.se_device* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.se_device*, %struct.se_device** %4, align 8
  %22 = getelementptr inbounds %struct.se_device, %struct.se_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.se_device*, %struct.se_device** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @target_core_dev_pr_show_spc2_res(%struct.se_device* %28, i8* %29)
  store i32 %30, i32* %6, align 4
  br label %35

31:                                               ; preds = %17
  %32 = load %struct.se_device*, %struct.se_device** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @target_core_dev_pr_show_spc3_res(%struct.se_device* %32, i8* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.se_device*, %struct.se_device** %4, align 8
  %37 = getelementptr inbounds %struct.se_device, %struct.se_device* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @target_core_dev_pr_show_spc2_res(%struct.se_device*, i8*) #1

declare dso_local i32 @target_core_dev_pr_show_spc3_res(%struct.se_device*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

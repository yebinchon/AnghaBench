; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_dev_pr_show_attr_res_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_dev_pr_show_attr_res_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TRANSPORT_PLUGIN_PHBA_PDEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"SPC_PASSTHROUGH\0A\00", align 1
@DRF_SPC2_RESERVATIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"SPC2_RESERVATIONS\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SPC3_PERSISTENT_RESERVATIONS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*)* @target_core_dev_pr_show_attr_res_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_core_dev_pr_show_attr_res_type(%struct.se_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca i8*, align 8
  store %struct.se_device* %0, %struct.se_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.se_device*, %struct.se_device** %4, align 8
  %7 = getelementptr inbounds %struct.se_device, %struct.se_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TRANSPORT_PLUGIN_PHBA_PDEV, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.se_device*, %struct.se_device** %4, align 8
  %18 = getelementptr inbounds %struct.se_device, %struct.se_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  br label %29

26:                                               ; preds = %16
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %23, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

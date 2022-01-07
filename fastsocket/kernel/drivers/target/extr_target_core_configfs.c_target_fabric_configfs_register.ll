; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_fabric_configfs_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_fabric_configfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_fabric_configfs = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Unable to locate target_fabric_configfs pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to target struct config_subsystem pointer\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"<<<<<<<<<<<<<<<<<<<<<< END FABRIC API >>>>>>>>>>>>>>>>>>>>>>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_fabric_configfs_register(%struct.target_fabric_configfs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.target_fabric_configfs*, align 8
  %4 = alloca i32, align 4
  store %struct.target_fabric_configfs* %0, %struct.target_fabric_configfs** %3, align 8
  %5 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %3, align 8
  %6 = icmp ne %struct.target_fabric_configfs* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %3, align 8
  %13 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %11
  %21 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %3, align 8
  %22 = call i32 @target_fabric_tf_ops_check(%struct.target_fabric_configfs* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %20
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %25, %16, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @target_fabric_tf_ops_check(%struct.target_fabric_configfs*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

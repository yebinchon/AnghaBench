; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_fabric_configfs_deregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_fabric_configfs_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_fabric_configfs = type { %struct.configfs_subsystem*, i32*, i32, i32, i32 }
%struct.configfs_subsystem = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Unable to locate passed target_fabric_configfs\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to locate passed tf->tf_subsys pointer\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"<<<<<<<<<<<<<<<<<<<<<< BEGIN FABRIC API >>>>>>>>>>>>>>>>>>>>>>\0A\00", align 1
@g_tf_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Non zero tf->tf_access_cnt for fabric %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Target_Core_ConfigFS: DEREGISTER -> Releasing tf: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"<<<<<<<<<<<<<<<<<<<<<< END FABRIC API >>>>>>>>>>>>>>>>>>>>>>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_fabric_configfs_deregister(%struct.target_fabric_configfs* %0) #0 {
  %2 = alloca %struct.target_fabric_configfs*, align 8
  %3 = alloca %struct.configfs_subsystem*, align 8
  store %struct.target_fabric_configfs* %0, %struct.target_fabric_configfs** %2, align 8
  %4 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %5 = icmp ne %struct.target_fabric_configfs* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %46

8:                                                ; preds = %1
  %9 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %10 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %9, i32 0, i32 0
  %11 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %10, align 8
  store %struct.configfs_subsystem* %11, %struct.configfs_subsystem** %3, align 8
  %12 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %3, align 8
  %13 = icmp ne %struct.configfs_subsystem* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %46

16:                                               ; preds = %8
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @mutex_lock(i32* @g_tf_lock)
  %19 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %20 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %19, i32 0, i32 4
  %21 = call i64 @atomic_read(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = call i32 @mutex_unlock(i32* @g_tf_lock)
  %25 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %26 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = call i32 (...) @BUG()
  br label %30

30:                                               ; preds = %23, %16
  %31 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %32 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %31, i32 0, i32 3
  %33 = call i32 @list_del(i32* %32)
  %34 = call i32 @mutex_unlock(i32* @g_tf_lock)
  %35 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %36 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %40 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %42 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %41, i32 0, i32 0
  store %struct.configfs_subsystem* null, %struct.configfs_subsystem** %42, align 8
  %43 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %44 = call i32 @kfree(%struct.target_fabric_configfs* %43)
  %45 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %30, %14, %6
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.target_fabric_configfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

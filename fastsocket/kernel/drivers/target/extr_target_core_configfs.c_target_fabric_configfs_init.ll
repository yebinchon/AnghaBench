; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_fabric_configfs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_fabric_configfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_fabric_configfs = type { i32, i32, i32, %struct.module*, i32 }
%struct.module = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Unable to locate passed fabric name\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TARGET_FABRIC_NAME_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Passed name: %s exceeds TARGET_FABRIC_NAME_SIZE\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@target_core_subsystem = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@g_tf_lock = common dso_local global i32 0, align 4
@g_tf_list = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"<<<<<<<<<<<<<<<<<<<<<< BEGIN FABRIC API >>>>>>>>>>>>>>>>>>>>>>\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Initialized struct target_fabric_configfs: %p for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.target_fabric_configfs* @target_fabric_configfs_init(%struct.module* %0, i8* %1) #0 {
  %3 = alloca %struct.target_fabric_configfs*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.target_fabric_configfs*, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.target_fabric_configfs* @ERR_PTR(i32 %12)
  store %struct.target_fabric_configfs* %13, %struct.target_fabric_configfs** %3, align 8
  br label %69

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = load i64, i64* @TARGET_FABRIC_NAME_SIZE, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.target_fabric_configfs* @ERR_PTR(i32 %23)
  store %struct.target_fabric_configfs* %24, %struct.target_fabric_configfs** %3, align 8
  br label %69

25:                                               ; preds = %14
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.target_fabric_configfs* @kzalloc(i32 32, i32 %26)
  store %struct.target_fabric_configfs* %27, %struct.target_fabric_configfs** %6, align 8
  %28 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %29 = icmp ne %struct.target_fabric_configfs* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.target_fabric_configfs* @ERR_PTR(i32 %32)
  store %struct.target_fabric_configfs* %33, %struct.target_fabric_configfs** %3, align 8
  br label %69

34:                                               ; preds = %25
  %35 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %36 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %35, i32 0, i32 1
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %39 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %38, i32 0, i32 4
  %40 = call i32 @atomic_set(i32* %39, i32 0)
  %41 = load %struct.module*, %struct.module** %4, align 8
  %42 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %43 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %42, i32 0, i32 3
  store %struct.module* %41, %struct.module** %43, align 8
  %44 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %45 = call i32 @target_fabric_setup_cits(%struct.target_fabric_configfs* %44)
  %46 = load i32*, i32** @target_core_subsystem, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %50 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %52 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* @TARGET_FABRIC_NAME_SIZE, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @snprintf(i32 %53, i64 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = call i32 @mutex_lock(i32* @g_tf_lock)
  %58 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %59 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %58, i32 0, i32 1
  %60 = call i32 @list_add_tail(i32* %59, i32* @g_tf_list)
  %61 = call i32 @mutex_unlock(i32* @g_tf_lock)
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %64 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %65 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), %struct.target_fabric_configfs* %63, i32 %66)
  %68 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  store %struct.target_fabric_configfs* %68, %struct.target_fabric_configfs** %3, align 8
  br label %69

69:                                               ; preds = %34, %30, %19, %9
  %70 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %3, align 8
  ret %struct.target_fabric_configfs* %70
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.target_fabric_configfs* @ERR_PTR(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.target_fabric_configfs* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @target_fabric_setup_cits(%struct.target_fabric_configfs*) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

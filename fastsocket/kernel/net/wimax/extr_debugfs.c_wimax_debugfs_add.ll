; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_debugfs.c_wimax_debugfs_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_debugfs.c_wimax_debugfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { %struct.dentry*, %struct.net_device* }
%struct.dentry = type { i32 }
%struct.net_device = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"wimax:%s\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't create debugfs dentry: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"wimax_dl_\00", align 1
@debugfs = common dso_local global i32 0, align 4
@id_table = common dso_local global i32 0, align 4
@op_msg = common dso_local global i32 0, align 4
@op_reset = common dso_local global i32 0, align 4
@op_rfkill = common dso_local global i32 0, align 4
@op_state_get = common dso_local global i32 0, align 4
@stack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wimax_debugfs_add(%struct.wimax_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wimax_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca [128 x i8], align 16
  store %struct.wimax_dev* %0, %struct.wimax_dev** %3, align 8
  %9 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %10 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @snprintf(i8* %16, i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %22 = call %struct.dentry* @debugfs_create_dir(i8* %21, i32* null)
  store %struct.dentry* %22, %struct.dentry** %7, align 8
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = call i32 @PTR_ERR(%struct.dentry* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = call i64 @IS_ERR(%struct.dentry* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %38

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %33
  br label %64

39:                                               ; preds = %1
  %40 = load %struct.dentry*, %struct.dentry** %7, align 8
  %41 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %42 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %41, i32 0, i32 0
  store %struct.dentry* %40, %struct.dentry** %42, align 8
  %43 = load i32, i32* @debugfs, align 4
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = call i32 @__debugfs_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %43, %struct.dentry* %44)
  %46 = load i32, i32* @id_table, align 4
  %47 = load %struct.dentry*, %struct.dentry** %7, align 8
  %48 = call i32 @__debugfs_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %46, %struct.dentry* %47)
  %49 = load i32, i32* @op_msg, align 4
  %50 = load %struct.dentry*, %struct.dentry** %7, align 8
  %51 = call i32 @__debugfs_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %49, %struct.dentry* %50)
  %52 = load i32, i32* @op_reset, align 4
  %53 = load %struct.dentry*, %struct.dentry** %7, align 8
  %54 = call i32 @__debugfs_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %52, %struct.dentry* %53)
  %55 = load i32, i32* @op_rfkill, align 4
  %56 = load %struct.dentry*, %struct.dentry** %7, align 8
  %57 = call i32 @__debugfs_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %55, %struct.dentry* %56)
  %58 = load i32, i32* @op_state_get, align 4
  %59 = load %struct.dentry*, %struct.dentry** %7, align 8
  %60 = call i32 @__debugfs_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %58, %struct.dentry* %59)
  %61 = load i32, i32* @stack, align 4
  %62 = load %struct.dentry*, %struct.dentry** %7, align 8
  %63 = call i32 @__debugfs_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %61, %struct.dentry* %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %39, %38
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %72

66:                                               ; No predecessors!
  %67 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %68 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %67, i32 0, i32 0
  %69 = load %struct.dentry*, %struct.dentry** %68, align 8
  %70 = call i32 @debugfs_remove_recursive(%struct.dentry* %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %66, %64
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @__debugfs_register(i8*, i32, %struct.dentry*) #1

declare dso_local i32 @debugfs_remove_recursive(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

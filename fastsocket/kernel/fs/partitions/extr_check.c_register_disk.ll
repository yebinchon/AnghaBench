; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_check.c_register_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_check.c_register_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32, i8*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.device = type { i32, i32 }
%struct.block_device = type { i32 }
%struct.disk_part_iter = type { i32 }
%struct.hd_struct = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@block_depr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"holders\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"slaves\00", align 1
@GENHD_FL_INVALIDATED = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_disk(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.disk_part_iter, align 4
  %6 = alloca %struct.hd_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %8 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %9 = call %struct.device* @disk_to_dev(%struct.gendisk* %8)
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %17 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_set_name(%struct.device* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @dev_set_uevent_suppress(%struct.device* %20, i32 1)
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call i64 @device_add(%struct.device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %102

26:                                               ; preds = %1
  %27 = load i32, i32* @block_depr, align 4
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = call i32 @kobject_name(i32* %31)
  %33 = call i32 @sysfs_create_link(i32 %27, i32* %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = call i32 @device_del(%struct.device* %37)
  br label %102

39:                                               ; preds = %26
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %41)
  %43 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %44 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %47)
  %49 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %50 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %52 = call i32 @disk_partitionable(%struct.gendisk* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %39
  br label %82

55:                                               ; preds = %39
  %56 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %57 = call i32 @get_capacity(%struct.gendisk* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %82

60:                                               ; preds = %55
  %61 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %62 = call %struct.block_device* @bdget_disk(%struct.gendisk* %61, i32 0)
  store %struct.block_device* %62, %struct.block_device** %4, align 8
  %63 = load %struct.block_device*, %struct.block_device** %4, align 8
  %64 = icmp ne %struct.block_device* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %82

66:                                               ; preds = %60
  %67 = load i32, i32* @GENHD_FL_INVALIDATED, align 4
  %68 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %69 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.block_device*, %struct.block_device** %4, align 8
  %73 = load i32, i32* @FMODE_READ, align 4
  %74 = call i32 @blkdev_get(%struct.block_device* %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %82

78:                                               ; preds = %66
  %79 = load %struct.block_device*, %struct.block_device** %4, align 8
  %80 = load i32, i32* @FMODE_READ, align 4
  %81 = call i32 @blkdev_put(%struct.block_device* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %77, %65, %59, %54
  %83 = load %struct.device*, %struct.device** %3, align 8
  %84 = call i32 @dev_set_uevent_suppress(%struct.device* %83, i32 0)
  %85 = load %struct.device*, %struct.device** %3, align 8
  %86 = getelementptr inbounds %struct.device, %struct.device* %85, i32 0, i32 0
  %87 = load i32, i32* @KOBJ_ADD, align 4
  %88 = call i32 @kobject_uevent(i32* %86, i32 %87)
  %89 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %90 = call i32 @disk_part_iter_init(%struct.disk_part_iter* %5, %struct.gendisk* %89, i32 0)
  br label %91

91:                                               ; preds = %94, %82
  %92 = call %struct.hd_struct* @disk_part_iter_next(%struct.disk_part_iter* %5)
  store %struct.hd_struct* %92, %struct.hd_struct** %6, align 8
  %93 = icmp ne %struct.hd_struct* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %96 = call %struct.TYPE_4__* @part_to_dev(%struct.hd_struct* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* @KOBJ_ADD, align 4
  %99 = call i32 @kobject_uevent(i32* %97, i32 %98)
  br label %91

100:                                              ; preds = %91
  %101 = call i32 @disk_part_iter_exit(%struct.disk_part_iter* %5)
  br label %102

102:                                              ; preds = %100, %36, %25
  ret void
}

declare dso_local %struct.device* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_set_uevent_suppress(%struct.device*, i32) #1

declare dso_local i64 @device_add(%struct.device*) #1

declare dso_local i32 @sysfs_create_link(i32, i32*, i32) #1

declare dso_local i32 @kobject_name(i32*) #1

declare dso_local i32 @device_del(%struct.device*) #1

declare dso_local i8* @kobject_create_and_add(i8*, i32*) #1

declare dso_local i32 @disk_partitionable(%struct.gendisk*) #1

declare dso_local i32 @get_capacity(%struct.gendisk*) #1

declare dso_local %struct.block_device* @bdget_disk(%struct.gendisk*, i32) #1

declare dso_local i32 @blkdev_get(%struct.block_device*, i32) #1

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @disk_part_iter_init(%struct.disk_part_iter*, %struct.gendisk*, i32) #1

declare dso_local %struct.hd_struct* @disk_part_iter_next(%struct.disk_part_iter*) #1

declare dso_local %struct.TYPE_4__* @part_to_dev(%struct.hd_struct*) #1

declare dso_local i32 @disk_part_iter_exit(%struct.disk_part_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

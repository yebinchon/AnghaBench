; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_check.c_del_gendisk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_check.c_del_gendisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32*, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.disk_part_iter = type { i32 }
%struct.hd_struct = type { i32 }
%struct.TYPE_6__ = type { i32 }

@DISK_PITER_INCL_EMPTY = common dso_local global i32 0, align 4
@DISK_PITER_REVERSE = common dso_local global i32 0, align 4
@GENHD_FL_UP = common dso_local global i32 0, align 4
@block_depr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @del_gendisk(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.disk_part_iter, align 4
  %4 = alloca %struct.hd_struct*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %5 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %6 = load i32, i32* @DISK_PITER_INCL_EMPTY, align 4
  %7 = load i32, i32* @DISK_PITER_REVERSE, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @disk_part_iter_init(%struct.disk_part_iter* %3, %struct.gendisk* %5, i32 %8)
  br label %10

10:                                               ; preds = %13, %1
  %11 = call %struct.hd_struct* @disk_part_iter_next(%struct.disk_part_iter* %3)
  store %struct.hd_struct* %11, %struct.hd_struct** %4, align 8
  %12 = icmp ne %struct.hd_struct* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %15 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %16 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @invalidate_partition(%struct.gendisk* %14, i32 %17)
  %19 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %20 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %21 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @delete_partition(%struct.gendisk* %19, i32 %22)
  br label %10

24:                                               ; preds = %10
  %25 = call i32 @disk_part_iter_exit(%struct.disk_part_iter* %3)
  %26 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %27 = call i32 @invalidate_partition(%struct.gendisk* %26, i32 0)
  %28 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %29 = call i32 @set_capacity(%struct.gendisk* %28, i32 0)
  %30 = load i32, i32* @GENHD_FL_UP, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %33 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %37 = call i32 @unlink_gendisk(%struct.gendisk* %36)
  %38 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %39 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %38, i32 0, i32 2
  %40 = call i32 @part_stat_set_all(%struct.TYPE_5__* %39, i32 0)
  %41 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %42 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %45 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kobject_put(i32 %47)
  %49 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %50 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @kobject_put(i32 %51)
  %53 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %54 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* @block_depr, align 4
  %56 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %57 = call %struct.TYPE_6__* @disk_to_dev(%struct.gendisk* %56)
  %58 = call i32 @dev_name(%struct.TYPE_6__* %57)
  %59 = call i32 @sysfs_remove_link(i32 %55, i32 %58)
  %60 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %61 = call %struct.TYPE_6__* @disk_to_dev(%struct.gendisk* %60)
  %62 = call i32 @device_del(%struct.TYPE_6__* %61)
  %63 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %64 = call %struct.TYPE_6__* @disk_to_dev(%struct.gendisk* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @blk_free_devt(i32 %66)
  ret void
}

declare dso_local i32 @disk_part_iter_init(%struct.disk_part_iter*, %struct.gendisk*, i32) #1

declare dso_local %struct.hd_struct* @disk_part_iter_next(%struct.disk_part_iter*) #1

declare dso_local i32 @invalidate_partition(%struct.gendisk*, i32) #1

declare dso_local i32 @delete_partition(%struct.gendisk*, i32) #1

declare dso_local i32 @disk_part_iter_exit(%struct.disk_part_iter*) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @unlink_gendisk(%struct.gendisk*) #1

declare dso_local i32 @part_stat_set_all(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @sysfs_remove_link(i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @device_del(%struct.TYPE_6__*) #1

declare dso_local i32 @blk_free_devt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

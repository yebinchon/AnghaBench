; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_create_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { i64, %struct.TYPE_13__*, %struct.TYPE_15__*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__*, i32, %struct.zram*, i32*, i32 }
%struct.TYPE_15__ = type { %struct.zram* }
%struct.TYPE_14__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error allocating disk queue for device %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@zram_make_request = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Error allocating disk structure for device %d\0A\00", align 1
@zram_major = common dso_local global i32 0, align 4
@zram_devops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"zram%d\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@ZRAM_LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@zram_disk_attr_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Error creating sysfs group\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zram*, i32)* @create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_device(%struct.zram* %0, i32 %1) #0 {
  %3 = alloca %struct.zram*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zram* %0, %struct.zram** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.zram*, %struct.zram** %3, align 8
  %7 = getelementptr inbounds %struct.zram, %struct.zram* %6, i32 0, i32 5
  %8 = call i32 @init_rwsem(i32* %7)
  %9 = load %struct.zram*, %struct.zram** %3, align 8
  %10 = getelementptr inbounds %struct.zram, %struct.zram* %9, i32 0, i32 4
  %11 = call i32 @init_rwsem(i32* %10)
  %12 = load %struct.zram*, %struct.zram** %3, align 8
  %13 = getelementptr inbounds %struct.zram, %struct.zram* %12, i32 0, i32 3
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.TYPE_15__* @blk_alloc_queue(i32 %15)
  %17 = load %struct.zram*, %struct.zram** %3, align 8
  %18 = getelementptr inbounds %struct.zram, %struct.zram* %17, i32 0, i32 2
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %18, align 8
  %19 = load %struct.zram*, %struct.zram** %3, align 8
  %20 = getelementptr inbounds %struct.zram, %struct.zram* %19, i32 0, i32 2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %138

28:                                               ; preds = %2
  %29 = load %struct.zram*, %struct.zram** %3, align 8
  %30 = getelementptr inbounds %struct.zram, %struct.zram* %29, i32 0, i32 2
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = load i32, i32* @zram_make_request, align 4
  %33 = call i32 @blk_queue_make_request(%struct.TYPE_15__* %31, i32 %32)
  %34 = load %struct.zram*, %struct.zram** %3, align 8
  %35 = load %struct.zram*, %struct.zram** %3, align 8
  %36 = getelementptr inbounds %struct.zram, %struct.zram* %35, i32 0, i32 2
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store %struct.zram* %34, %struct.zram** %38, align 8
  %39 = call %struct.TYPE_13__* @alloc_disk(i32 1)
  %40 = load %struct.zram*, %struct.zram** %3, align 8
  %41 = getelementptr inbounds %struct.zram, %struct.zram* %40, i32 0, i32 1
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %41, align 8
  %42 = load %struct.zram*, %struct.zram** %3, align 8
  %43 = getelementptr inbounds %struct.zram, %struct.zram* %42, i32 0, i32 1
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = icmp ne %struct.TYPE_13__* %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %28
  %47 = load %struct.zram*, %struct.zram** %3, align 8
  %48 = getelementptr inbounds %struct.zram, %struct.zram* %47, i32 0, i32 2
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = call i32 @blk_cleanup_queue(%struct.TYPE_15__* %49)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %138

55:                                               ; preds = %28
  %56 = load i32, i32* @zram_major, align 4
  %57 = load %struct.zram*, %struct.zram** %3, align 8
  %58 = getelementptr inbounds %struct.zram, %struct.zram* %57, i32 0, i32 1
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 5
  store i32 %56, i32* %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.zram*, %struct.zram** %3, align 8
  %63 = getelementptr inbounds %struct.zram, %struct.zram* %62, i32 0, i32 1
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  %66 = load %struct.zram*, %struct.zram** %3, align 8
  %67 = getelementptr inbounds %struct.zram, %struct.zram* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 4
  store i32* @zram_devops, i32** %69, align 8
  %70 = load %struct.zram*, %struct.zram** %3, align 8
  %71 = getelementptr inbounds %struct.zram, %struct.zram* %70, i32 0, i32 2
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = load %struct.zram*, %struct.zram** %3, align 8
  %74 = getelementptr inbounds %struct.zram, %struct.zram* %73, i32 0, i32 1
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %76, align 8
  %77 = load %struct.zram*, %struct.zram** %3, align 8
  %78 = load %struct.zram*, %struct.zram** %3, align 8
  %79 = getelementptr inbounds %struct.zram, %struct.zram* %78, i32 0, i32 1
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 3
  store %struct.zram* %77, %struct.zram** %81, align 8
  %82 = load %struct.zram*, %struct.zram** %3, align 8
  %83 = getelementptr inbounds %struct.zram, %struct.zram* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @snprintf(i32 %86, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.zram*, %struct.zram** %3, align 8
  %90 = getelementptr inbounds %struct.zram, %struct.zram* %89, i32 0, i32 1
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = call i32 @set_capacity(%struct.TYPE_13__* %91, i32 0)
  %93 = load %struct.zram*, %struct.zram** %3, align 8
  %94 = getelementptr inbounds %struct.zram, %struct.zram* %93, i32 0, i32 1
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = call i32 @blk_queue_physical_block_size(%struct.TYPE_15__* %97, i32 %98)
  %100 = load %struct.zram*, %struct.zram** %3, align 8
  %101 = getelementptr inbounds %struct.zram, %struct.zram* %100, i32 0, i32 1
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = load i32, i32* @ZRAM_LOGICAL_BLOCK_SIZE, align 4
  %106 = call i32 @blk_queue_logical_block_size(%struct.TYPE_15__* %104, i32 %105)
  %107 = load %struct.zram*, %struct.zram** %3, align 8
  %108 = getelementptr inbounds %struct.zram, %struct.zram* %107, i32 0, i32 1
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = call i32 @blk_queue_io_min(%struct.TYPE_15__* %111, i32 %112)
  %114 = load %struct.zram*, %struct.zram** %3, align 8
  %115 = getelementptr inbounds %struct.zram, %struct.zram* %114, i32 0, i32 1
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = load i32, i32* @PAGE_SIZE, align 4
  %120 = call i32 @blk_queue_io_opt(%struct.TYPE_15__* %118, i32 %119)
  %121 = load %struct.zram*, %struct.zram** %3, align 8
  %122 = getelementptr inbounds %struct.zram, %struct.zram* %121, i32 0, i32 1
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = call i32 @add_disk(%struct.TYPE_13__* %123)
  %125 = load %struct.zram*, %struct.zram** %3, align 8
  %126 = getelementptr inbounds %struct.zram, %struct.zram* %125, i32 0, i32 1
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = call %struct.TYPE_14__* @disk_to_dev(%struct.TYPE_13__* %127)
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = call i32 @sysfs_create_group(i32* %129, i32* @zram_disk_attr_group)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %55
  %134 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %138

135:                                              ; preds = %55
  %136 = load %struct.zram*, %struct.zram** %3, align 8
  %137 = getelementptr inbounds %struct.zram, %struct.zram* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  br label %138

138:                                              ; preds = %135, %133, %46, %23
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.TYPE_15__* @blk_alloc_queue(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @blk_queue_make_request(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_13__* @alloc_disk(i32) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_15__*) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @set_capacity(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @blk_queue_physical_block_size(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @blk_queue_io_min(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @blk_queue_io_opt(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @add_disk(%struct.TYPE_13__*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @disk_to_dev(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_destroy_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_destroy_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@zram_disk_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zram*)* @destroy_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_device(%struct.zram* %0) #0 {
  %2 = alloca %struct.zram*, align 8
  store %struct.zram* %0, %struct.zram** %2, align 8
  %3 = load %struct.zram*, %struct.zram** %2, align 8
  %4 = getelementptr inbounds %struct.zram, %struct.zram* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = call %struct.TYPE_2__* @disk_to_dev(i64 %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @sysfs_remove_group(i32* %7, i32* @zram_disk_attr_group)
  %9 = load %struct.zram*, %struct.zram** %2, align 8
  %10 = getelementptr inbounds %struct.zram, %struct.zram* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.zram*, %struct.zram** %2, align 8
  %15 = getelementptr inbounds %struct.zram, %struct.zram* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @del_gendisk(i64 %16)
  %18 = load %struct.zram*, %struct.zram** %2, align 8
  %19 = getelementptr inbounds %struct.zram, %struct.zram* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @put_disk(i64 %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.zram*, %struct.zram** %2, align 8
  %24 = getelementptr inbounds %struct.zram, %struct.zram* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.zram*, %struct.zram** %2, align 8
  %29 = getelementptr inbounds %struct.zram, %struct.zram* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @blk_cleanup_queue(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @disk_to_dev(i64) #1

declare dso_local i32 @del_gendisk(i64) #1

declare dso_local i32 @put_disk(i64) #1

declare dso_local i32 @blk_cleanup_queue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

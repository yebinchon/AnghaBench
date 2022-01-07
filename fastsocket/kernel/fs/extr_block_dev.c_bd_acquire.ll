; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_bd_acquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_bd_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32, i32, %struct.block_device*, i32 }

@bdev_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block_device* (%struct.inode*)* @bd_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block_device* @bd_acquire(%struct.inode* %0) #0 {
  %2 = alloca %struct.block_device*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.block_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = call i32 @spin_lock(i32* @bdev_lock)
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 2
  %8 = load %struct.block_device*, %struct.block_device** %7, align 8
  store %struct.block_device* %8, %struct.block_device** %4, align 8
  %9 = load %struct.block_device*, %struct.block_device** %4, align 8
  %10 = icmp ne %struct.block_device* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.block_device*, %struct.block_device** %4, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @atomic_inc(i32* %15)
  %17 = call i32 @spin_unlock(i32* @bdev_lock)
  %18 = load %struct.block_device*, %struct.block_device** %4, align 8
  store %struct.block_device* %18, %struct.block_device** %2, align 8
  br label %58

19:                                               ; preds = %1
  %20 = call i32 @spin_unlock(i32* @bdev_lock)
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.block_device* @bdget(i32 %23)
  store %struct.block_device* %24, %struct.block_device** %4, align 8
  %25 = load %struct.block_device*, %struct.block_device** %4, align 8
  %26 = icmp ne %struct.block_device* %25, null
  br i1 %26, label %27, label %56

27:                                               ; preds = %19
  %28 = call i32 @spin_lock(i32* @bdev_lock)
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 2
  %31 = load %struct.block_device*, %struct.block_device** %30, align 8
  %32 = icmp ne %struct.block_device* %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %27
  %34 = load %struct.block_device*, %struct.block_device** %4, align 8
  %35 = getelementptr inbounds %struct.block_device, %struct.block_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @atomic_inc(i32* %37)
  %39 = load %struct.block_device*, %struct.block_device** %4, align 8
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 2
  store %struct.block_device* %39, %struct.block_device** %41, align 8
  %42 = load %struct.block_device*, %struct.block_device** %4, align 8
  %43 = getelementptr inbounds %struct.block_device, %struct.block_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load %struct.block_device*, %struct.block_device** %4, align 8
  %52 = getelementptr inbounds %struct.block_device, %struct.block_device* %51, i32 0, i32 0
  %53 = call i32 @list_add(i32* %50, i32* %52)
  br label %54

54:                                               ; preds = %33, %27
  %55 = call i32 @spin_unlock(i32* @bdev_lock)
  br label %56

56:                                               ; preds = %54, %19
  %57 = load %struct.block_device*, %struct.block_device** %4, align 8
  store %struct.block_device* %57, %struct.block_device** %2, align 8
  br label %58

58:                                               ; preds = %56, %11
  %59 = load %struct.block_device*, %struct.block_device** %2, align 8
  ret %struct.block_device* %59
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.block_device* @bdget(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

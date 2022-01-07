; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_open_bdev_exclusive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_open_bdev_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block_device* @open_bdev_exclusive(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.block_device* @lookup_bdev(i8* %10)
  store %struct.block_device* %11, %struct.block_device** %8, align 8
  %12 = load %struct.block_device*, %struct.block_device** %8, align 8
  %13 = call i64 @IS_ERR(%struct.block_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.block_device*, %struct.block_device** %8, align 8
  store %struct.block_device* %16, %struct.block_device** %4, align 8
  br label %53

17:                                               ; preds = %3
  %18 = load %struct.block_device*, %struct.block_device** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @blkdev_get(%struct.block_device* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.block_device* @ERR_PTR(i32 %24)
  store %struct.block_device* %25, %struct.block_device** %4, align 8
  br label %53

26:                                               ; preds = %17
  %27 = load i32, i32* @EACCES, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @FMODE_WRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.block_device*, %struct.block_device** %8, align 8
  %35 = call i64 @bdev_read_only(%struct.block_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %47

38:                                               ; preds = %33, %26
  %39 = load %struct.block_device*, %struct.block_device** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @bd_claim(%struct.block_device* %39, i8* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %47

45:                                               ; preds = %38
  %46 = load %struct.block_device*, %struct.block_device** %8, align 8
  store %struct.block_device* %46, %struct.block_device** %4, align 8
  br label %53

47:                                               ; preds = %44, %37
  %48 = load %struct.block_device*, %struct.block_device** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @blkdev_put(%struct.block_device* %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.block_device* @ERR_PTR(i32 %51)
  store %struct.block_device* %52, %struct.block_device** %4, align 8
  br label %53

53:                                               ; preds = %47, %45, %23, %15
  %54 = load %struct.block_device*, %struct.block_device** %4, align 8
  ret %struct.block_device* %54
}

declare dso_local %struct.block_device* @lookup_bdev(i8*) #1

declare dso_local i64 @IS_ERR(%struct.block_device*) #1

declare dso_local i32 @blkdev_get(%struct.block_device*, i32) #1

declare dso_local %struct.block_device* @ERR_PTR(i32) #1

declare dso_local i64 @bdev_read_only(%struct.block_device*) #1

declare dso_local i32 @bd_claim(%struct.block_device*, i8*) #1

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

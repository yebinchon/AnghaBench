; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bdev_integrity_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bdev_integrity_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.blk_integrity = type { i32, i32*, i32* }

@READ = common dso_local global i32 0, align 4
@INTEGRITY_FLAG_READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@INTEGRITY_FLAG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @bdev_integrity_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdev_integrity_enabled(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_integrity*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.block_device*, %struct.block_device** %4, align 8
  %8 = call %struct.blk_integrity* @bdev_get_integrity(%struct.block_device* %7)
  store %struct.blk_integrity* %8, %struct.blk_integrity** %6, align 8
  %9 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %10 = icmp eq %struct.blk_integrity* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @READ, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %18 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %23 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @INTEGRITY_FLAG_READ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %47

29:                                               ; preds = %21, %16, %12
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @WRITE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %35 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %40 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @INTEGRITY_FLAG_WRITE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %47

46:                                               ; preds = %38, %33, %29
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %28, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.blk_integrity* @bdev_get_integrity(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

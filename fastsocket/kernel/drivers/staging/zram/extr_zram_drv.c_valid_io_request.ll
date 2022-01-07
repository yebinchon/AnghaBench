; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_valid_io_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_valid_io_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { i32 }
%struct.bio = type { i32, i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@ZRAM_SECTOR_PER_LOGICAL_BLOCK = common dso_local global i32 0, align 4
@ZRAM_LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zram*, %struct.bio*)* @valid_io_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_io_request(%struct.zram* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zram*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.zram* %0, %struct.zram** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %6 = load %struct.bio*, %struct.bio** %5, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.zram*, %struct.zram** %4, align 8
  %10 = getelementptr inbounds %struct.zram, %struct.zram* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SECTOR_SHIFT, align 4
  %13 = ashr i32 %11, %12
  %14 = icmp sge i32 %8, %13
  br i1 %14, label %31, label %15

15:                                               ; preds = %2
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ZRAM_SECTOR_PER_LOGICAL_BLOCK, align 4
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ZRAM_LOGICAL_BLOCK_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %23, %15, %2
  %32 = phi i1 [ true, %15 ], [ true, %2 ], [ %30, %23 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

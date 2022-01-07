; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_ioctl.c_fiemap_check_ranges.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_ioctl.c_fiemap_check_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64, i64, i64*)* @fiemap_check_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiemap_check_ranges(%struct.super_block* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load %struct.super_block*, %struct.super_block** %6, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64*, i64** %9, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %45

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EFBIG, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %45

29:                                               ; preds = %22
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load i64, i64* %7, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33, %29
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %7, align 8
  %42 = sub nsw i64 %40, %41
  %43 = load i64*, i64** %9, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %39, %33
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %26, %19
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

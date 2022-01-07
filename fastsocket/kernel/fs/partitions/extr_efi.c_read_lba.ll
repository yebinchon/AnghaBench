; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_efi.c_read_lba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_efi.c_read_lba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.block_device*, i32, i32*, i64)* @read_lba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_lba(%struct.block_device* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.block_device*, %struct.block_device** %6, align 8
  %17 = call i32 @bdev_logical_block_size(%struct.block_device* %16)
  %18 = sdiv i32 %17, 512
  %19 = mul nsw i32 %15, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.block_device*, %struct.block_device** %6, align 8
  %21 = icmp ne %struct.block_device* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.block_device*, %struct.block_device** %6, align 8
  %28 = call i32 @last_lba(%struct.block_device* %27)
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %22, %4
  store i64 0, i64* %5, align 8
  br label %72

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %32
  store i32 512, i32* %12, align 4
  %36 = load %struct.block_device*, %struct.block_device** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = call i8* @read_dev_sector(%struct.block_device* %36, i32 %37, i32* %13)
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %70

43:                                               ; preds = %35
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %9, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32*, i32** %8, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @memcpy(i32* %52, i8* %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @put_dev_sector(i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %8, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %9, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %9, align 8
  br label %32

70:                                               ; preds = %42, %32
  %71 = load i64, i64* %10, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %70, %30
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @last_lba(%struct.block_device*) #1

declare dso_local i8* @read_dev_sector(%struct.block_device*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @put_dev_sector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

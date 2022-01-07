; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_i2c_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"mt9d112_i2c_read failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16, i16, i16*, i32)* @mt9d112_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9d112_i2c_read(i16 zeroext %0, i16 zeroext %1, i16* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [4 x i8], align 1
  store i16 %0, i16* %6, align 2
  store i16 %1, i16* %7, align 2
  store i16* %2, i16** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %12 = load i16*, i16** %8, align 8
  %13 = icmp ne i16* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* @EIO, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %5, align 8
  br label %59

17:                                               ; preds = %4
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %19 = call i32 @memset(i8* %18, i32 0, i32 4)
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %51 [
    i32 128, label %21
  ]

21:                                               ; preds = %17
  %22 = load i16, i16* %7, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 65280
  %25 = ashr i32 %24, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  store i8 %26, i8* %27, align 1
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  store i8 %31, i8* %32, align 1
  %33 = load i16, i16* %6, align 2
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %35 = call i64 @mt9d112_i2c_rxdata(i16 zeroext %33, i8* %34, i32 2)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %5, align 8
  br label %59

40:                                               ; preds = %21
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %44, %47
  %49 = trunc i32 %48 to i16
  %50 = load i16*, i16** %8, align 8
  store i16 %49, i16* %50, align 2
  br label %52

51:                                               ; preds = %17
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i64, i64* %10, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @CDBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %57, %38, %14
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @mt9d112_i2c_rxdata(i16 zeroext, i8*, i32) #1

declare dso_local i32 @CDBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

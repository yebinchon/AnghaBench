; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_i2c_read_w.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_i2c_read_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"mt9t013_i2c_read failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16, i16, i16*)* @mt9t013_i2c_read_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9t013_i2c_read_w(i16 zeroext %0, i16 zeroext %1, i16* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [4 x i8], align 1
  store i16 %0, i16* %5, align 2
  store i16 %1, i16* %6, align 2
  store i16* %2, i16** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load i16*, i16** %7, align 8
  %11 = icmp ne i16* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* @EIO, align 8
  %14 = sub nsw i64 0, %13
  store i64 %14, i64* %4, align 8
  br label %53

15:                                               ; preds = %3
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i32 0, i32 4)
  %18 = load i16, i16* %6, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 65280
  %21 = ashr i32 %20, 8
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 %22, i8* %23, align 1
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 255
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  store i8 %27, i8* %28, align 1
  %29 = load i16, i16* %5, align 2
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %31 = call i64 @mt9t013_i2c_rxdata(i16 zeroext %29, i8* %30, i32 2)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %15
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %4, align 8
  br label %53

36:                                               ; preds = %15
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %40, %43
  %45 = trunc i32 %44 to i16
  %46 = load i16*, i16** %7, align 8
  store i16 %45, i16* %46, align 2
  %47 = load i64, i64* %8, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %36
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %51, %34, %12
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @mt9t013_i2c_rxdata(i16 zeroext, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

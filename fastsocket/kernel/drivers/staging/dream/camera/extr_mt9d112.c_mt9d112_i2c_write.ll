; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_i2c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"i2c_write failed, addr = 0x%x, val = 0x%x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16, i16, i16, i32)* @mt9d112_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9d112_i2c_write(i16 zeroext %0, i16 zeroext %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [4 x i8], align 1
  store i16 %0, i16* %5, align 2
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* @EIO, align 8
  %12 = sub nsw i64 0, %11
  store i64 %12, i64* %9, align 8
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %14 = call i32 @memset(i8* %13, i32 0, i32 4)
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %52 [
    i32 128, label %16
    i32 129, label %42
  ]

16:                                               ; preds = %4
  %17 = load i16, i16* %6, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 65280
  %20 = ashr i32 %19, 8
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = load i16, i16* %6, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  store i8 %26, i8* %27, align 1
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 65280
  %31 = ashr i32 %30, 8
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  store i8 %32, i8* %33, align 1
  %34 = load i16, i16* %7, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  store i8 %37, i8* %38, align 1
  %39 = load i16, i16* %5, align 2
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %41 = call i64 @mt9d112_i2c_txdata(i16 zeroext %39, i8* %40, i32 4)
  store i64 %41, i64* %9, align 8
  br label %53

42:                                               ; preds = %4
  %43 = load i16, i16* %6, align 2
  %44 = trunc i16 %43 to i8
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 %44, i8* %45, align 1
  %46 = load i16, i16* %7, align 2
  %47 = trunc i16 %46 to i8
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  store i8 %47, i8* %48, align 1
  %49 = load i16, i16* %5, align 2
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %51 = call i64 @mt9d112_i2c_txdata(i16 zeroext %49, i8* %50, i32 2)
  store i64 %51, i64* %9, align 8
  br label %53

52:                                               ; preds = %4
  br label %53

53:                                               ; preds = %52, %42, %16
  %54 = load i64, i64* %9, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i16, i16* %6, align 2
  %58 = load i16, i16* %7, align 2
  %59 = call i32 @CDBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i16 zeroext %57, i16 zeroext %58)
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i64, i64* %9, align 8
  ret i64 %61
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @mt9d112_i2c_txdata(i16 zeroext, i8*, i32) #1

declare dso_local i32 @CDBG(i8*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

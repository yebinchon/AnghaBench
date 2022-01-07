; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_i2c_write_w.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_i2c_write_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"i2c_write_w failed, addr = 0x%x, val = 0x%x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16, i16, i16)* @mt9t013_i2c_write_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9t013_i2c_write_w(i16 zeroext %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca [4 x i8], align 1
  store i16 %0, i16* %4, align 2
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load i64, i64* @EIO, align 8
  %10 = sub nsw i64 0, %9
  store i64 %10, i64* %7, align 8
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %12 = call i32 @memset(i8* %11, i32 0, i32 4)
  %13 = load i16, i16* %5, align 2
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 65280
  %16 = ashr i32 %15, 8
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 %17, i8* %18, align 1
  %19 = load i16, i16* %5, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  store i8 %22, i8* %23, align 1
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 65280
  %27 = ashr i32 %26, 8
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  store i8 %28, i8* %29, align 1
  %30 = load i16, i16* %6, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  store i8 %33, i8* %34, align 1
  %35 = load i16, i16* %4, align 2
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %37 = call i64 @mt9t013_i2c_txdata(i16 zeroext %35, i8* %36, i32 4)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %3
  %41 = load i16, i16* %5, align 2
  %42 = load i16, i16* %6, align 2
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i16 zeroext %41, i16 zeroext %42)
  br label %44

44:                                               ; preds = %40, %3
  %45 = load i64, i64* %7, align 8
  ret i64 %45
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @mt9t013_i2c_txdata(i16 zeroext, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

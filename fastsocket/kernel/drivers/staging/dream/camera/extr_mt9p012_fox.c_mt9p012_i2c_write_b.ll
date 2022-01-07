; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9p012_fox.c_mt9p012_i2c_write_b.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9p012_fox.c_mt9p012_i2c_write_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"i2c_write failed, saddr = 0x%x addr = 0x%x, val =0x%x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16, i16, i16)* @mt9p012_i2c_write_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9p012_i2c_write_b(i16 zeroext %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca [2 x i8], align 1
  store i16 %0, i16* %4, align 2
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load i64, i64* @EIO, align 8
  %10 = sub nsw i64 0, %9
  store i64 %10, i64* %7, align 8
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %12 = call i32 @memset(i8* %11, i32 0, i32 2)
  %13 = load i16, i16* %5, align 2
  %14 = trunc i16 %13 to i8
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %14, i8* %15, align 1
  %16 = load i16, i16* %6, align 2
  %17 = trunc i16 %16 to i8
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %17, i8* %18, align 1
  %19 = load i16, i16* %4, align 2
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %21 = call i64 @mt9p012_i2c_txdata(i16 zeroext %19, i8* %20, i32 2)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i16, i16* %4, align 2
  %26 = load i16, i16* %5, align 2
  %27 = load i16, i16* %6, align 2
  %28 = call i32 @CDBG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i16 zeroext %25, i16 zeroext %26, i16 zeroext %27)
  br label %29

29:                                               ; preds = %24, %3
  %30 = load i64, i64* %7, align 8
  ret i64 %30
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @mt9p012_i2c_txdata(i16 zeroext, i8*, i32) #1

declare dso_local i32 @CDBG(i8*, i16 zeroext, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

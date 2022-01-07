; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_clps711xfb.c_clps7111fb_proc_backlight_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_clps711xfb.c_clps7111fb_proc_backlight_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PDDR = common dso_local global i32 0, align 4
@EDB_PD3_LCDBL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i8*)* @clps7111fb_proc_backlight_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps7111fb_proc_backlight_write(%struct.file* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %58

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @copy_from_user(i8* %10, i8* %19, i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %58

25:                                               ; preds = %18
  %26 = load i8, i8* %10, align 1
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %27, 48
  store i32 %28, i32* %11, align 4
  %29 = call i64 (...) @machine_is_edb7211()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load i32, i32* @PDDR, align 4
  %33 = call zeroext i8 @clps_readb(i32 %32)
  store i8 %33, i8* %12, align 1
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i8, i8* @EDB_PD3_LCDBL, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %12, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %38
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %12, align 1
  br label %51

43:                                               ; preds = %31
  %44 = load i8, i8* @EDB_PD3_LCDBL, align 1
  %45 = zext i8 %44 to i32
  %46 = xor i32 %45, -1
  %47 = load i8, i8* %12, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, %46
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %12, align 1
  br label %51

51:                                               ; preds = %43, %36
  %52 = load i8, i8* %12, align 1
  %53 = load i32, i32* @PDDR, align 4
  %54 = call i32 @clps_writeb(i8 zeroext %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %25
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %22, %15
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @copy_from_user(i8*, i8*, i32) #1

declare dso_local i64 @machine_is_edb7211(...) #1

declare dso_local zeroext i8 @clps_readb(i32) #1

declare dso_local i32 @clps_writeb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

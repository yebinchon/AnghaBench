; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_sbc_fitpc2_wdt.c_fitpc2_wdt_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_sbc_fitpc2_wdt.c_fitpc2_wdt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@nowayout = common dso_local global i64 0, align 8
@WDT_OK_TO_CLOSE = common dso_local global i32 0, align 4
@wdt_status = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i64, i32*)* @fitpc2_wdt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fitpc2_wdt_write(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %51

15:                                               ; preds = %4
  %16 = load i64, i64* @nowayout, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %48

19:                                               ; preds = %15
  %20 = load i32, i32* @WDT_OK_TO_CLOSE, align 4
  %21 = call i32 @clear_bit(i32 %20, i32* @wdt_status)
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %44, %19
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i8, i8* %11, align 1
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = call i64 @get_user(i8 signext %27, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i64, i64* @EFAULT, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %51

36:                                               ; preds = %26
  %37 = load i8, i8* %11, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 86
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @WDT_OK_TO_CLOSE, align 4
  %42 = call i32 @set_bit(i32 %41, i32* @wdt_status)
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %22

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47, %18
  %49 = call i32 (...) @wdt_enable()
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %48, %33, %14
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @get_user(i8 signext, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wdt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

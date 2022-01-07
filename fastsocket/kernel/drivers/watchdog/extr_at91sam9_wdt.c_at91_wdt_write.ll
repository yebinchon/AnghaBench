; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_at91sam9_wdt.c_at91_wdt_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_at91sam9_wdt.c_at91_wdt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.file = type { i32 }

@nowayout = common dso_local global i32 0, align 4
@at91wdt_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EFAULT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@heartbeat = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i64, i32*)* @at91_wdt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @at91_wdt_write(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
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
  %16 = load i32, i32* @nowayout, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %15
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @at91wdt_private, i32 0, i32 0), align 8
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i8, i8* %11, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = call i64 @get_user(i8 signext %24, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i64, i64* @EFAULT, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %51

33:                                               ; preds = %23
  %34 = load i8, i8* %11, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 86
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @at91wdt_private, i32 0, i32 0), align 8
  br label %42

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %10, align 8
  br label %19

42:                                               ; preds = %37, %19
  br label %43

43:                                               ; preds = %42, %15
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i32, i32* @heartbeat, align 4
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  store i64 %49, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @at91wdt_private, i32 0, i32 1), align 8
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %43, %30, %14
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local i64 @get_user(i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

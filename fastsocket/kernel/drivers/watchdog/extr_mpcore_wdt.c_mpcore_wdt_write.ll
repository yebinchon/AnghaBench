; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mpcore_wdt.c_mpcore_wdt_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mpcore_wdt.c_mpcore_wdt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.mpcore_wdt* }
%struct.mpcore_wdt = type { i32 }

@nowayout = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i64, i32*)* @mpcore_wdt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mpcore_wdt_write(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mpcore_wdt*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %14, align 8
  store %struct.mpcore_wdt* %15, %struct.mpcore_wdt** %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %4
  %19 = load i32, i32* @nowayout, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %18
  %22 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %10, align 8
  %23 = getelementptr inbounds %struct.mpcore_wdt, %struct.mpcore_wdt* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  store i64 0, i64* %11, align 8
  br label %24

24:                                               ; preds = %46, %21
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i8, i8* %12, align 1
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = call i64 @get_user(i8 signext %29, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i64, i64* @EFAULT, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %55

38:                                               ; preds = %28
  %39 = load i8, i8* %12, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 86
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %10, align 8
  %44 = getelementptr inbounds %struct.mpcore_wdt, %struct.mpcore_wdt* %43, i32 0, i32 0
  store i32 42, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %11, align 8
  br label %24

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49, %18
  %51 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %10, align 8
  %52 = call i32 @mpcore_wdt_keepalive(%struct.mpcore_wdt* %51)
  br label %53

53:                                               ; preds = %50, %4
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %35
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i64 @get_user(i8 signext, i8*) #1

declare dso_local i32 @mpcore_wdt_keepalive(%struct.mpcore_wdt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

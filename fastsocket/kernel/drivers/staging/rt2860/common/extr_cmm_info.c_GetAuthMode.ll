; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_cmm_info.c_GetAuthMode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_cmm_info.c_GetAuthMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Ndis802_11AuthModeOpen = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@Ndis802_11AuthModeShared = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"SHARED\00", align 1
@Ndis802_11AuthModeAutoSwitch = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"AUTOWEP\00", align 1
@Ndis802_11AuthModeWPA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"WPA\00", align 1
@Ndis802_11AuthModeWPAPSK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"WPAPSK\00", align 1
@Ndis802_11AuthModeWPANone = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"WPANONE\00", align 1
@Ndis802_11AuthModeWPA2 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"WPA2\00", align 1
@Ndis802_11AuthModeWPA2PSK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"WPA2PSK\00", align 1
@Ndis802_11AuthModeWPA1WPA2 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"WPA1WPA2\00", align 1
@Ndis802_11AuthModeWPA1PSKWPA2PSK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"WPA1PSKWPA2PSK\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"UNKNOW\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @GetAuthMode(i64 %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @Ndis802_11AuthModeOpen, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64* bitcast ([5 x i8]* @.str to i64*), i64** %2, align 8
  br label %54

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @Ndis802_11AuthModeShared, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i64* bitcast ([7 x i8]* @.str.1 to i64*), i64** %2, align 8
  br label %54

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @Ndis802_11AuthModeAutoSwitch, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i64* bitcast ([8 x i8]* @.str.2 to i64*), i64** %2, align 8
  br label %54

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @Ndis802_11AuthModeWPA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i64* bitcast ([4 x i8]* @.str.3 to i64*), i64** %2, align 8
  br label %54

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @Ndis802_11AuthModeWPAPSK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i64* bitcast ([7 x i8]* @.str.4 to i64*), i64** %2, align 8
  br label %54

28:                                               ; preds = %23
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @Ndis802_11AuthModeWPANone, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i64* bitcast ([8 x i8]* @.str.5 to i64*), i64** %2, align 8
  br label %54

33:                                               ; preds = %28
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @Ndis802_11AuthModeWPA2, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i64* bitcast ([5 x i8]* @.str.6 to i64*), i64** %2, align 8
  br label %54

38:                                               ; preds = %33
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @Ndis802_11AuthModeWPA2PSK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64* bitcast ([8 x i8]* @.str.7 to i64*), i64** %2, align 8
  br label %54

43:                                               ; preds = %38
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @Ndis802_11AuthModeWPA1WPA2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64* bitcast ([9 x i8]* @.str.8 to i64*), i64** %2, align 8
  br label %54

48:                                               ; preds = %43
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @Ndis802_11AuthModeWPA1PSKWPA2PSK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i64* bitcast ([15 x i8]* @.str.9 to i64*), i64** %2, align 8
  br label %54

53:                                               ; preds = %48
  store i64* bitcast ([7 x i8]* @.str.10 to i64*), i64** %2, align 8
  br label %54

54:                                               ; preds = %53, %52, %47, %42, %37, %32, %27, %22, %17, %12, %7
  %55 = load i64*, i64** %2, align 8
  ret i64* %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

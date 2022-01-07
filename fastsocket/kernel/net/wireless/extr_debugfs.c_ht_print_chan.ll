; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_debugfs.c_ht_print_chan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_debugfs.c_ht_print_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32, i32 }

@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%d Disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%d HT40 %c%c\0A\00", align 1
@IEEE80211_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_channel*, i8*, i32, i32)* @ht_print_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht_print_chan(%struct.ieee80211_channel* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sgt i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

17:                                               ; preds = %4
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %28, i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %5, align 4
  br label %64

36:                                               ; preds = %17
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 32, i32 45
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 32, i32 43
  %63 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %40, i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %54, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %36, %24, %16
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

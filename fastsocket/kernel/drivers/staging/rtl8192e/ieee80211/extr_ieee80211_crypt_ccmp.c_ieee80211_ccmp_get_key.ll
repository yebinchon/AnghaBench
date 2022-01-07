; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_get_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ccmp_data = type { i32*, i32, i32 }

@CCMP_TK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i8*)* @ieee80211_ccmp_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ccmp_get_key(i8* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ieee80211_ccmp_data*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = bitcast i8* %11 to %struct.ieee80211_ccmp_data*
  store %struct.ieee80211_ccmp_data* %12, %struct.ieee80211_ccmp_data** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @CCMP_TK_LEN, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %77

17:                                               ; preds = %4
  %18 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %19 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %77

23:                                               ; preds = %17
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %26 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CCMP_TK_LEN, align 4
  %29 = call i32 @memcpy(i8* %24, i32 %27, i32 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %75

32:                                               ; preds = %23
  %33 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %34 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %41 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %48 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %62 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %69 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %32, %23
  %76 = load i32, i32* @CCMP_TK_LEN, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %22, %16
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

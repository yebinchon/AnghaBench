; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_get_bssid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_get_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hdr = type { i32*, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ieee80211_get_bssid(%struct.ieee80211_hdr* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hdr* %0, %struct.ieee80211_hdr** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %12, 16
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %90

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @ieee80211_is_data(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %20, 24
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32* null, i32** %4, align 8
  br label %90

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @ieee80211_has_a4(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  br label %90

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @ieee80211_has_tods(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %4, align 8
  br label %90

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @ieee80211_has_fromds(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %4, align 8
  br label %90

44:                                               ; preds = %36
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %4, align 8
  br label %90

48:                                               ; preds = %15
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @ieee80211_is_mgmt(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = icmp ult i64 %53, 24
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32* null, i32** %4, align 8
  br label %90

56:                                               ; preds = %52
  %57 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %4, align 8
  br label %90

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @ieee80211_is_ctl(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @ieee80211_is_pspoll(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %4, align 8
  br label %90

72:                                               ; preds = %64
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @ieee80211_is_back_req(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  switch i32 %77, label %86 [
    i32 128, label %78
    i32 130, label %82
    i32 129, label %82
  ]

78:                                               ; preds = %76
  %79 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %4, align 8
  br label %90

82:                                               ; preds = %76, %76
  %83 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %4, align 8
  br label %90

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %72
  br label %89

89:                                               ; preds = %88, %60
  store i32* null, i32** %4, align 8
  br label %90

90:                                               ; preds = %89, %82, %78, %68, %56, %55, %44, %40, %32, %27, %22, %14
  %91 = load i32*, i32** %4, align 8
  ret i32* %91
}

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_has_a4(i32) #1

declare dso_local i64 @ieee80211_has_tods(i32) #1

declare dso_local i64 @ieee80211_has_fromds(i32) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i64 @ieee80211_is_pspoll(i32) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

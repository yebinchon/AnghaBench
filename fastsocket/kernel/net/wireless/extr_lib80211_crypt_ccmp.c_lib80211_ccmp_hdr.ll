; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211_crypt_ccmp.c_lib80211_ccmp_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211_crypt_ccmp.c_lib80211_ccmp_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.lib80211_ccmp_data = type { i32, i32*, i32 }

@CCMP_HDR_LEN = common dso_local global i64 0, align 8
@CCMP_TK_LEN = common dso_local global i32 0, align 4
@CCMP_PN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32*, i32, i8*)* @lib80211_ccmp_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lib80211_ccmp_hdr(%struct.sk_buff* %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lib80211_ccmp_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = bitcast i8* %15 to %struct.lib80211_ccmp_data*
  store %struct.lib80211_ccmp_data* %16, %struct.lib80211_ccmp_data** %12, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = call i64 @skb_headroom(%struct.sk_buff* %17)
  %19 = load i64, i64* @CCMP_HDR_LEN, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %5
  store i32 -1, i32* %6, align 4
  br label %136

28:                                               ; preds = %21
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @CCMP_TK_LEN, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %12, align 8
  %38 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CCMP_TK_LEN, align 4
  %41 = call i32 @memcpy(i32* %36, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %31, %28
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load i64, i64* @CCMP_HDR_LEN, align 8
  %45 = call i32* @skb_push(%struct.sk_buff* %43, i64 %44)
  store i32* %45, i32** %14, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i64, i64* @CCMP_HDR_LEN, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @memmove(i32* %46, i32* %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %14, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %14, align 8
  %56 = load i32, i32* @CCMP_PN_LEN, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %79, %42
  %59 = load i32, i32* %13, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %58
  %62 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %12, align 8
  %63 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %12, align 8
  %71 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %61
  br label %82

79:                                               ; preds = %61
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %13, align 4
  br label %58

82:                                               ; preds = %78, %58
  %83 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %12, align 8
  %84 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 5
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %14, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %14, align 8
  store i32 %87, i32* %88, align 4
  %90 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %12, align 8
  %91 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %14, align 8
  store i32 %94, i32* %95, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %14, align 8
  store i32 0, i32* %97, align 4
  %99 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %12, align 8
  %100 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 %101, 6
  %103 = or i32 %102, 32
  %104 = load i32*, i32** %14, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %14, align 8
  store i32 %103, i32* %104, align 4
  %106 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %12, align 8
  %107 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %14, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %14, align 8
  store i32 %110, i32* %111, align 4
  %113 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %12, align 8
  %114 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %14, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %14, align 8
  store i32 %117, i32* %118, align 4
  %120 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %12, align 8
  %121 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %14, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %14, align 8
  store i32 %124, i32* %125, align 4
  %127 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %12, align 8
  %128 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %14, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %14, align 8
  store i32 %131, i32* %132, align 4
  %134 = load i64, i64* @CCMP_HDR_LEN, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %82, %27
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

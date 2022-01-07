; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211_crypt_tkip.c_lib80211_tkip_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211_crypt_tkip.c_lib80211_tkip_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.lib80211_tkip_data = type { i32, i32, i64, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@TKIP_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i8**, i32, i8*)* @lib80211_tkip_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lib80211_tkip_hdr(%struct.sk_buff* %0, i32 %1, i8** %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lib80211_tkip_data*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = bitcast i8* %15 to %struct.lib80211_tkip_data*
  store %struct.lib80211_tkip_data* %16, %struct.lib80211_tkip_data** %12, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %20, %struct.ieee80211_hdr** %14, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call i64 @skb_headroom(%struct.sk_buff* %21)
  %23 = load i64, i64* @TKIP_HDR_LEN, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %5
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %5
  store i32 -1, i32* %6, align 4
  br label %161

32:                                               ; preds = %25
  %33 = load i8**, i8*** %9, align 8
  %34 = icmp eq i8** %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  store i32 -1, i32* %6, align 4
  br label %161

39:                                               ; preds = %35
  %40 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %41 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %39
  %45 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %46 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %49 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %52 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %55 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @tkip_mixing_phase1(i32 %47, i32 %50, i32 %53, i32 %56)
  %58 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %59 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %44, %39
  %61 = load i8**, i8*** %9, align 8
  %62 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %63 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %66 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %69 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @tkip_mixing_phase2(i8** %61, i32 %64, i32 %67, i64 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = load i64, i64* @TKIP_HDR_LEN, align 8
  %74 = call i8** @skb_push(%struct.sk_buff* %72, i64 %73)
  store i8** %74, i8*** %13, align 8
  %75 = load i8**, i8*** %13, align 8
  %76 = load i8**, i8*** %13, align 8
  %77 = load i64, i64* @TKIP_HDR_LEN, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @memmove(i8** %75, i8** %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i8**, i8*** %13, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83
  store i8** %84, i8*** %13, align 8
  %85 = load i8**, i8*** %9, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = load i8**, i8*** %13, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %13, align 8
  store i8* %86, i8** %87, align 8
  %89 = load i8**, i8*** %9, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i8**, i8*** %13, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %13, align 8
  store i8* %91, i8** %92, align 8
  %94 = load i8**, i8*** %9, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 2
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** %13, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %13, align 8
  store i8* %96, i8** %97, align 8
  %99 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %100 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 %101, 6
  %103 = or i32 %102, 32
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = load i8**, i8*** %13, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %107, i8*** %13, align 8
  store i8* %105, i8** %106, align 8
  %108 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %109 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 255
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = load i8**, i8*** %13, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i32 1
  store i8** %115, i8*** %13, align 8
  store i8* %113, i8** %114, align 8
  %116 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %117 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 8
  %120 = and i32 %119, 255
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = load i8**, i8*** %13, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i32 1
  store i8** %124, i8*** %13, align 8
  store i8* %122, i8** %123, align 8
  %125 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %126 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 16
  %129 = and i32 %128, 255
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = load i8**, i8*** %13, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i32 1
  store i8** %133, i8*** %13, align 8
  store i8* %131, i8** %132, align 8
  %134 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %135 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 24
  %138 = and i32 %137, 255
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = load i8**, i8*** %13, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i32 1
  store i8** %142, i8*** %13, align 8
  store i8* %140, i8** %141, align 8
  %143 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %144 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %144, align 8
  %147 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %148 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %60
  %152 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %153 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  %154 = load %struct.lib80211_tkip_data*, %struct.lib80211_tkip_data** %12, align 8
  %155 = getelementptr inbounds %struct.lib80211_tkip_data, %struct.lib80211_tkip_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %151, %60
  %159 = load i64, i64* @TKIP_HDR_LEN, align 8
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %158, %38, %31
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @tkip_mixing_phase1(i32, i32, i32, i32) #1

declare dso_local i32 @tkip_mixing_phase2(i8**, i32, i32, i64) #1

declare dso_local i8** @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

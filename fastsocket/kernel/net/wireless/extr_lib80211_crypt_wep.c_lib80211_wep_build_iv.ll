; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211_crypt_wep.c_lib80211_wep_build_iv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211_crypt_wep.c_lib80211_wep_build_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.lib80211_wep_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32*, i32, i8*)* @lib80211_wep_build_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lib80211_wep_build_iv(%struct.sk_buff* %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lib80211_wep_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.lib80211_wep_data*
  store %struct.lib80211_wep_data* %17, %struct.lib80211_wep_data** %12, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call i32 @skb_headroom(%struct.sk_buff* %18)
  %20 = icmp slt i32 %19, 4
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
  br label %98

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call i32* @skb_push(%struct.sk_buff* %29, i32 4)
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @memmove(i32* %31, i32* %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %14, align 8
  %40 = load %struct.lib80211_wep_data*, %struct.lib80211_wep_data** %12, align 8
  %41 = getelementptr inbounds %struct.lib80211_wep_data, %struct.lib80211_wep_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 3, %42
  store i32 %43, i32* %13, align 4
  %44 = load %struct.lib80211_wep_data*, %struct.lib80211_wep_data** %12, align 8
  %45 = getelementptr inbounds %struct.lib80211_wep_data, %struct.lib80211_wep_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.lib80211_wep_data*, %struct.lib80211_wep_data** %12, align 8
  %49 = getelementptr inbounds %struct.lib80211_wep_data, %struct.lib80211_wep_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 65280
  %52 = icmp eq i32 %51, 65280
  br i1 %52, label %53, label %71

53:                                               ; preds = %28
  %54 = load %struct.lib80211_wep_data*, %struct.lib80211_wep_data** %12, align 8
  %55 = getelementptr inbounds %struct.lib80211_wep_data, %struct.lib80211_wep_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 255
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp sge i32 %59, 3
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.lib80211_wep_data*, %struct.lib80211_wep_data** %12, align 8
  %67 = getelementptr inbounds %struct.lib80211_wep_data, %struct.lib80211_wep_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 256
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %65, %61, %53
  br label %71

71:                                               ; preds = %70, %28
  %72 = load %struct.lib80211_wep_data*, %struct.lib80211_wep_data** %12, align 8
  %73 = getelementptr inbounds %struct.lib80211_wep_data, %struct.lib80211_wep_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 16
  %76 = and i32 %75, 255
  %77 = load i32*, i32** %14, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %14, align 8
  store i32 %76, i32* %77, align 4
  %79 = load %struct.lib80211_wep_data*, %struct.lib80211_wep_data** %12, align 8
  %80 = getelementptr inbounds %struct.lib80211_wep_data, %struct.lib80211_wep_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 255
  %84 = load i32*, i32** %14, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %14, align 8
  store i32 %83, i32* %84, align 4
  %86 = load %struct.lib80211_wep_data*, %struct.lib80211_wep_data** %12, align 8
  %87 = getelementptr inbounds %struct.lib80211_wep_data, %struct.lib80211_wep_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 255
  %90 = load i32*, i32** %14, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %14, align 8
  store i32 %89, i32* %90, align 4
  %92 = load %struct.lib80211_wep_data*, %struct.lib80211_wep_data** %12, align 8
  %93 = getelementptr inbounds %struct.lib80211_wep_data, %struct.lib80211_wep_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 6
  %96 = load i32*, i32** %14, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %14, align 8
  store i32 %95, i32* %96, align 4
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %71, %27
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

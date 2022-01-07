; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_parse_txq_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_parse_txq_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.ieee80211_txq_params = type { i64, i8*, i8*, i8*, i8* }

@NL80211_TXQ_ATTR_AC = common dso_local global i64 0, align 8
@NL80211_TXQ_ATTR_TXOP = common dso_local global i64 0, align 8
@NL80211_TXQ_ATTR_CWMIN = common dso_local global i64 0, align 8
@NL80211_TXQ_ATTR_CWMAX = common dso_local global i64 0, align 8
@NL80211_TXQ_ATTR_AIFS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_NUM_ACS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.ieee80211_txq_params*)* @parse_txq_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_txq_params(%struct.nlattr** %0, %struct.ieee80211_txq_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.ieee80211_txq_params*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.ieee80211_txq_params* %1, %struct.ieee80211_txq_params** %5, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %7 = load i64, i64* @NL80211_TXQ_ATTR_AC, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %13 = load i64, i64* @NL80211_TXQ_ATTR_TXOP, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %19 = load i64, i64* @NL80211_TXQ_ATTR_CWMIN, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %25 = load i64, i64* @NL80211_TXQ_ATTR_CWMAX, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %31 = load i64, i64* @NL80211_TXQ_ATTR_AIFS, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29, %23, %17, %11, %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %84

38:                                               ; preds = %29
  %39 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %40 = load i64, i64* @NL80211_TXQ_ATTR_AC, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i8* @nla_get_u8(%struct.nlattr* %42)
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %48 = load i64, i64* @NL80211_TXQ_ATTR_TXOP, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i8* @nla_get_u16(%struct.nlattr* %50)
  %52 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %55 = load i64, i64* @NL80211_TXQ_ATTR_CWMIN, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i8* @nla_get_u16(%struct.nlattr* %57)
  %59 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %62 = load i64, i64* @NL80211_TXQ_ATTR_CWMAX, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i8* @nla_get_u16(%struct.nlattr* %64)
  %66 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %69 = load i64, i64* @NL80211_TXQ_ATTR_AIFS, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %68, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call i8* @nla_get_u8(%struct.nlattr* %71)
  %73 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ieee80211_txq_params*, %struct.ieee80211_txq_params** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211_txq_params, %struct.ieee80211_txq_params* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NL80211_NUM_ACS, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %38
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %80, %35
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

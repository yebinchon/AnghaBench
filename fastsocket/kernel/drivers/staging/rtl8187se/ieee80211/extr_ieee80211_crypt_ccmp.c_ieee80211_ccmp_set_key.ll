; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ccmp_data = type { i32, i32, i32, %struct.crypto_tfm*, i8** }
%struct.crypto_tfm = type { i32 }

@CCMP_TK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i8*)* @ieee80211_ccmp_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ccmp_set_key(i8* %0, i32 %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ieee80211_ccmp_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.crypto_tfm*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.ieee80211_ccmp_data*
  store %struct.ieee80211_ccmp_data* %14, %struct.ieee80211_ccmp_data** %10, align 8
  %15 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %16 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %15, i32 0, i32 3
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %16, align 8
  store %struct.crypto_tfm* %17, %struct.crypto_tfm** %12, align 8
  %18 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %19 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %22 = call i32 @memset(%struct.ieee80211_ccmp_data* %21, i32 0, i32 32)
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %25 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.crypto_tfm*, %struct.crypto_tfm** %12, align 8
  %27 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %28 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %27, i32 0, i32 3
  store %struct.crypto_tfm* %26, %struct.crypto_tfm** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CCMP_TK_LEN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %96

32:                                               ; preds = %4
  %33 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %34 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @CCMP_TK_LEN, align 4
  %38 = call i32 @memcpy(i32 %35, i8* %36, i32 %37)
  %39 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %40 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load i8**, i8*** %8, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %86

43:                                               ; preds = %32
  %44 = load i8**, i8*** %8, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 5
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %48 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %47, i32 0, i32 4
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %46, i8** %50, align 8
  %51 = load i8**, i8*** %8, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 4
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %54, i32 0, i32 4
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  store i8* %53, i8** %57, align 8
  %58 = load i8**, i8*** %8, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 3
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %62 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %61, i32 0, i32 4
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  store i8* %60, i8** %64, align 8
  %65 = load i8**, i8*** %8, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %69 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %68, i32 0, i32 4
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 3
  store i8* %67, i8** %71, align 8
  %72 = load i8**, i8*** %8, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %76 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %75, i32 0, i32 4
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 4
  store i8* %74, i8** %78, align 8
  %79 = load i8**, i8*** %8, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %83 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %82, i32 0, i32 4
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 5
  store i8* %81, i8** %85, align 8
  br label %86

86:                                               ; preds = %43, %32
  %87 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %88 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %87, i32 0, i32 3
  %89 = load %struct.crypto_tfm*, %struct.crypto_tfm** %88, align 8
  %90 = bitcast %struct.crypto_tfm* %89 to i8*
  %91 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %92 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @CCMP_TK_LEN, align 4
  %95 = call i32 @crypto_cipher_setkey(i8* %90, i32 %93, i32 %94)
  br label %104

96:                                               ; preds = %4
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %10, align 8
  %101 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  br label %103

102:                                              ; preds = %96
  store i32 -1, i32* %5, align 4
  br label %105

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %86
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %102
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @memset(%struct.ieee80211_ccmp_data*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @crypto_cipher_setkey(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

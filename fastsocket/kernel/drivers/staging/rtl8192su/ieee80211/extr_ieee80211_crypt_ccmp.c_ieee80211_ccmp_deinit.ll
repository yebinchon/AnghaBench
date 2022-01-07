; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ccmp_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ieee80211_ccmp_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_ccmp_deinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ieee80211_ccmp_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ieee80211_ccmp_data*
  store %struct.ieee80211_ccmp_data* %5, %struct.ieee80211_ccmp_data** %3, align 8
  %6 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %3, align 8
  %7 = icmp ne %struct.ieee80211_ccmp_data* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @crypto_free_cipher(i8* %17)
  br label %19

19:                                               ; preds = %13, %8, %1
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @kfree(i8* %20)
  ret void
}

declare dso_local i32 @crypto_free_cipher(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_print_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_crypt_ccmp.c_ieee80211_ccmp_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ccmp_data = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [137 x i8] c"key[%d] alg=CCMP key_set=%d tx_pn=%02x%02x%02x%02x%02x%02x rx_pn=%02x%02x%02x%02x%02x%02x format_errors=%d replays=%d decrypt_errors=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @ieee80211_ccmp_print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ieee80211_ccmp_print_stats(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_ccmp_data*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ieee80211_ccmp_data*
  store %struct.ieee80211_ccmp_data* %7, %struct.ieee80211_ccmp_data** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MAC_ARG(i32 %17)
  %19 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @MAC_ARG(i32 %21)
  %23 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_ccmp_data*, %struct.ieee80211_ccmp_data** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_ccmp_data, %struct.ieee80211_ccmp_data* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %18, i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load i8*, i8** %3, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %3, align 8
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAC_ARG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

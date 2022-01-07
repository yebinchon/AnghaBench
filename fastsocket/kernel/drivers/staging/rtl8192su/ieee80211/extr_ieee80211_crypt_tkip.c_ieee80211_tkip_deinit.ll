; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_crypt_tkip.c_ieee80211_tkip_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_crypt_tkip.c_ieee80211_tkip_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tkip_data = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ieee80211_tkip_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tkip_deinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ieee80211_tkip_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ieee80211_tkip_data*
  store %struct.ieee80211_tkip_data* %5, %struct.ieee80211_tkip_data** %3, align 8
  %6 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %3, align 8
  %7 = icmp ne %struct.ieee80211_tkip_data* %6, null
  br i1 %7, label %8, label %49

8:                                                ; preds = %1
  %9 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @crypto_free_hash(i64 %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @crypto_free_blkcipher(i64 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @crypto_free_hash(i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.ieee80211_tkip_data*, %struct.ieee80211_tkip_data** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tkip_data, %struct.ieee80211_tkip_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @crypto_free_blkcipher(i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @kfree(i8* %50)
  ret void
}

declare dso_local i32 @crypto_free_hash(i64) #1

declare dso_local i32 @crypto_free_blkcipher(i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

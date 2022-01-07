; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wep.c_ieee80211_wep_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wep.c_ieee80211_wep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i8*, i8*, i32 }

@WEP_IV_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"arc4\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wep_init(%struct.ieee80211_local* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  %4 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %5 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %4, i32 0, i32 2
  %6 = load i32, i32* @WEP_IV_LEN, align 4
  %7 = call i32 @get_random_bytes(i32* %5, i32 %6)
  %8 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %9 = call i8* @crypto_alloc_cipher(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 %8)
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @IS_ERR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i8* @ERR_PTR(i32 %19)
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @PTR_ERR(i8* %25)
  store i32 %26, i32* %2, align 4
  br label %52

27:                                               ; preds = %1
  %28 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %29 = call i8* @crypto_alloc_cipher(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 %28)
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %27
  %38 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @crypto_free_cipher(i8* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i8* @ERR_PTR(i32 %43)
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @PTR_ERR(i8* %49)
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %37, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i8* @crypto_alloc_cipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @crypto_free_cipher(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

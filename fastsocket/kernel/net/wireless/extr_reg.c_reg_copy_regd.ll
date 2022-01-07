; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_reg_copy_regd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_reg_copy_regd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32, %struct.ieee80211_regdomain* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_regdomain* (%struct.ieee80211_regdomain*)* @reg_copy_regd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_regdomain* @reg_copy_regd(%struct.ieee80211_regdomain* %0) #0 {
  %2 = alloca %struct.ieee80211_regdomain*, align 8
  %3 = alloca %struct.ieee80211_regdomain*, align 8
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %3, align 8
  %7 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = add i64 16, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ieee80211_regdomain* @kzalloc(i32 %14, i32 %15)
  store %struct.ieee80211_regdomain* %16, %struct.ieee80211_regdomain** %4, align 8
  %17 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %18 = icmp ne %struct.ieee80211_regdomain* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.ieee80211_regdomain* @ERR_PTR(i32 %21)
  store %struct.ieee80211_regdomain* %22, %struct.ieee80211_regdomain** %2, align 8
  br label %52

23:                                               ; preds = %1
  %24 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %25 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %26 = call i32 @memcpy(%struct.ieee80211_regdomain* %24, %struct.ieee80211_regdomain* %25, i32 16)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %47, %23
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %34, i32 0, i32 1
  %36 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %36, i64 %38
  %40 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %41 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %40, i32 0, i32 1
  %42 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %42, i64 %44
  %46 = call i32 @memcpy(%struct.ieee80211_regdomain* %39, %struct.ieee80211_regdomain* %45, i32 4)
  br label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  store %struct.ieee80211_regdomain* %51, %struct.ieee80211_regdomain** %2, align 8
  br label %52

52:                                               ; preds = %50, %19
  %53 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %2, align 8
  ret %struct.ieee80211_regdomain* %53
}

declare dso_local %struct.ieee80211_regdomain* @kzalloc(i32, i32) #1

declare dso_local %struct.ieee80211_regdomain* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.ieee80211_regdomain*, %struct.ieee80211_regdomain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

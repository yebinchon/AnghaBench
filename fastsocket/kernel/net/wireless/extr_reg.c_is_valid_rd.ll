; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_is_valid_rd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_is_valid_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32, %struct.ieee80211_reg_rule* }
%struct.ieee80211_reg_rule = type { i32 }

@NL80211_MAX_SUPP_REG_RULES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_regdomain*)* @is_valid_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_rd(%struct.ieee80211_regdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_regdomain*, align 8
  %4 = alloca %struct.ieee80211_reg_rule*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %3, align 8
  store %struct.ieee80211_reg_rule* null, %struct.ieee80211_reg_rule** %4, align 8
  %6 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NL80211_MAX_SUPP_REG_RULES, align 4
  %16 = icmp ugt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %44

21:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %29, i32 0, i32 1
  %31 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %31, i64 %33
  store %struct.ieee80211_reg_rule* %34, %struct.ieee80211_reg_rule** %4, align 8
  %35 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %4, align 8
  %36 = call i32 @is_valid_reg_rule(%struct.ieee80211_reg_rule* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %44

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %22

43:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %38, %20, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @is_valid_reg_rule(%struct.ieee80211_reg_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

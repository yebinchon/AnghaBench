; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_ignore_reg_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_ignore_reg_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32 }
%struct.regulatory_request = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Ignoring regulatory request %s since last_request is not set\0A\00", align 1
@NL80211_REGDOM_SET_BY_CORE = common dso_local global i32 0, align 4
@WIPHY_FLAG_CUSTOM_REGULATORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"Ignoring regulatory request %s since the driver uses its own custom regulatory domain\0A\00", align 1
@WIPHY_FLAG_STRICT_REGULATORY = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_COUNTRY_IE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [100 x i8] c"Ignoring regulatory request %s since the driver requires its own regulatory domain to be set first\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i32)* @ignore_reg_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ignore_reg_update(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %7, %struct.regulatory_request** %6, align 8
  %8 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %9 = icmp ne %struct.regulatory_request* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @reg_initiator_name(i32 %11)
  %13 = call i32 @REG_DBG_PRINT(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 1, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NL80211_REGDOM_SET_BY_CORE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %20 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WIPHY_FLAG_CUSTOM_REGULATORY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @reg_initiator_name(i32 %26)
  %28 = call i32 @REG_DBG_PRINT(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 1, i32* %3, align 4
  br label %63

29:                                               ; preds = %18, %14
  %30 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %31 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WIPHY_FLAG_STRICT_REGULATORY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %29
  %37 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %38 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @NL80211_REGDOM_SET_BY_COUNTRY_IE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %47 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @is_world_regdom(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @reg_initiator_name(i32 %52)
  %54 = call i32 @REG_DBG_PRINT(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i32 1, i32* %3, align 4
  br label %63

55:                                               ; preds = %45, %41, %36, %29
  %56 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %57 = call i64 @reg_request_cell_base(%struct.regulatory_request* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %61 = call i32 @reg_dev_ignore_cell_hint(%struct.wiphy* %60)
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %59, %51, %25, %10
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i32 @REG_DBG_PRINT(i8*, i32) #1

declare dso_local i32 @reg_initiator_name(i32) #1

declare dso_local i32 @is_world_regdom(i32) #1

declare dso_local i64 @reg_request_cell_base(%struct.regulatory_request*) #1

declare dso_local i32 @reg_dev_ignore_cell_hint(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

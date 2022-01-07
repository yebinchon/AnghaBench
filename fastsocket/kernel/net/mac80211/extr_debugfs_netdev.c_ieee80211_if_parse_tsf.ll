; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs_netdev.c_ieee80211_if_parse_tsf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs_netdev.c_ieee80211_if_parse_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"debugfs reset TSF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"debugfs set TSF to %#018llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, i8*, i32)* @ieee80211_if_parse_tsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_if_parse_tsf(%struct.ieee80211_sub_if_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strncmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %28 = call i32 @drv_reset_tsf(%struct.ieee80211_local* %26, %struct.ieee80211_sub_if_data* %27)
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @wiphy_info(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %25, %18
  br label %104

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 10
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 61
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 43
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %11, align 4
  br label %62

51:                                               ; preds = %44
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 45
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 -1, i32* %11, align 4
  br label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %106

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %50
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8* %64, i8** %6, align 8
  br label %65

65:                                               ; preds = %62, %38, %35
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @kstrtoull(i8* %66, i32 10, i64* %9)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %106

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %78 = call i32 @drv_get_tsf(%struct.ieee80211_local* %76, %struct.ieee80211_sub_if_data* %77)
  %79 = sext i32 %78 to i64
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %9, align 8
  %83 = mul i64 %81, %82
  %84 = add i64 %79, %83
  store i64 %84, i64* %9, align 8
  br label %85

85:                                               ; preds = %75, %72
  %86 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %87 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %85
  %93 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %94 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @drv_set_tsf(%struct.ieee80211_local* %93, %struct.ieee80211_sub_if_data* %94, i64 %95)
  %97 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 (i32, i8*, ...) @wiphy_info(i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %92, %85
  br label %104

104:                                              ; preds = %103, %34
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %70, %58
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @drv_reset_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @wiphy_info(i32, i8*, ...) #1

declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

declare dso_local i32 @drv_get_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @drv_set_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

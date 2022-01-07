; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_key.c_ieee80211_key_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_key.c_ieee80211_key_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { %struct.sta_info*, %struct.ieee80211_sub_if_data*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__*, i32* }
%struct.sta_info = type { i32*, i32 }

@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_key_link(%struct.ieee80211_key* %0, %struct.ieee80211_sub_if_data* %1, %struct.sta_info* %2) #0 {
  %4 = alloca %struct.ieee80211_key*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.sta_info* %2, %struct.sta_info** %6, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %12 = icmp ne %struct.ieee80211_sub_if_data* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %17 = icmp ne %struct.ieee80211_key* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %34, i32 0, i32 2
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %35, align 8
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %37 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %37, i32 0, i32 1
  store %struct.ieee80211_sub_if_data* %36, %struct.ieee80211_sub_if_data** %38, align 8
  %39 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %40 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %40, i32 0, i32 0
  store %struct.sta_info* %39, %struct.sta_info** %41, align 8
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %48 = icmp ne %struct.sta_info* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %3
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %57 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.TYPE_4__* %55, i32 %58)
  store %struct.ieee80211_key* %59, %struct.ieee80211_key** %7, align 8
  br label %88

60:                                               ; preds = %49, %3
  %61 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %62 = icmp ne %struct.sta_info* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.TYPE_4__* %66, i32 %73)
  store %struct.ieee80211_key* %74, %struct.ieee80211_key** %7, align 8
  br label %87

75:                                               ; preds = %60
  %76 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.TYPE_4__* %78, i32 %85)
  store %struct.ieee80211_key* %86, %struct.ieee80211_key** %7, align 8
  br label %87

87:                                               ; preds = %75, %63
  br label %88

88:                                               ; preds = %87, %52
  %89 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %90 = call i32 @increment_tailroom_need_count(%struct.ieee80211_sub_if_data* %89)
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %92 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %95 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %96 = call i32 @ieee80211_key_replace(%struct.ieee80211_sub_if_data* %91, %struct.sta_info* %92, i32 %93, %struct.ieee80211_key* %94, %struct.ieee80211_key* %95)
  %97 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %98 = call i32 @ieee80211_key_destroy(%struct.ieee80211_key* %97, i32 1)
  %99 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %100 = call i32 @ieee80211_debugfs_key_add(%struct.ieee80211_key* %99)
  %101 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %102 = call i32 @ieee80211_key_enable_hw_accel(%struct.ieee80211_key* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %88
  %106 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %107 = call i32 @ieee80211_key_free(%struct.ieee80211_key* %106, i32 1)
  br label %108

108:                                              ; preds = %105, %88
  %109 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %110 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ieee80211_key* @key_mtx_dereference(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @increment_tailroom_need_count(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_key_replace(%struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, %struct.ieee80211_key*, %struct.ieee80211_key*) #1

declare dso_local i32 @ieee80211_key_destroy(%struct.ieee80211_key*, i32) #1

declare dso_local i32 @ieee80211_debugfs_key_add(%struct.ieee80211_key*) #1

declare dso_local i32 @ieee80211_key_enable_hw_accel(%struct.ieee80211_key*) #1

declare dso_local i32 @ieee80211_key_free(%struct.ieee80211_key*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

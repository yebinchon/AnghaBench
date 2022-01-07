; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_mesh_matches_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_mesh_matches_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_9__, %struct.ieee80211_local*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ieee80211_local = type { i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.ieee802_11_elems = type { i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64 }
%struct.cfg80211_chan_def = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_matches_local(%struct.ieee80211_sub_if_data* %0, %struct.ieee802_11_elems* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee802_11_elems*, align 8
  %6 = alloca %struct.ieee80211_if_mesh*, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cfg80211_chan_def, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee802_11_elems* %1, %struct.ieee802_11_elems** %5, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %12, %struct.ieee80211_if_mesh** %6, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 1
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %7, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %20 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %85

23:                                               ; preds = %2
  %24 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %28 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %31 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @memcmp(i32 %26, i32 %29, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %23
  %36 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %40 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %45, label %85

45:                                               ; preds = %35
  %46 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %50 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %48, %53
  br i1 %54, label %55, label %85

55:                                               ; preds = %45
  %56 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %60 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %58, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %55
  %66 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %67 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %70 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %68, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %65
  %76 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %77 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %80 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %78, %83
  br i1 %84, label %86, label %85

85:                                               ; preds = %75, %65, %55, %45, %35, %23, %2
  store i32 0, i32* %3, align 4
  br label %119

86:                                               ; preds = %75
  %87 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %88 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %89 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %90 = call i32 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data* %89)
  %91 = call i32 @ieee80211_sta_get_rates(%struct.ieee80211_local* %87, %struct.ieee802_11_elems* %88, i32 %90, i64* %8)
  %92 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %119

100:                                              ; preds = %86
  %101 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %5, align 8
  %108 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ieee80211_ht_oper_to_chandef(i32 %106, i32 %109, %struct.cfg80211_chan_def* %9)
  %111 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %112 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = call i32 @cfg80211_chandef_compatible(%struct.TYPE_10__* %114, %struct.cfg80211_chan_def* %9)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %119

118:                                              ; preds = %100
  store i32 1, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %117, %99, %85
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @ieee80211_sta_get_rates(%struct.ieee80211_local*, %struct.ieee802_11_elems*, i32, i64*) #1

declare dso_local i32 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_ht_oper_to_chandef(i32, i32, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_compatible(%struct.TYPE_10__*, %struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bcbearer_sort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bcbearer_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.bcbearer_pair*, %struct.bcbearer_pair* }
%struct.bcbearer_pair = type { %struct.bearer*, %struct.bearer* }
%struct.bearer = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@bcbearer = common dso_local global %struct.TYPE_5__* null, align 8
@bc_lock = common dso_local global i32 0, align 4
@MAX_BEARERS = common dso_local global i32 0, align 4
@tipc_bearers = common dso_local global %struct.bearer* null, align 8
@TIPC_MAX_LINK_PRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_bcbearer_sort() #0 {
  %1 = alloca %struct.bcbearer_pair*, align 8
  %2 = alloca %struct.bcbearer_pair*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bearer*, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bcbearer, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %7, align 8
  store %struct.bcbearer_pair* %8, %struct.bcbearer_pair** %1, align 8
  %9 = call i32 @spin_lock_bh(i32* @bc_lock)
  %10 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %1, align 8
  %11 = call i32 @memset(%struct.bcbearer_pair* %10, i32 0, i32 8)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %58, %0
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MAX_BEARERS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %12
  %17 = load %struct.bearer*, %struct.bearer** @tipc_bearers, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bearer, %struct.bearer* %17, i64 %19
  store %struct.bearer* %20, %struct.bearer** %5, align 8
  %21 = load %struct.bearer*, %struct.bearer** %5, align 8
  %22 = getelementptr inbounds %struct.bearer, %struct.bearer* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.bearer*, %struct.bearer** %5, align 8
  %27 = getelementptr inbounds %struct.bearer, %struct.bearer* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25, %16
  br label %58

32:                                               ; preds = %25
  %33 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %1, align 8
  %34 = load %struct.bearer*, %struct.bearer** %5, align 8
  %35 = getelementptr inbounds %struct.bearer, %struct.bearer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %33, i64 %36
  %38 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %37, i32 0, i32 1
  %39 = load %struct.bearer*, %struct.bearer** %38, align 8
  %40 = icmp ne %struct.bearer* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %32
  %42 = load %struct.bearer*, %struct.bearer** %5, align 8
  %43 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %1, align 8
  %44 = load %struct.bearer*, %struct.bearer** %5, align 8
  %45 = getelementptr inbounds %struct.bearer, %struct.bearer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %43, i64 %46
  %48 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %47, i32 0, i32 1
  store %struct.bearer* %42, %struct.bearer** %48, align 8
  br label %57

49:                                               ; preds = %32
  %50 = load %struct.bearer*, %struct.bearer** %5, align 8
  %51 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %1, align 8
  %52 = load %struct.bearer*, %struct.bearer** %5, align 8
  %53 = getelementptr inbounds %struct.bearer, %struct.bearer* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %51, i64 %54
  %56 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %55, i32 0, i32 0
  store %struct.bearer* %50, %struct.bearer** %56, align 8
  br label %57

57:                                               ; preds = %49, %41
  br label %58

58:                                               ; preds = %57, %31
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %12

61:                                               ; preds = %12
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bcbearer, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %63, align 8
  store %struct.bcbearer_pair* %64, %struct.bcbearer_pair** %2, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bcbearer, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %66, align 8
  %68 = call i32 @memset(%struct.bcbearer_pair* %67, i32 0, i32 8)
  %69 = load i32, i32* @TIPC_MAX_LINK_PRI, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %139, %61
  %71 = load i32, i32* %4, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %142

73:                                               ; preds = %70
  %74 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %1, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %74, i64 %76
  %78 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %77, i32 0, i32 1
  %79 = load %struct.bearer*, %struct.bearer** %78, align 8
  %80 = icmp ne %struct.bearer* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  br label %139

82:                                               ; preds = %73
  %83 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %1, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %83, i64 %85
  %87 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %86, i32 0, i32 1
  %88 = load %struct.bearer*, %struct.bearer** %87, align 8
  %89 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %2, align 8
  %90 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %89, i32 0, i32 1
  store %struct.bearer* %88, %struct.bearer** %90, align 8
  %91 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %1, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %91, i64 %93
  %95 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %94, i32 0, i32 0
  %96 = load %struct.bearer*, %struct.bearer** %95, align 8
  %97 = icmp ne %struct.bearer* %96, null
  br i1 %97, label %98, label %136

98:                                               ; preds = %82
  %99 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %1, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %99, i64 %101
  %103 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %102, i32 0, i32 1
  %104 = load %struct.bearer*, %struct.bearer** %103, align 8
  %105 = getelementptr inbounds %struct.bearer, %struct.bearer* %104, i32 0, i32 1
  %106 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %1, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %106, i64 %108
  %110 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %109, i32 0, i32 0
  %111 = load %struct.bearer*, %struct.bearer** %110, align 8
  %112 = getelementptr inbounds %struct.bearer, %struct.bearer* %111, i32 0, i32 1
  %113 = call i64 @tipc_nmap_equal(%struct.TYPE_4__* %105, %struct.TYPE_4__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %98
  %116 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %1, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %116, i64 %118
  %120 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %119, i32 0, i32 0
  %121 = load %struct.bearer*, %struct.bearer** %120, align 8
  %122 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %2, align 8
  %123 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %122, i32 0, i32 0
  store %struct.bearer* %121, %struct.bearer** %123, align 8
  br label %135

124:                                              ; preds = %98
  %125 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %2, align 8
  %126 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %125, i32 1
  store %struct.bcbearer_pair* %126, %struct.bcbearer_pair** %2, align 8
  %127 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %1, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %127, i64 %129
  %131 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %130, i32 0, i32 0
  %132 = load %struct.bearer*, %struct.bearer** %131, align 8
  %133 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %2, align 8
  %134 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %133, i32 0, i32 1
  store %struct.bearer* %132, %struct.bearer** %134, align 8
  br label %135

135:                                              ; preds = %124, %115
  br label %136

136:                                              ; preds = %135, %82
  %137 = load %struct.bcbearer_pair*, %struct.bcbearer_pair** %2, align 8
  %138 = getelementptr inbounds %struct.bcbearer_pair, %struct.bcbearer_pair* %137, i32 1
  store %struct.bcbearer_pair* %138, %struct.bcbearer_pair** %2, align 8
  br label %139

139:                                              ; preds = %136, %81
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %4, align 4
  br label %70

142:                                              ; preds = %70
  %143 = call i32 @spin_unlock_bh(i32* @bc_lock)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memset(%struct.bcbearer_pair*, i32, i32) #1

declare dso_local i64 @tipc_nmap_equal(%struct.TYPE_4__*, %struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

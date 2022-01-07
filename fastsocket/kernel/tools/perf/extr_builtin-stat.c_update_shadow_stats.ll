; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_update_shadow_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_update_shadow_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32 }

@SOFTWARE = common dso_local global i32 0, align 4
@SW_TASK_CLOCK = common dso_local global i32 0, align 4
@runtime_nsecs_stats = common dso_local global i32* null, align 8
@HARDWARE = common dso_local global i32 0, align 4
@HW_CPU_CYCLES = common dso_local global i32 0, align 4
@runtime_cycles_stats = common dso_local global i32* null, align 8
@HW_STALLED_CYCLES_FRONTEND = common dso_local global i32 0, align 4
@runtime_stalled_cycles_front_stats = common dso_local global i32* null, align 8
@HW_STALLED_CYCLES_BACKEND = common dso_local global i32 0, align 4
@runtime_stalled_cycles_back_stats = common dso_local global i32* null, align 8
@HW_BRANCH_INSTRUCTIONS = common dso_local global i32 0, align 4
@runtime_branches_stats = common dso_local global i32* null, align 8
@HW_CACHE_REFERENCES = common dso_local global i32 0, align 4
@runtime_cacherefs_stats = common dso_local global i32* null, align 8
@HW_CACHE = common dso_local global i32 0, align 4
@HW_CACHE_L1D = common dso_local global i32 0, align 4
@runtime_l1_dcache_stats = common dso_local global i32* null, align 8
@HW_CACHE_L1I = common dso_local global i32 0, align 4
@runtime_l1_icache_stats = common dso_local global i32* null, align 8
@HW_CACHE_LL = common dso_local global i32 0, align 4
@runtime_ll_cache_stats = common dso_local global i32* null, align 8
@HW_CACHE_DTLB = common dso_local global i32 0, align 4
@runtime_dtlb_cache_stats = common dso_local global i32* null, align 8
@HW_CACHE_ITLB = common dso_local global i32 0, align 4
@runtime_itlb_cache_stats = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_evsel*, i32*)* @update_shadow_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_shadow_stats(%struct.perf_evsel* %0, i32* %1) #0 {
  %3 = alloca %struct.perf_evsel*, align 8
  %4 = alloca i32*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %6 = load i32, i32* @SOFTWARE, align 4
  %7 = load i32, i32* @SW_TASK_CLOCK, align 4
  %8 = call i64 @perf_evsel__match(%struct.perf_evsel* %5, i32 %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32*, i32** @runtime_nsecs_stats, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @update_stats(i32* %12, i32 %15)
  br label %157

17:                                               ; preds = %2
  %18 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %19 = load i32, i32* @HARDWARE, align 4
  %20 = load i32, i32* @HW_CPU_CYCLES, align 4
  %21 = call i64 @perf_evsel__match(%struct.perf_evsel* %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32*, i32** @runtime_cycles_stats, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @update_stats(i32* %25, i32 %28)
  br label %156

30:                                               ; preds = %17
  %31 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %32 = load i32, i32* @HARDWARE, align 4
  %33 = load i32, i32* @HW_STALLED_CYCLES_FRONTEND, align 4
  %34 = call i64 @perf_evsel__match(%struct.perf_evsel* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32*, i32** @runtime_stalled_cycles_front_stats, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @update_stats(i32* %38, i32 %41)
  br label %155

43:                                               ; preds = %30
  %44 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %45 = load i32, i32* @HARDWARE, align 4
  %46 = load i32, i32* @HW_STALLED_CYCLES_BACKEND, align 4
  %47 = call i64 @perf_evsel__match(%struct.perf_evsel* %44, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32*, i32** @runtime_stalled_cycles_back_stats, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @update_stats(i32* %51, i32 %54)
  br label %154

56:                                               ; preds = %43
  %57 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %58 = load i32, i32* @HARDWARE, align 4
  %59 = load i32, i32* @HW_BRANCH_INSTRUCTIONS, align 4
  %60 = call i64 @perf_evsel__match(%struct.perf_evsel* %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32*, i32** @runtime_branches_stats, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @update_stats(i32* %64, i32 %67)
  br label %153

69:                                               ; preds = %56
  %70 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %71 = load i32, i32* @HARDWARE, align 4
  %72 = load i32, i32* @HW_CACHE_REFERENCES, align 4
  %73 = call i64 @perf_evsel__match(%struct.perf_evsel* %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i32*, i32** @runtime_cacherefs_stats, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @update_stats(i32* %77, i32 %80)
  br label %152

82:                                               ; preds = %69
  %83 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %84 = load i32, i32* @HW_CACHE, align 4
  %85 = load i32, i32* @HW_CACHE_L1D, align 4
  %86 = call i64 @perf_evsel__match(%struct.perf_evsel* %83, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32*, i32** @runtime_l1_dcache_stats, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @update_stats(i32* %90, i32 %93)
  br label %151

95:                                               ; preds = %82
  %96 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %97 = load i32, i32* @HW_CACHE, align 4
  %98 = load i32, i32* @HW_CACHE_L1I, align 4
  %99 = call i64 @perf_evsel__match(%struct.perf_evsel* %96, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load i32*, i32** @runtime_l1_icache_stats, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @update_stats(i32* %103, i32 %106)
  br label %150

108:                                              ; preds = %95
  %109 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %110 = load i32, i32* @HW_CACHE, align 4
  %111 = load i32, i32* @HW_CACHE_LL, align 4
  %112 = call i64 @perf_evsel__match(%struct.perf_evsel* %109, i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load i32*, i32** @runtime_ll_cache_stats, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @update_stats(i32* %116, i32 %119)
  br label %149

121:                                              ; preds = %108
  %122 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %123 = load i32, i32* @HW_CACHE, align 4
  %124 = load i32, i32* @HW_CACHE_DTLB, align 4
  %125 = call i64 @perf_evsel__match(%struct.perf_evsel* %122, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load i32*, i32** @runtime_dtlb_cache_stats, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32*, i32** %4, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @update_stats(i32* %129, i32 %132)
  br label %148

134:                                              ; preds = %121
  %135 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %136 = load i32, i32* @HW_CACHE, align 4
  %137 = load i32, i32* @HW_CACHE_ITLB, align 4
  %138 = call i64 @perf_evsel__match(%struct.perf_evsel* %135, i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load i32*, i32** @runtime_itlb_cache_stats, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @update_stats(i32* %142, i32 %145)
  br label %147

147:                                              ; preds = %140, %134
  br label %148

148:                                              ; preds = %147, %127
  br label %149

149:                                              ; preds = %148, %114
  br label %150

150:                                              ; preds = %149, %101
  br label %151

151:                                              ; preds = %150, %88
  br label %152

152:                                              ; preds = %151, %75
  br label %153

153:                                              ; preds = %152, %62
  br label %154

154:                                              ; preds = %153, %49
  br label %155

155:                                              ; preds = %154, %36
  br label %156

156:                                              ; preds = %155, %23
  br label %157

157:                                              ; preds = %156, %10
  ret void
}

declare dso_local i64 @perf_evsel__match(%struct.perf_evsel*, i32, i32) #1

declare dso_local i32 @update_stats(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

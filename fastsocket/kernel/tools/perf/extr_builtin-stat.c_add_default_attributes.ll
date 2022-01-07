; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_add_default_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_add_default_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.perf_event_attr = type { i32, i32 }

@PERF_COUNT_SW_TASK_CLOCK = common dso_local global i32 0, align 4
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@PERF_COUNT_SW_CONTEXT_SWITCHES = common dso_local global i32 0, align 4
@PERF_COUNT_SW_CPU_MIGRATIONS = common dso_local global i32 0, align 4
@PERF_COUNT_SW_PAGE_FAULTS = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i32 0, align 4
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@PERF_COUNT_HW_STALLED_CYCLES_FRONTEND = common dso_local global i32 0, align 4
@PERF_COUNT_HW_STALLED_CYCLES_BACKEND = common dso_local global i32 0, align 4
@PERF_COUNT_HW_INSTRUCTIONS = common dso_local global i32 0, align 4
@PERF_COUNT_HW_BRANCH_INSTRUCTIONS = common dso_local global i32 0, align 4
@PERF_COUNT_HW_BRANCH_MISSES = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_L1D = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_READ = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_ACCESS = common dso_local global i32 0, align 4
@PERF_TYPE_HW_CACHE = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MISS = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_LL = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_L1I = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_DTLB = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_ITLB = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_PREFETCH = common dso_local global i32 0, align 4
@null_run = common dso_local global i64 0, align 8
@evsel_list = common dso_local global %struct.TYPE_3__* null, align 8
@detailed_run = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @add_default_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_default_attributes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x %struct.perf_event_attr], align 16
  %3 = alloca [4 x %struct.perf_event_attr], align 16
  %4 = alloca [6 x %struct.perf_event_attr], align 16
  %5 = alloca [2 x %struct.perf_event_attr], align 16
  %6 = getelementptr inbounds [10 x %struct.perf_event_attr], [10 x %struct.perf_event_attr]* %2, i64 0, i64 0
  %7 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i32 0, i32 0
  %8 = load i32, i32* @PERF_COUNT_SW_TASK_CLOCK, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i32 0, i32 1
  %10 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %6, i64 1
  %12 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %11, i32 0, i32 0
  %13 = load i32, i32* @PERF_COUNT_SW_CONTEXT_SWITCHES, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %11, i32 0, i32 1
  %15 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %11, i64 1
  %17 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %16, i32 0, i32 0
  %18 = load i32, i32* @PERF_COUNT_SW_CPU_MIGRATIONS, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %16, i32 0, i32 1
  %20 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %16, i64 1
  %22 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %21, i32 0, i32 0
  %23 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %21, i32 0, i32 1
  %25 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %21, i64 1
  %27 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %26, i32 0, i32 0
  %28 = load i32, i32* @PERF_COUNT_HW_CPU_CYCLES, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %26, i32 0, i32 1
  %30 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %26, i64 1
  %32 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %31, i32 0, i32 0
  %33 = load i32, i32* @PERF_COUNT_HW_STALLED_CYCLES_FRONTEND, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %31, i32 0, i32 1
  %35 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %31, i64 1
  %37 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %36, i32 0, i32 0
  %38 = load i32, i32* @PERF_COUNT_HW_STALLED_CYCLES_BACKEND, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %36, i32 0, i32 1
  %40 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %36, i64 1
  %42 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %41, i32 0, i32 0
  %43 = load i32, i32* @PERF_COUNT_HW_INSTRUCTIONS, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %41, i32 0, i32 1
  %45 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %41, i64 1
  %47 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %46, i32 0, i32 0
  %48 = load i32, i32* @PERF_COUNT_HW_BRANCH_INSTRUCTIONS, align 4
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %46, i32 0, i32 1
  %50 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %46, i64 1
  %52 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %51, i32 0, i32 0
  %53 = load i32, i32* @PERF_COUNT_HW_BRANCH_MISSES, align 4
  store i32 %53, i32* %52, align 8
  %54 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %51, i32 0, i32 1
  %55 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds [4 x %struct.perf_event_attr], [4 x %struct.perf_event_attr]* %3, i64 0, i64 0
  %57 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %56, i32 0, i32 0
  %58 = load i32, i32* @PERF_COUNT_HW_CACHE_L1D, align 4
  %59 = shl i32 %58, 0
  %60 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %61 = shl i32 %60, 8
  %62 = or i32 %59, %61
  %63 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %64 = shl i32 %63, 16
  %65 = or i32 %62, %64
  store i32 %65, i32* %57, align 8
  %66 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %56, i32 0, i32 1
  %67 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %67, i32* %66, align 4
  %68 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %56, i64 1
  %69 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %68, i32 0, i32 0
  %70 = load i32, i32* @PERF_COUNT_HW_CACHE_L1D, align 4
  %71 = shl i32 %70, 0
  %72 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %73 = shl i32 %72, 8
  %74 = or i32 %71, %73
  %75 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %76 = shl i32 %75, 16
  %77 = or i32 %74, %76
  store i32 %77, i32* %69, align 8
  %78 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %68, i32 0, i32 1
  %79 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %79, i32* %78, align 4
  %80 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %68, i64 1
  %81 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %80, i32 0, i32 0
  %82 = load i32, i32* @PERF_COUNT_HW_CACHE_LL, align 4
  %83 = shl i32 %82, 0
  %84 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %85 = shl i32 %84, 8
  %86 = or i32 %83, %85
  %87 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %88 = shl i32 %87, 16
  %89 = or i32 %86, %88
  store i32 %89, i32* %81, align 8
  %90 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %80, i32 0, i32 1
  %91 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %91, i32* %90, align 4
  %92 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %80, i64 1
  %93 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %92, i32 0, i32 0
  %94 = load i32, i32* @PERF_COUNT_HW_CACHE_LL, align 4
  %95 = shl i32 %94, 0
  %96 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %97 = shl i32 %96, 8
  %98 = or i32 %95, %97
  %99 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %100 = shl i32 %99, 16
  %101 = or i32 %98, %100
  store i32 %101, i32* %93, align 8
  %102 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %92, i32 0, i32 1
  %103 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %103, i32* %102, align 4
  %104 = getelementptr inbounds [6 x %struct.perf_event_attr], [6 x %struct.perf_event_attr]* %4, i64 0, i64 0
  %105 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %104, i32 0, i32 0
  %106 = load i32, i32* @PERF_COUNT_HW_CACHE_L1I, align 4
  %107 = shl i32 %106, 0
  %108 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %109 = shl i32 %108, 8
  %110 = or i32 %107, %109
  %111 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %112 = shl i32 %111, 16
  %113 = or i32 %110, %112
  store i32 %113, i32* %105, align 8
  %114 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %104, i32 0, i32 1
  %115 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %115, i32* %114, align 4
  %116 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %104, i64 1
  %117 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %116, i32 0, i32 0
  %118 = load i32, i32* @PERF_COUNT_HW_CACHE_L1I, align 4
  %119 = shl i32 %118, 0
  %120 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %121 = shl i32 %120, 8
  %122 = or i32 %119, %121
  %123 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %124 = shl i32 %123, 16
  %125 = or i32 %122, %124
  store i32 %125, i32* %117, align 8
  %126 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %116, i32 0, i32 1
  %127 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %127, i32* %126, align 4
  %128 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %116, i64 1
  %129 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %128, i32 0, i32 0
  %130 = load i32, i32* @PERF_COUNT_HW_CACHE_DTLB, align 4
  %131 = shl i32 %130, 0
  %132 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %133 = shl i32 %132, 8
  %134 = or i32 %131, %133
  %135 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %136 = shl i32 %135, 16
  %137 = or i32 %134, %136
  store i32 %137, i32* %129, align 8
  %138 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %128, i32 0, i32 1
  %139 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %139, i32* %138, align 4
  %140 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %128, i64 1
  %141 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %140, i32 0, i32 0
  %142 = load i32, i32* @PERF_COUNT_HW_CACHE_DTLB, align 4
  %143 = shl i32 %142, 0
  %144 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %145 = shl i32 %144, 8
  %146 = or i32 %143, %145
  %147 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %148 = shl i32 %147, 16
  %149 = or i32 %146, %148
  store i32 %149, i32* %141, align 8
  %150 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %140, i32 0, i32 1
  %151 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %151, i32* %150, align 4
  %152 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %140, i64 1
  %153 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %152, i32 0, i32 0
  %154 = load i32, i32* @PERF_COUNT_HW_CACHE_ITLB, align 4
  %155 = shl i32 %154, 0
  %156 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %157 = shl i32 %156, 8
  %158 = or i32 %155, %157
  %159 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %160 = shl i32 %159, 16
  %161 = or i32 %158, %160
  store i32 %161, i32* %153, align 8
  %162 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %152, i32 0, i32 1
  %163 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %163, i32* %162, align 4
  %164 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %152, i64 1
  %165 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %164, i32 0, i32 0
  %166 = load i32, i32* @PERF_COUNT_HW_CACHE_ITLB, align 4
  %167 = shl i32 %166, 0
  %168 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %169 = shl i32 %168, 8
  %170 = or i32 %167, %169
  %171 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %172 = shl i32 %171, 16
  %173 = or i32 %170, %172
  store i32 %173, i32* %165, align 8
  %174 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %164, i32 0, i32 1
  %175 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %175, i32* %174, align 4
  %176 = getelementptr inbounds [2 x %struct.perf_event_attr], [2 x %struct.perf_event_attr]* %5, i64 0, i64 0
  %177 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %176, i32 0, i32 0
  %178 = load i32, i32* @PERF_COUNT_HW_CACHE_L1D, align 4
  %179 = shl i32 %178, 0
  %180 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_PREFETCH, align 4
  %181 = shl i32 %180, 8
  %182 = or i32 %179, %181
  %183 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %184 = shl i32 %183, 16
  %185 = or i32 %182, %184
  store i32 %185, i32* %177, align 8
  %186 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %176, i32 0, i32 1
  %187 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %187, i32* %186, align 4
  %188 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %176, i64 1
  %189 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %188, i32 0, i32 0
  %190 = load i32, i32* @PERF_COUNT_HW_CACHE_L1D, align 4
  %191 = shl i32 %190, 0
  %192 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_PREFETCH, align 4
  %193 = shl i32 %192, 8
  %194 = or i32 %191, %193
  %195 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %196 = shl i32 %195, 16
  %197 = or i32 %194, %196
  store i32 %197, i32* %189, align 8
  %198 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %188, i32 0, i32 1
  %199 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %199, i32* %198, align 4
  %200 = load i64, i64* @null_run, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %0
  store i32 0, i32* %1, align 4
  br label %243

203:                                              ; preds = %0
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** @evsel_list, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** @evsel_list, align 8
  %210 = getelementptr inbounds [10 x %struct.perf_event_attr], [10 x %struct.perf_event_attr]* %2, i64 0, i64 0
  %211 = call i32 @perf_evlist__add_default_attrs(%struct.TYPE_3__* %209, %struct.perf_event_attr* %210)
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  store i32 -1, i32* %1, align 4
  br label %243

214:                                              ; preds = %208
  br label %215

215:                                              ; preds = %214, %203
  %216 = load i32, i32* @detailed_run, align 4
  %217 = icmp slt i32 %216, 1
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  store i32 0, i32* %1, align 4
  br label %243

219:                                              ; preds = %215
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** @evsel_list, align 8
  %221 = getelementptr inbounds [4 x %struct.perf_event_attr], [4 x %struct.perf_event_attr]* %3, i64 0, i64 0
  %222 = call i32 @perf_evlist__add_default_attrs(%struct.TYPE_3__* %220, %struct.perf_event_attr* %221)
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  store i32 -1, i32* %1, align 4
  br label %243

225:                                              ; preds = %219
  %226 = load i32, i32* @detailed_run, align 4
  %227 = icmp slt i32 %226, 2
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  store i32 0, i32* %1, align 4
  br label %243

229:                                              ; preds = %225
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** @evsel_list, align 8
  %231 = getelementptr inbounds [6 x %struct.perf_event_attr], [6 x %struct.perf_event_attr]* %4, i64 0, i64 0
  %232 = call i32 @perf_evlist__add_default_attrs(%struct.TYPE_3__* %230, %struct.perf_event_attr* %231)
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  store i32 -1, i32* %1, align 4
  br label %243

235:                                              ; preds = %229
  %236 = load i32, i32* @detailed_run, align 4
  %237 = icmp slt i32 %236, 3
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i32 0, i32* %1, align 4
  br label %243

239:                                              ; preds = %235
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** @evsel_list, align 8
  %241 = getelementptr inbounds [2 x %struct.perf_event_attr], [2 x %struct.perf_event_attr]* %5, i64 0, i64 0
  %242 = call i32 @perf_evlist__add_default_attrs(%struct.TYPE_3__* %240, %struct.perf_event_attr* %241)
  store i32 %242, i32* %1, align 4
  br label %243

243:                                              ; preds = %239, %238, %234, %228, %224, %218, %213, %202
  %244 = load i32, i32* %1, align 4
  ret i32 %244
}

declare dso_local i32 @perf_evlist__add_default_attrs(%struct.TYPE_3__*, %struct.perf_event_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

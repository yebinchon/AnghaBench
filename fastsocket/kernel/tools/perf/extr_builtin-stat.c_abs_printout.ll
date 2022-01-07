; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_abs_printout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_abs_printout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.perf_evsel = type { %struct.TYPE_20__, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32* }

@csv_output = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s%.0f%s%s\00", align 1
@big_num = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%s%'18.0f%s%-25s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s%18.0f%s%-25s\00", align 1
@no_aggr = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"CPU%*d%s\00", align 1
@csv_sep = common dso_local global i8* null, align 8
@output = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@HARDWARE = common dso_local global i32 0, align 4
@HW_INSTRUCTIONS = common dso_local global i32 0, align 4
@runtime_cycles_stats = common dso_local global %struct.TYPE_21__* null, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c" #   %5.2f  insns per cycle        \00", align 1
@runtime_stalled_cycles_front_stats = common dso_local global %struct.TYPE_21__* null, align 8
@runtime_stalled_cycles_back_stats = common dso_local global %struct.TYPE_21__* null, align 8
@.str.6 = private unnamed_addr constant [81 x i8] c"\0A                                             #   %5.2f  stalled cycles per insn\00", align 1
@HW_BRANCH_MISSES = common dso_local global i32 0, align 4
@runtime_branches_stats = common dso_local global %struct.TYPE_17__* null, align 8
@PERF_TYPE_HW_CACHE = common dso_local global i64 0, align 8
@PERF_COUNT_HW_CACHE_L1D = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_READ = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MISS = common dso_local global i32 0, align 4
@runtime_l1_dcache_stats = common dso_local global %struct.TYPE_24__* null, align 8
@PERF_COUNT_HW_CACHE_L1I = common dso_local global i32 0, align 4
@runtime_l1_icache_stats = common dso_local global %struct.TYPE_23__* null, align 8
@PERF_COUNT_HW_CACHE_DTLB = common dso_local global i32 0, align 4
@runtime_dtlb_cache_stats = common dso_local global %struct.TYPE_16__* null, align 8
@PERF_COUNT_HW_CACHE_ITLB = common dso_local global i32 0, align 4
@runtime_itlb_cache_stats = common dso_local global %struct.TYPE_25__* null, align 8
@PERF_COUNT_HW_CACHE_LL = common dso_local global i32 0, align 4
@runtime_ll_cache_stats = common dso_local global %struct.TYPE_22__* null, align 8
@HW_CACHE_MISSES = common dso_local global i32 0, align 4
@runtime_cacherefs_stats = common dso_local global %struct.TYPE_21__* null, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c" # %8.3f %% of all cache refs    \00", align 1
@HW_STALLED_CYCLES_FRONTEND = common dso_local global i32 0, align 4
@HW_STALLED_CYCLES_BACKEND = common dso_local global i32 0, align 4
@HW_CPU_CYCLES = common dso_local global i32 0, align 4
@runtime_nsecs_stats = common dso_local global %struct.TYPE_21__* null, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c" # %8.3f GHz                    \00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c" # %8.3f %c/sec                  \00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"                                   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.perf_evsel*, double)* @abs_printout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abs_printout(i32 %0, %struct.perf_evsel* %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_evsel*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store %struct.perf_evsel* %1, %struct.perf_evsel** %5, align 8
  store double %2, double* %6, align 8
  store double 0.000000e+00, double* %8, align 8
  %12 = bitcast [16 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  %13 = load i64, i64* @csv_output, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %22

16:                                               ; preds = %3
  %17 = load i64, i64* @big_num, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %21

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %21

21:                                               ; preds = %20, %19
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i64, i64* @no_aggr, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %27 = load i64, i64* @csv_output, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 -4
  %31 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %32 = call %struct.TYPE_18__* @perf_evsel__cpus(%struct.perf_evsel* %31)
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** @csv_sep, align 8
  %40 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %30, i32 %38, i8* %39)
  br label %42

41:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32, i32* @output, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %46 = load double, double* %6, align 8
  %47 = load i8*, i8** @csv_sep, align 8
  %48 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %49 = call i32 @perf_evsel__name(%struct.perf_evsel* %48)
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* %44, i8* %45, double %46, i8* %47, i32 %49)
  %51 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %52 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %51, i32 0, i32 1
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = icmp ne %struct.TYPE_19__* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %42
  %56 = load i32, i32* @output, align 4
  %57 = load i8*, i8** @csv_sep, align 8
  %58 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %59 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %58, i32 0, i32 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %57, i32 %62)
  br label %64

64:                                               ; preds = %55, %42
  %65 = load i64, i64* @csv_output, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %422

68:                                               ; preds = %64
  %69 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %70 = load i32, i32* @HARDWARE, align 4
  %71 = load i32, i32* @HW_INSTRUCTIONS, align 4
  %72 = call i64 @perf_evsel__match(%struct.perf_evsel* %69, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %115

74:                                               ; preds = %68
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** @runtime_cycles_stats, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i64 %77
  %79 = call double @avg_stats(%struct.TYPE_21__* %78)
  store double %79, double* %7, align 8
  %80 = load double, double* %7, align 8
  %81 = fcmp une double %80, 0.000000e+00
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load double, double* %6, align 8
  %84 = load double, double* %7, align 8
  %85 = fdiv double %83, %84
  store double %85, double* %8, align 8
  br label %86

86:                                               ; preds = %82, %74
  %87 = load i32, i32* @output, align 4
  %88 = load double, double* %8, align 8
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), double %88)
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** @runtime_stalled_cycles_front_stats, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i64 %92
  %94 = call double @avg_stats(%struct.TYPE_21__* %93)
  store double %94, double* %7, align 8
  %95 = load double, double* %7, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** @runtime_stalled_cycles_back_stats, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i64 %98
  %100 = call double @avg_stats(%struct.TYPE_21__* %99)
  %101 = call double @max(double %95, double %100)
  store double %101, double* %7, align 8
  %102 = load double, double* %7, align 8
  %103 = fcmp une double %102, 0.000000e+00
  br i1 %103, label %104, label %114

104:                                              ; preds = %86
  %105 = load double, double* %6, align 8
  %106 = fcmp une double %105, 0.000000e+00
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load double, double* %7, align 8
  %109 = load double, double* %6, align 8
  %110 = fdiv double %108, %109
  store double %110, double* %8, align 8
  %111 = load i32, i32* @output, align 4
  %112 = load double, double* %8, align 8
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), double %112)
  br label %114

114:                                              ; preds = %107, %104, %86
  br label %422

115:                                              ; preds = %68
  %116 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %117 = load i32, i32* @HARDWARE, align 4
  %118 = load i32, i32* @HW_BRANCH_MISSES, align 4
  %119 = call i64 @perf_evsel__match(%struct.perf_evsel* %116, i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %115
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** @runtime_branches_stats, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %132 = load double, double* %6, align 8
  %133 = call i32 @print_branch_misses(i32 %130, %struct.perf_evsel* %131, double %132)
  br label %421

134:                                              ; preds = %121, %115
  %135 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %136 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @PERF_TYPE_HW_CACHE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %134
  %142 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %143 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @PERF_COUNT_HW_CACHE_L1D, align 4
  %147 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %148 = shl i32 %147, 8
  %149 = or i32 %146, %148
  %150 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %151 = shl i32 %150, 16
  %152 = or i32 %149, %151
  %153 = icmp eq i32 %145, %152
  br i1 %153, label %154, label %167

154:                                              ; preds = %141
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** @runtime_l1_dcache_stats, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %154
  %163 = load i32, i32* %4, align 4
  %164 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %165 = load double, double* %6, align 8
  %166 = call i32 @print_l1_dcache_misses(i32 %163, %struct.perf_evsel* %164, double %165)
  br label %420

167:                                              ; preds = %154, %141, %134
  %168 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %169 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @PERF_TYPE_HW_CACHE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %200

174:                                              ; preds = %167
  %175 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %176 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @PERF_COUNT_HW_CACHE_L1I, align 4
  %180 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %181 = shl i32 %180, 8
  %182 = or i32 %179, %181
  %183 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %184 = shl i32 %183, 16
  %185 = or i32 %182, %184
  %186 = icmp eq i32 %178, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %174
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** @runtime_l1_icache_stats, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %187
  %196 = load i32, i32* %4, align 4
  %197 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %198 = load double, double* %6, align 8
  %199 = call i32 @print_l1_icache_misses(i32 %196, %struct.perf_evsel* %197, double %198)
  br label %419

200:                                              ; preds = %187, %174, %167
  %201 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %202 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @PERF_TYPE_HW_CACHE, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %233

207:                                              ; preds = %200
  %208 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %209 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @PERF_COUNT_HW_CACHE_DTLB, align 4
  %213 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %214 = shl i32 %213, 8
  %215 = or i32 %212, %214
  %216 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %217 = shl i32 %216, 16
  %218 = or i32 %215, %217
  %219 = icmp eq i32 %211, %218
  br i1 %219, label %220, label %233

220:                                              ; preds = %207
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** @runtime_dtlb_cache_stats, align 8
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %220
  %229 = load i32, i32* %4, align 4
  %230 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %231 = load double, double* %6, align 8
  %232 = call i32 @print_dtlb_cache_misses(i32 %229, %struct.perf_evsel* %230, double %231)
  br label %418

233:                                              ; preds = %220, %207, %200
  %234 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %235 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @PERF_TYPE_HW_CACHE, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %266

240:                                              ; preds = %233
  %241 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %242 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @PERF_COUNT_HW_CACHE_ITLB, align 4
  %246 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %247 = shl i32 %246, 8
  %248 = or i32 %245, %247
  %249 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %250 = shl i32 %249, 16
  %251 = or i32 %248, %250
  %252 = icmp eq i32 %244, %251
  br i1 %252, label %253, label %266

253:                                              ; preds = %240
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** @runtime_itlb_cache_stats, align 8
  %255 = load i32, i32* %4, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %253
  %262 = load i32, i32* %4, align 4
  %263 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %264 = load double, double* %6, align 8
  %265 = call i32 @print_itlb_cache_misses(i32 %262, %struct.perf_evsel* %263, double %264)
  br label %417

266:                                              ; preds = %253, %240, %233
  %267 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %268 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @PERF_TYPE_HW_CACHE, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %299

273:                                              ; preds = %266
  %274 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %275 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @PERF_COUNT_HW_CACHE_LL, align 4
  %279 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %280 = shl i32 %279, 8
  %281 = or i32 %278, %280
  %282 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %283 = shl i32 %282, 16
  %284 = or i32 %281, %283
  %285 = icmp eq i32 %277, %284
  br i1 %285, label %286, label %299

286:                                              ; preds = %273
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** @runtime_ll_cache_stats, align 8
  %288 = load i32, i32* %4, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %286
  %295 = load i32, i32* %4, align 4
  %296 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %297 = load double, double* %6, align 8
  %298 = call i32 @print_ll_cache_misses(i32 %295, %struct.perf_evsel* %296, double %297)
  br label %416

299:                                              ; preds = %286, %273, %266
  %300 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %301 = load i32, i32* @HARDWARE, align 4
  %302 = load i32, i32* @HW_CACHE_MISSES, align 4
  %303 = call i64 @perf_evsel__match(%struct.perf_evsel* %300, i32 %301, i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %330

305:                                              ; preds = %299
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** @runtime_cacherefs_stats, align 8
  %307 = load i32, i32* %4, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %330

313:                                              ; preds = %305
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** @runtime_cacherefs_stats, align 8
  %315 = load i32, i32* %4, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i64 %316
  %318 = call double @avg_stats(%struct.TYPE_21__* %317)
  store double %318, double* %7, align 8
  %319 = load double, double* %7, align 8
  %320 = fcmp une double %319, 0.000000e+00
  br i1 %320, label %321, label %326

321:                                              ; preds = %313
  %322 = load double, double* %6, align 8
  %323 = fmul double %322, 1.000000e+02
  %324 = load double, double* %7, align 8
  %325 = fdiv double %323, %324
  store double %325, double* %8, align 8
  br label %326

326:                                              ; preds = %321, %313
  %327 = load i32, i32* @output, align 4
  %328 = load double, double* %8, align 8
  %329 = call i32 (i32, i8*, ...) @fprintf(i32 %327, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), double %328)
  br label %415

330:                                              ; preds = %305, %299
  %331 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %332 = load i32, i32* @HARDWARE, align 4
  %333 = load i32, i32* @HW_STALLED_CYCLES_FRONTEND, align 4
  %334 = call i64 @perf_evsel__match(%struct.perf_evsel* %331, i32 %332, i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %330
  %337 = load i32, i32* %4, align 4
  %338 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %339 = load double, double* %6, align 8
  %340 = call i32 @print_stalled_cycles_frontend(i32 %337, %struct.perf_evsel* %338, double %339)
  br label %414

341:                                              ; preds = %330
  %342 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %343 = load i32, i32* @HARDWARE, align 4
  %344 = load i32, i32* @HW_STALLED_CYCLES_BACKEND, align 4
  %345 = call i64 @perf_evsel__match(%struct.perf_evsel* %342, i32 %343, i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %341
  %348 = load i32, i32* %4, align 4
  %349 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %350 = load double, double* %6, align 8
  %351 = call i32 @print_stalled_cycles_backend(i32 %348, %struct.perf_evsel* %349, double %350)
  br label %413

352:                                              ; preds = %341
  %353 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %354 = load i32, i32* @HARDWARE, align 4
  %355 = load i32, i32* @HW_CPU_CYCLES, align 4
  %356 = call i64 @perf_evsel__match(%struct.perf_evsel* %353, i32 %354, i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %375

358:                                              ; preds = %352
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** @runtime_nsecs_stats, align 8
  %360 = load i32, i32* %4, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i64 %361
  %363 = call double @avg_stats(%struct.TYPE_21__* %362)
  store double %363, double* %7, align 8
  %364 = load double, double* %7, align 8
  %365 = fcmp une double %364, 0.000000e+00
  br i1 %365, label %366, label %371

366:                                              ; preds = %358
  %367 = load double, double* %6, align 8
  %368 = fmul double 1.000000e+00, %367
  %369 = load double, double* %7, align 8
  %370 = fdiv double %368, %369
  store double %370, double* %8, align 8
  br label %371

371:                                              ; preds = %366, %358
  %372 = load i32, i32* @output, align 4
  %373 = load double, double* %8, align 8
  %374 = call i32 (i32, i8*, ...) @fprintf(i32 %372, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), double %373)
  br label %412

375:                                              ; preds = %352
  %376 = load %struct.TYPE_21__*, %struct.TYPE_21__** @runtime_nsecs_stats, align 8
  %377 = load i32, i32* %4, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %408

383:                                              ; preds = %375
  store i8 77, i8* %11, align 1
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** @runtime_nsecs_stats, align 8
  %385 = load i32, i32* %4, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %384, i64 %386
  %388 = call double @avg_stats(%struct.TYPE_21__* %387)
  store double %388, double* %7, align 8
  %389 = load double, double* %7, align 8
  %390 = fcmp une double %389, 0.000000e+00
  br i1 %390, label %391, label %396

391:                                              ; preds = %383
  %392 = load double, double* %6, align 8
  %393 = fmul double 1.000000e+03, %392
  %394 = load double, double* %7, align 8
  %395 = fdiv double %393, %394
  store double %395, double* %8, align 8
  br label %396

396:                                              ; preds = %391, %383
  %397 = load double, double* %8, align 8
  %398 = fcmp olt double %397, 1.000000e-03
  br i1 %398, label %399, label %402

399:                                              ; preds = %396
  %400 = load double, double* %8, align 8
  %401 = fmul double %400, 1.000000e+03
  store double %401, double* %8, align 8
  store i8 75, i8* %11, align 1
  br label %402

402:                                              ; preds = %399, %396
  %403 = load i32, i32* @output, align 4
  %404 = load double, double* %8, align 8
  %405 = load i8, i8* %11, align 1
  %406 = sext i8 %405 to i32
  %407 = call i32 (i32, i8*, ...) @fprintf(i32 %403, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), double %404, i32 %406)
  br label %411

408:                                              ; preds = %375
  %409 = load i32, i32* @output, align 4
  %410 = call i32 (i32, i8*, ...) @fprintf(i32 %409, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  br label %411

411:                                              ; preds = %408, %402
  br label %412

412:                                              ; preds = %411, %371
  br label %413

413:                                              ; preds = %412, %347
  br label %414

414:                                              ; preds = %413, %336
  br label %415

415:                                              ; preds = %414, %326
  br label %416

416:                                              ; preds = %415, %294
  br label %417

417:                                              ; preds = %416, %261
  br label %418

418:                                              ; preds = %417, %228
  br label %419

419:                                              ; preds = %418, %195
  br label %420

420:                                              ; preds = %419, %162
  br label %421

421:                                              ; preds = %420, %129
  br label %422

422:                                              ; preds = %67, %421, %114
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i8*) #2

declare dso_local %struct.TYPE_18__* @perf_evsel__cpus(%struct.perf_evsel*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @perf_evsel__name(%struct.perf_evsel*) #2

declare dso_local i64 @perf_evsel__match(%struct.perf_evsel*, i32, i32) #2

declare dso_local double @avg_stats(%struct.TYPE_21__*) #2

declare dso_local double @max(double, double) #2

declare dso_local i32 @print_branch_misses(i32, %struct.perf_evsel*, double) #2

declare dso_local i32 @print_l1_dcache_misses(i32, %struct.perf_evsel*, double) #2

declare dso_local i32 @print_l1_icache_misses(i32, %struct.perf_evsel*, double) #2

declare dso_local i32 @print_dtlb_cache_misses(i32, %struct.perf_evsel*, double) #2

declare dso_local i32 @print_itlb_cache_misses(i32, %struct.perf_evsel*, double) #2

declare dso_local i32 @print_ll_cache_misses(i32, %struct.perf_evsel*, double) #2

declare dso_local i32 @print_stalled_cycles_frontend(i32, %struct.perf_evsel*, double) #2

declare dso_local i32 @print_stalled_cycles_backend(i32, %struct.perf_evsel*, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

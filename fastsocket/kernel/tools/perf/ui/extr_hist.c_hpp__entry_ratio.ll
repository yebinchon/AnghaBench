; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__entry_ratio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__entry_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.perf_hpp = type { i32, i32 }
%struct.hist_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { double, i64 }

@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%14s\00", align 1
@__const.hpp__entry_ratio.buf = private unnamed_addr constant [32 x i8] c" \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"%+14.6F\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp*, %struct.hist_entry*)* @hpp__entry_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpp__entry_ratio(%struct.perf_hpp* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.perf_hpp*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca double, align 8
  store %struct.perf_hpp* %0, %struct.perf_hpp** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %11, i8** %5, align 8
  %12 = bitcast [32 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.hpp__entry_ratio.buf, i32 0, i32 0), i64 32, i1 false)
  %13 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %14 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %20 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  store double %22, double* %7, align 8
  br label %26

23:                                               ; preds = %2
  %24 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %25 = call double @perf_diff__compute_ratio(%struct.hist_entry* %24)
  store double %25, double* %7, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = load double, double* %7, align 8
  %28 = fcmp ogt double %27, 0.000000e+00
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %31 = load double, double* %7, align 8
  %32 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %30, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), double %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.perf_hpp*, %struct.perf_hpp** %3, align 8
  %35 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.perf_hpp*, %struct.perf_hpp** %3, align 8
  %40 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %44 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %38, i32 %41, i8* %42, i8* %43)
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local double @perf_diff__compute_ratio(%struct.hist_entry*) #2

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

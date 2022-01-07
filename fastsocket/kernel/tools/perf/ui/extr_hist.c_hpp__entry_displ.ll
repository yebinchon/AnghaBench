; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__entry_displ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__entry_displ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.perf_hpp = type { i32, i32 }
%struct.hist_entry = type { i64 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%6.6s\00", align 1
@__const.hpp__entry_displ.buf = private unnamed_addr constant [32 x i8] c" \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"%+4ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp*, %struct.hist_entry*)* @hpp__entry_displ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpp__entry_displ(%struct.perf_hpp* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.perf_hpp*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [32 x i8], align 16
  store %struct.perf_hpp* %0, %struct.perf_hpp** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  %9 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %10 = call %struct.hist_entry* @hist_entry__next_pair(%struct.hist_entry* %9)
  store %struct.hist_entry* %10, %struct.hist_entry** %5, align 8
  %11 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %12 = icmp ne %struct.hist_entry* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %15 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %18 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i64 [ %20, %13 ], [ 0, %21 ]
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %27, i8** %7, align 8
  %28 = bitcast [32 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.hpp__entry_displ.buf, i32 0, i32 0), i64 32, i1 false)
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %32, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %31, %22
  %36 = load %struct.perf_hpp*, %struct.perf_hpp** %3, align 8
  %37 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.perf_hpp*, %struct.perf_hpp** %3, align 8
  %42 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %46 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %40, i32 %43, i8* %44, i8* %45)
  ret i32 %46
}

declare dso_local %struct.hist_entry* @hist_entry__next_pair(%struct.hist_entry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

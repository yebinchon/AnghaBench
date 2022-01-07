; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__entry_formula.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_hist.c_hpp__entry_formula.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.perf_hpp = type { i32, i32 }
%struct.hist_entry = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%-70s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp*, %struct.hist_entry*)* @hpp__entry_formula to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpp__entry_formula(%struct.perf_hpp* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.perf_hpp*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [96 x i8], align 16
  store %struct.perf_hpp* %0, %struct.perf_hpp** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %10, i8** %5, align 8
  %11 = bitcast [96 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 96, i1 false)
  %12 = bitcast i8* %11 to [96 x i8]*
  %13 = getelementptr inbounds [96 x i8], [96 x i8]* %12, i32 0, i32 0
  store i8 32, i8* %13, align 16
  %14 = getelementptr inbounds [96 x i8], [96 x i8]* %6, i64 0, i64 0
  %15 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %16 = call i32 @perf_diff__formula(i8* %14, i32 96, %struct.hist_entry* %15)
  %17 = load %struct.perf_hpp*, %struct.perf_hpp** %3, align 8
  %18 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.perf_hpp*, %struct.perf_hpp** %3, align 8
  %21 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds [96 x i8], [96 x i8]* %6, i64 0, i64 0
  %25 = call i32 @scnprintf(i32 %19, i32 %22, i8* %23, i8* %24)
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @perf_diff__formula(i8*, i32, %struct.hist_entry*) #2

declare dso_local i32 @scnprintf(i32, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

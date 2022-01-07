; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_kvm_events_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_kvm_events_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_kvm_stat = type { i32, i32, i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"report event\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"event for reporting: vmexit, mmio, ioport\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vcpu\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"vcpu id to report\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"sort-key\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"key for sorting: sample(sort by samples number) time (sort by avg time)\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"perf kvm stat report [<options>]\00", align 1
@__const.kvm_events_report.kvm_events_report_usage = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_kvm_stat*, i32, i8**)* @kvm_events_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_events_report(%struct.perf_kvm_stat* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.perf_kvm_stat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca [4 x %struct.option], align 16
  %8 = alloca [2 x i8*], align 16
  store %struct.perf_kvm_stat* %0, %struct.perf_kvm_stat** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %7, i64 0, i64 0
  %10 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %4, align 8
  %11 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %10, i32 0, i32 2
  %12 = call i32 @OPT_STRING(i8 signext 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %13 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.option, %struct.option* %9, i64 1
  %15 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %4, align 8
  %16 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %15, i32 0, i32 1
  %17 = call i32 @OPT_INTEGER(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %20 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %4, align 8
  %21 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %20, i32 0, i32 0
  %22 = call i32 @OPT_STRING(i8 signext 107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.option, %struct.option* %19, i64 1
  %25 = call i32 (...) @OPT_END()
  %26 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = bitcast [2 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([2 x i8*]* @__const.kvm_events_report.kvm_events_report_usage to i8*), i64 16, i1 false)
  %28 = call i32 (...) @symbol__init()
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %7, i64 0, i64 0
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %36 = call i32 @parse_options(i32 %32, i8** %33, %struct.option* %34, i8** %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %41 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %7, i64 0, i64 0
  %42 = call i32 @usage_with_options(i8** %40, %struct.option* %41)
  br label %43

43:                                               ; preds = %39, %31
  br label %44

44:                                               ; preds = %43, %3
  %45 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %4, align 8
  %46 = call i32 @kvm_events_report_vcpu(%struct.perf_kvm_stat* %45)
  ret i32 %46
}

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @OPT_INTEGER(i32, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_END(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @symbol__init(...) #1

declare dso_local i32 @parse_options(i32, i8**, %struct.option*, i8**, i32) #1

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #1

declare dso_local i32 @kvm_events_report_vcpu(%struct.perf_kvm_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

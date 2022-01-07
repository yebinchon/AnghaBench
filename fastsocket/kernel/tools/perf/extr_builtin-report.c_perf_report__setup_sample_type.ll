; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-report.c_perf_report__setup_sample_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-report.c_perf_report__setup_sample_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.perf_report = type { i32, %struct.perf_session* }
%struct.perf_session = type { i32, i32 }

@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@sort__has_parent = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [87 x i8] c"Selected --sort parent, but no callchain data. Did you call 'perf record' without -g?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"Selected -g but no callchain data. Did you call 'perf record' without -g?\0A\00", align 1
@callchain_param = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@CHAIN_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't register callchain params.\0A\00", align 1
@sort__branch_mode = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_STACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"Selected -b but no branch data. Did you call perf record without -b?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_report*)* @perf_report__setup_sample_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_report__setup_sample_type(%struct.perf_report* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_report*, align 8
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_report* %0, %struct.perf_report** %3, align 8
  %6 = load %struct.perf_report*, %struct.perf_report** %3, align 8
  %7 = getelementptr inbounds %struct.perf_report, %struct.perf_report* %6, i32 0, i32 1
  %8 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  store %struct.perf_session* %8, %struct.perf_session** %4, align 8
  %9 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %10 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @perf_evlist__sample_type(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %14 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* @sort__has_parent, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = call i32 @ui__error(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %73

29:                                               ; preds = %22
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @ui__error(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %73

34:                                               ; preds = %29
  br label %56

35:                                               ; preds = %17, %1
  %36 = load %struct.perf_report*, %struct.perf_report** %3, align 8
  %37 = getelementptr inbounds %struct.perf_report, %struct.perf_report* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @callchain_param, i32 0, i32 0), align 8
  %42 = load i64, i64* @CHAIN_NONE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 4
  %48 = call i64 @callchain_register_param(%struct.TYPE_5__* @callchain_param)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = call i32 @ui__error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %73

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %44, %40, %35
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i32, i32* @sort__branch_mode, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %61 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @PERF_SAMPLE_BRANCH_STACK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = call i32 @ui__error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %73

71:                                               ; preds = %64, %59
  br label %72

72:                                               ; preds = %71, %56
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %69, %50, %32, %25
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @perf_evlist__sample_type(i32) #1

declare dso_local i32 @ui__error(i8*) #1

declare dso_local i64 @callchain_register_param(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

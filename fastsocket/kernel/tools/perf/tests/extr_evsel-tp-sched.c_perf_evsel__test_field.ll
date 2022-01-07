; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_evsel-tp-sched.c_perf_evsel__test_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_evsel-tp-sched.c_perf_evsel__test_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32 }
%struct.format_field = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s: \22%s\22 field not found!\0A\00", align 1
@FIELD_IS_SIGNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: \22%s\22 signedness(%d) is wrong, should be %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: \22%s\22 size (%d) should be %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, i8*, i32, i32)* @perf_evsel__test_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__test_field(%struct.perf_evsel* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_evsel*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.format_field*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.format_field* @perf_evsel__field(%struct.perf_evsel* %13, i8* %14)
  store %struct.format_field* %15, %struct.format_field** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.format_field*, %struct.format_field** %10, align 8
  %17 = icmp eq %struct.format_field* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %20 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 (i8*, i32, i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22)
  store i32 -1, i32* %5, align 4
  br label %65

24:                                               ; preds = %4
  %25 = load %struct.format_field*, %struct.format_field** %10, align 8
  %26 = getelementptr inbounds %struct.format_field, %struct.format_field* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FIELD_IS_SIGNED, align 4
  %29 = or i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %24
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %41 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i8*, i32, i8*, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %42, i8* %43, i32 %44, i32 %45)
  store i32 -1, i32* %12, align 4
  br label %47

47:                                               ; preds = %39, %36, %24
  %48 = load %struct.format_field*, %struct.format_field** %10, align 8
  %49 = getelementptr inbounds %struct.format_field, %struct.format_field* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %55 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.format_field*, %struct.format_field** %10, align 8
  %59 = getelementptr inbounds %struct.format_field, %struct.format_field* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (i8*, i32, i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %56, i8* %57, i32 %60, i32 %61)
  store i32 -1, i32* %12, align 4
  br label %63

63:                                               ; preds = %53, %47
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %18
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.format_field* @perf_evsel__field(%struct.perf_evsel*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

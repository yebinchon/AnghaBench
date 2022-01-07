; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_convert_to_trace_point.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_convert_to_trace_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_point = type { i64, i32, i32* }

@.str = private unnamed_addr constant [35 x i8] c"Failed to get entry address of %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get end address of %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Offset specified is greater than size of %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Return probe must be on the head of a real function.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, %struct.probe_trace_point*)* @convert_to_trace_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_trace_point(i32* %0, i64 %1, i32 %2, %struct.probe_trace_point* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.probe_trace_point*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.probe_trace_point* %3, %struct.probe_trace_point** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i8* @dwarf_diename(i32* %13)
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %65

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @dwarf_entrypc(i32* %18, i64* %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = call i8* @dwarf_diename(i32* %22)
  %24 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %84

27:                                               ; preds = %17
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @dwarf_highpc(i32* %28, i64* %11)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = call i8* @dwarf_diename(i32* %32)
  %34 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %84

37:                                               ; preds = %27
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = call i8* @dwarf_diename(i32* %42)
  %44 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %84

47:                                               ; preds = %37
  %48 = load i8*, i8** %12, align 8
  %49 = call i32* @strdup(i8* %48)
  %50 = load %struct.probe_trace_point*, %struct.probe_trace_point** %9, align 8
  %51 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.probe_trace_point*, %struct.probe_trace_point** %9, align 8
  %53 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %84

59:                                               ; preds = %47
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = sub nsw i64 %60, %61
  %63 = load %struct.probe_trace_point*, %struct.probe_trace_point** %9, align 8
  %64 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %69

65:                                               ; preds = %4
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.probe_trace_point*, %struct.probe_trace_point** %9, align 8
  %68 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %59
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %84

80:                                               ; preds = %72
  %81 = load %struct.probe_trace_point*, %struct.probe_trace_point** %9, align 8
  %82 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %69
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %76, %56, %41, %31, %21
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i8* @dwarf_diename(i32*) #1

declare dso_local i64 @dwarf_entrypc(i32*, i64*) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i64 @dwarf_highpc(i32*, i64*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

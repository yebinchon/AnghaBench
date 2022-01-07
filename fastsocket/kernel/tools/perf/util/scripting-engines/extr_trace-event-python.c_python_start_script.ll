; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_start_script.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_start_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't open python script \22%s\22\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Error running python script %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Error starting python script %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @python_start_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @python_start_script(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i8** @malloc(i32 %23)
  store i8** %24, i8*** %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8**, i8*** %8, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  store i8* %25, i8** %27, align 8
  store i32 1, i32* %11, align 4
  br label %28

28:                                               ; preds = %44, %3
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i8**, i8*** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  store i8* %39, i8** %43, align 8
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %28

47:                                               ; preds = %28
  %48 = call i32 (...) @Py_Initialize()
  %49 = call i32 (...) @initperf_trace_context()
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i8**, i8*** %8, align 8
  %53 = call i32 @PySys_SetArgv(i32 %51, i8** %52)
  %54 = load i8*, i8** %5, align 8
  %55 = call i32* @fopen(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %55, i32** %13, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %47
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = call i32 @perror(i8* %18)
  store i32 -1, i32* %12, align 4
  br label %84

62:                                               ; preds = %47
  %63 = load i32*, i32** %13, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @PyRun_SimpleFile(i32* %63, i8* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @stderr, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %84

72:                                               ; preds = %62
  %73 = call i32 (...) @run_start_sub()
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @stderr, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  br label %84

80:                                               ; preds = %72
  %81 = load i8**, i8*** %8, align 8
  %82 = call i32 @free(i8** %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %89

84:                                               ; preds = %76, %68, %58
  %85 = call i32 (...) @Py_Finalize()
  %86 = load i8**, i8*** %8, align 8
  %87 = call i32 @free(i8** %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8** @malloc(i32) #2

declare dso_local i32 @Py_Initialize(...) #2

declare dso_local i32 @initperf_trace_context(...) #2

declare dso_local i32 @PySys_SetArgv(i32, i8**) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @PyRun_SimpleFile(i32*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @run_start_sub(...) #2

declare dso_local i32 @free(i8**) #2

declare dso_local i32 @Py_Finalize(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

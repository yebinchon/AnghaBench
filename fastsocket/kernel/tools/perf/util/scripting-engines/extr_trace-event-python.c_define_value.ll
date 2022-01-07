; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-python.c_define_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-python.c_define_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"define_flag_value\00", align 1
@PRINT_SYMBOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"define_symbolic_value\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"couldn't create Python tuple\00", align 1
@main_dict = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*, i8*)* @define_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_value(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PRINT_SYMBOL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %21

21:                                               ; preds = %20, %5
  %22 = call i32* @PyTuple_New(i32 4)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @eval_flag(i8* %28)
  store i64 %29, i64* %15, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %16, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %16, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @PyString_FromString(i8* %33)
  %35 = call i32 @PyTuple_SetItem(i32* %30, i32 %31, i32 %34)
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %16, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %16, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @PyString_FromString(i8* %39)
  %41 = call i32 @PyTuple_SetItem(i32* %36, i32 %37, i32 %40)
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %16, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %16, align 4
  %45 = load i64, i64* %15, align 8
  %46 = call i32 @PyInt_FromLong(i64 %45)
  %47 = call i32 @PyTuple_SetItem(i32* %42, i32 %43, i32 %46)
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %16, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %16, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @PyString_FromString(i8* %51)
  %53 = call i32 @PyTuple_SetItem(i32* %48, i32 %49, i32 %52)
  %54 = load i32, i32* @main_dict, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = call i32* @PyDict_GetItemString(i32 %54, i8* %55)
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %27
  %60 = load i32*, i32** %12, align 8
  %61 = call i64 @PyCallable_Check(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i32*, i32** %12, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = call i32* @PyObject_CallObject(i32* %64, i32* %65)
  store i32* %66, i32** %14, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @handler_call_die(i8* %70)
  br label %72

72:                                               ; preds = %69, %63
  br label %73

73:                                               ; preds = %72, %59, %27
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @Py_DECREF(i32* %74)
  ret void
}

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i64 @eval_flag(i8*) #1

declare dso_local i32 @PyTuple_SetItem(i32*, i32, i32) #1

declare dso_local i32 @PyString_FromString(i8*) #1

declare dso_local i32 @PyInt_FromLong(i64) #1

declare dso_local i32* @PyDict_GetItemString(i32, i8*) #1

declare dso_local i64 @PyCallable_Check(i32*) #1

declare dso_local i32* @PyObject_CallObject(i32*, i32*) #1

declare dso_local i32 @handler_call_die(i8*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

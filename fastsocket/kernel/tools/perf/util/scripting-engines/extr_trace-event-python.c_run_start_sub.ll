; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-python.c_run_start_sub.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_trace-event-python.c_run_start_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"__main__\00", align 1
@main_module = common dso_local global i32* null, align 8
@main_dict = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"trace_begin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_start_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_start_sub() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32* @PyImport_AddModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** @main_module, align 8
  %6 = load i32*, i32** @main_module, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %47

9:                                                ; preds = %0
  %10 = load i32*, i32** @main_module, align 8
  %11 = call i32 @Py_INCREF(i32* %10)
  %12 = load i32*, i32** @main_module, align 8
  %13 = call i32* @PyModule_GetDict(i32* %12)
  store i32* %13, i32** @main_dict, align 8
  %14 = load i32*, i32** @main_dict, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 -1, i32* %4, align 4
  br label %40

17:                                               ; preds = %9
  %18 = load i32*, i32** @main_dict, align 8
  %19 = call i32 @Py_INCREF(i32* %18)
  %20 = load i32*, i32** @main_dict, align 8
  %21 = call i32* @PyDict_GetItemString(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %2, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @PyCallable_Check(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %17
  br label %45

29:                                               ; preds = %24
  %30 = load i32*, i32** %2, align 8
  %31 = call i32* @PyObject_CallObject(i32* %30, i32* null)
  store i32* %31, i32** %3, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @handler_call_die(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @Py_DECREF(i32* %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %1, align 4
  br label %47

40:                                               ; preds = %16
  %41 = load i32*, i32** @main_dict, align 8
  %42 = call i32 @Py_XDECREF(i32* %41)
  %43 = load i32*, i32** @main_module, align 8
  %44 = call i32 @Py_XDECREF(i32* %43)
  br label %45

45:                                               ; preds = %40, %28
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %45, %36, %8
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32* @PyImport_AddModule(i8*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32* @PyModule_GetDict(i32*) #1

declare dso_local i32* @PyDict_GetItemString(i32*, i8*) #1

declare dso_local i32 @PyCallable_Check(i32*) #1

declare dso_local i32* @PyObject_CallObject(i32*, i32*) #1

declare dso_local i32 @handler_call_die(i8*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_nvl2py.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_nvl2py.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@Py_None = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @nvl2py to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nvl2py(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %11 = call i32* (...) @PyDict_New()
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @nvlist_next_nvpair(i32* %12, i32* null)
  store i32* %13, i32** %5, align 8
  br label %14

14:                                               ; preds = %57, %1
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %61

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @nvpair_type(i32* %18)
  switch i32 %19, label %44 [
    i32 129, label %20
    i32 128, label %25
    i32 130, label %30
    i32 132, label %35
    i32 131, label %39
  ]

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @nvpair_value_string(i32* %21, i8** %7)
  %23 = load i8*, i8** %7, align 8
  %24 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32* %24, i32** %6, align 8
  br label %49

25:                                               ; preds = %17
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @nvpair_value_uint64(i32* %26, i8** %8)
  %28 = load i8*, i8** %8, align 8
  %29 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32* %29, i32** %6, align 8
  br label %49

30:                                               ; preds = %17
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @nvpair_value_nvlist(i32* %31, i32** %10)
  %33 = load i32*, i32** %10, align 8
  %34 = call i32* @nvl2py(i32* %33)
  store i32* %34, i32** %6, align 8
  br label %49

35:                                               ; preds = %17
  %36 = load i32*, i32** @Py_None, align 8
  %37 = call i32 @Py_INCREF(i32* %36)
  %38 = load i32*, i32** @Py_None, align 8
  store i32* %38, i32** %6, align 8
  br label %49

39:                                               ; preds = %17
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @nvpair_value_boolean_value(i32* %40, i8** %9)
  %42 = load i8*, i8** %9, align 8
  %43 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  store i32* %43, i32** %6, align 8
  br label %49

44:                                               ; preds = %17
  %45 = load i32, i32* @PyExc_ValueError, align 4
  %46 = call i32 @PyErr_SetNone(i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @Py_DECREF(i32* %47)
  store i32* null, i32** %2, align 8
  br label %63

49:                                               ; preds = %39, %35, %30, %25, %20
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @nvpair_name(i32* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @PyDict_SetItemString(i32* %50, i32 %52, i32* %53)
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @Py_DECREF(i32* %55)
  br label %57

57:                                               ; preds = %49
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32* @nvlist_next_nvpair(i32* %58, i32* %59)
  store i32* %60, i32** %5, align 8
  br label %14

61:                                               ; preds = %14
  %62 = load i32*, i32** %4, align 8
  store i32* %62, i32** %2, align 8
  br label %63

63:                                               ; preds = %61, %44
  %64 = load i32*, i32** %2, align 8
  ret i32* %64
}

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @nvpair_value_string(i32*, i8**) #1

declare dso_local i32* @Py_BuildValue(i8*, i8*) #1

declare dso_local i32 @nvpair_value_uint64(i32*, i8**) #1

declare dso_local i32 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @nvpair_value_boolean_value(i32*, i8**) #1

declare dso_local i32 @PyErr_SetNone(i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyDict_SetItemString(i32*, i32, i32*) #1

declare dso_local i32 @nvpair_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

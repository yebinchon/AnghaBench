; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_dict2nvl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/pyzfs/common/extr_ioctl.c_dict2nvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_ValueError = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@PyExc_KeyError = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@Py_True = common dso_local global i32* null, align 8
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @dict2nvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dict2nvl(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @PyDict_Check(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @PyExc_ValueError, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @PyErr_SetObject(i32 %18, i32* %19)
  store i32* null, i32** %2, align 8
  br label %121

21:                                               ; preds = %1
  %22 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %23 = call i32 @nvlist_alloc(i32** %4, i32 %22, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  br label %28

28:                                               ; preds = %114, %21
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @PyDict_Next(i32* %29, i32* %8, i32** %6, i32** %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %119

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = call i8* @PyString_AsString(i32* %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @PyExc_KeyError, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @PyErr_SetObject(i32 %38, i32* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @nvlist_free(i32* %41)
  store i32* null, i32** %2, align 8
  br label %121

43:                                               ; preds = %32
  %44 = load i32*, i32** %7, align 8
  %45 = call i64 @PyDict_Check(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  %49 = call i32* @dict2nvl(i32* %48)
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @nvlist_add_nvlist(i32* %50, i8* %51, i32* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @nvlist_free(i32* %54)
  br label %114

56:                                               ; preds = %43
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** @Py_None, align 8
  %59 = icmp eq i32* %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32*, i32** %4, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @nvlist_add_boolean(i32* %61, i8* %62)
  store i32 %63, i32* %5, align 4
  br label %113

64:                                               ; preds = %56
  %65 = load i32*, i32** %7, align 8
  %66 = call i64 @PyString_Check(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i32*, i32** %7, align 8
  %70 = call i8* @PyString_AsString(i32* %69)
  store i8* %70, i8** %11, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @nvlist_add_string(i32* %71, i8* %72, i8* %73)
  store i32 %74, i32* %5, align 4
  br label %112

75:                                               ; preds = %64
  %76 = load i32*, i32** %7, align 8
  %77 = call i64 @PyInt_Check(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @PyInt_AsUnsignedLongLongMask(i32* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @nvlist_add_uint64(i32* %82, i8* %83, i32 %84)
  store i32 %85, i32* %5, align 4
  br label %111

86:                                               ; preds = %75
  %87 = load i32*, i32** %7, align 8
  %88 = call i64 @PyBool_Check(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** @Py_True, align 8
  %93 = icmp eq i32* %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @B_TRUE, align 4
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @B_FALSE, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  store i32 %99, i32* %13, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @nvlist_add_boolean_value(i32* %100, i8* %101, i32 %102)
  store i32 %103, i32* %5, align 4
  br label %110

104:                                              ; preds = %86
  %105 = load i32, i32* @PyExc_ValueError, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @PyErr_SetObject(i32 %105, i32* %106)
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @nvlist_free(i32* %108)
  store i32* null, i32** %2, align 8
  br label %121

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %79
  br label %112

112:                                              ; preds = %111, %68
  br label %113

113:                                              ; preds = %112, %60
  br label %114

114:                                              ; preds = %113, %47
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  br label %28

119:                                              ; preds = %28
  %120 = load i32*, i32** %4, align 8
  store i32* %120, i32** %2, align 8
  br label %121

121:                                              ; preds = %119, %104, %37, %17
  %122 = load i32*, i32** %2, align 8
  ret i32* %122
}

declare dso_local i64 @PyDict_Check(i32*) #1

declare dso_local i32 @PyErr_SetObject(i32, i32*) #1

declare dso_local i32 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @PyDict_Next(i32*, i32*, i32**, i32**) #1

declare dso_local i8* @PyString_AsString(i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @nvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_add_boolean(i32*, i8*) #1

declare dso_local i64 @PyString_Check(i32*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i64 @PyInt_Check(i32*) #1

declare dso_local i32 @PyInt_AsUnsignedLongLongMask(i32*) #1

declare dso_local i32 @nvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i64 @PyBool_Check(i32*) #1

declare dso_local i32 @nvlist_add_boolean_value(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

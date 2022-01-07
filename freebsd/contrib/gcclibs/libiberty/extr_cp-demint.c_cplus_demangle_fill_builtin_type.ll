; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demint.c_cplus_demangle_fill_builtin_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demint.c_cplus_demangle_fill_builtin_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.demangle_component = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }

@D_BUILTIN_TYPE_COUNT = common dso_local global i32 0, align 4
@cplus_demangle_builtin_types = common dso_local global %struct.TYPE_6__* null, align 8
@DEMANGLE_COMPONENT_BUILTIN_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cplus_demangle_fill_builtin_type(%struct.demangle_component* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.demangle_component* %0, %struct.demangle_component** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %9 = icmp eq %struct.demangle_component* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %57

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %53, %14
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @D_BUILTIN_TYPE_COUNT, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cplus_demangle_builtin_types, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %22, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %21
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cplus_demangle_builtin_types, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strcmp(i8* %31, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %30
  %41 = load i32, i32* @DEMANGLE_COMPONENT_BUILTIN_TYPE, align 4
  %42 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %43 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cplus_demangle_builtin_types, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %49 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %51, align 8
  store i32 1, i32* %3, align 4
  br label %57

52:                                               ; preds = %30, %21
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %17

56:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %40, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_v3_argtypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_v3_argtypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32 }
%struct.demangle_component = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DMGL_PARAMS = common dso_local global i32 0, align 4
@DMGL_ANSI = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TYPED_NAME = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_FUNCTION_TYPE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Demangled name is not a function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.stab_handle*, i8*, i32*)* @stab_demangle_v3_argtypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stab_demangle_v3_argtypes(i8* %0, %struct.stab_handle* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stab_handle*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.demangle_component*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* @DMGL_PARAMS, align 4
  %15 = load i32, i32* @DMGL_ANSI, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.demangle_component* @cplus_demangle_v3_components(i8* %13, i32 %16, i8** %11)
  store %struct.demangle_component* %17, %struct.demangle_component** %10, align 8
  %18 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %19 = icmp eq %struct.demangle_component* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @stab_bad_demangle(i8* %21)
  store i32* null, i32** %5, align 8
  br label %62

23:                                               ; preds = %4
  %24 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %25 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DEMANGLE_COMPONENT_TYPED_NAME, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %23
  %30 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %31 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DEMANGLE_COMPONENT_FUNCTION_TYPE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %29, %23
  %40 = load i32, i32* @stderr, align 4
  %41 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @fprintf(i32 %40, i8* %41)
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @free(i8* %43)
  store i32* null, i32** %5, align 8
  br label %62

45:                                               ; preds = %29
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.stab_handle*, %struct.stab_handle** %7, align 8
  %48 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %49 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32* @stab_demangle_v3_arglist(i8* %46, %struct.stab_handle* %47, i32 %56, i32* %57)
  store i32* %58, i32** %12, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i32*, i32** %12, align 8
  store i32* %61, i32** %5, align 8
  br label %62

62:                                               ; preds = %45, %39, %20
  %63 = load i32*, i32** %5, align 8
  ret i32* %63
}

declare dso_local %struct.demangle_component* @cplus_demangle_v3_components(i8*, i32, i8**) #1

declare dso_local i32 @stab_bad_demangle(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @stab_demangle_v3_arglist(i8*, %struct.stab_handle*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

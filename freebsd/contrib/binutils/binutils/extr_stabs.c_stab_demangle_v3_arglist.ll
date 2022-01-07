; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_v3_arglist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_v3_arglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32 }
%struct.demangle_component = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.demangle_component* }

@FALSE = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_ARGLIST = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unexpected type in v3 arglist demangling\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@DEBUG_TYPE_NULL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (i8*, %struct.stab_handle*, %struct.demangle_component*, i64*)* @stab_demangle_v3_arglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @stab_demangle_v3_arglist(i8* %0, %struct.stab_handle* %1, %struct.demangle_component* %2, i64* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stab_handle*, align 8
  %8 = alloca %struct.demangle_component*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.demangle_component*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %7, align 8
  store %struct.demangle_component* %2, %struct.demangle_component** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 10, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = zext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @xmalloc(i32 %19)
  %21 = inttoptr i64 %20 to i32**
  store i32** %21, i32*** %13, align 8
  %22 = load i64, i64* @FALSE, align 8
  %23 = load i64*, i64** %9, align 8
  store i64 %22, i64* %23, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  store %struct.demangle_component* %24, %struct.demangle_component** %10, align 8
  br label %25

25:                                               ; preds = %83, %4
  %26 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %27 = icmp ne %struct.demangle_component* %26, null
  br i1 %27, label %28, label %89

28:                                               ; preds = %25
  %29 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %30 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DEMANGLE_COMPONENT_ARGLIST, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* @stderr, align 4
  %36 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @fprintf(i32 %35, i8* %36)
  %38 = load i32**, i32*** %13, align 8
  %39 = call i32 @free(i32** %38)
  store i32** null, i32*** %5, align 8
  br label %96

40:                                               ; preds = %28
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.stab_handle*, %struct.stab_handle** %7, align 8
  %43 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %44 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @stab_demangle_v3_arg(i8* %41, %struct.stab_handle* %42, i32 %47, i32* null, i64* %15)
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = load i64, i64* %15, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* @TRUE, align 8
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  br label %83

57:                                               ; preds = %51
  %58 = load i32**, i32*** %13, align 8
  %59 = call i32 @free(i32** %58)
  store i32** null, i32*** %5, align 8
  br label %96

60:                                               ; preds = %40
  %61 = load i32, i32* %12, align 4
  %62 = add i32 %61, 1
  %63 = load i32, i32* %11, align 4
  %64 = icmp uge i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = add i32 %66, 10
  store i32 %67, i32* %11, align 4
  %68 = load i32**, i32*** %13, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = mul i64 %70, 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 @xrealloc(i32** %68, i32 %72)
  %74 = inttoptr i64 %73 to i32**
  store i32** %74, i32*** %13, align 8
  br label %75

75:                                               ; preds = %65, %60
  %76 = load i32*, i32** %14, align 8
  %77 = load i32**, i32*** %13, align 8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  store i32* %76, i32** %80, align 8
  %81 = load i32, i32* %12, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %75, %54
  %84 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %85 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load %struct.demangle_component*, %struct.demangle_component** %87, align 8
  store %struct.demangle_component* %88, %struct.demangle_component** %10, align 8
  br label %25

89:                                               ; preds = %25
  %90 = load i32*, i32** @DEBUG_TYPE_NULL, align 8
  %91 = load i32**, i32*** %13, align 8
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  store i32* %90, i32** %94, align 8
  %95 = load i32**, i32*** %13, align 8
  store i32** %95, i32*** %5, align 8
  br label %96

96:                                               ; preds = %89, %57, %34
  %97 = load i32**, i32*** %5, align 8
  ret i32** %97
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32* @stab_demangle_v3_arg(i8*, %struct.stab_handle*, i32, i32*, i64*) #1

declare dso_local i64 @xrealloc(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

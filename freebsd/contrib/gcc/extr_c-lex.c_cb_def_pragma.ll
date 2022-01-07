; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_cb_def_pragma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_cb_def_pragma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.line_map = type { i32 }

@warn_unknown_pragmas = common dso_local global i64 0, align 8
@in_system_header = common dso_local global i64 0, align 8
@line_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CPP_EOF = common dso_local global i64 0, align 8
@CPP_NAME = common dso_local global i64 0, align 8
@OPT_Wunknown_pragmas = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%Hignoring #pragma %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @cb_def_pragma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_def_pragma(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca %struct.line_map*, align 8
  %10 = bitcast %struct.TYPE_10__* %3 to i64*
  store i64 %1, i64* %10, align 4
  store i32* %0, i32** %4, align 8
  %11 = load i64, i64* @warn_unknown_pragmas, align 8
  %12 = load i64, i64* @in_system_header, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %2
  %15 = bitcast %struct.TYPE_10__* %3 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call %struct.line_map* @linemap_lookup(i32* @line_table, i64 %16)
  store %struct.line_map* %17, %struct.line_map** %9, align 8
  %18 = load %struct.line_map*, %struct.line_map** %9, align 8
  %19 = getelementptr inbounds %struct.line_map, %struct.line_map* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.line_map*, %struct.line_map** %9, align 8
  %23 = bitcast %struct.TYPE_10__* %3 to i64*
  %24 = load i64, i64* %23, align 4
  %25 = call i32 @SOURCE_LINE(%struct.line_map* %22, i64 %24)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.TYPE_11__* @cpp_get_token(i32* %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %7, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CPP_EOF, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %14
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = call i8* @cpp_token_as_text(i32* %35, %struct.TYPE_11__* %36)
  store i8* %37, i8** %5, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call %struct.TYPE_11__* @cpp_get_token(i32* %38)
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %7, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CPP_NAME, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = call i8* @cpp_token_as_text(i32* %46, %struct.TYPE_11__* %47)
  store i8* %48, i8** %6, align 8
  br label %49

49:                                               ; preds = %45, %34
  br label %50

50:                                               ; preds = %49, %14
  %51 = load i32, i32* @OPT_Wunknown_pragmas, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @warning(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %8, i8* %52, i8* %53)
  br label %55

55:                                               ; preds = %50, %2
  ret void
}

declare dso_local %struct.line_map* @linemap_lookup(i32*, i64) #1

declare dso_local i32 @SOURCE_LINE(%struct.line_map*, i64) #1

declare dso_local %struct.TYPE_11__* @cpp_get_token(i32*) #1

declare dso_local i8* @cpp_token_as_text(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @warning(i32, i8*, %struct.TYPE_10__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

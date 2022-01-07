; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_make_expr_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_make_expr_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr_symbol_line = type { %struct.expr_symbol_line*, i32, i32, i32* }
%struct.TYPE_5__ = type { i64, i64, i64, i32* }

@O_symbol = common dso_local global i64 0, align 8
@O_big = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"bignum invalid\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"floating point number invalid\00", align 1
@O_constant = common dso_local global i64 0, align 8
@FAKE_LABEL_NAME = common dso_local global i32 0, align 4
@absolute_section = common dso_local global i32 0, align 4
@expr_section = common dso_local global i32 0, align 4
@zero_address_frag = common dso_local global i32 0, align 4
@expr_symbol_lines = common dso_local global %struct.expr_symbol_line* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @make_expr_symbol(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.expr_symbol_line*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @O_symbol, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %2, align 8
  br label %85

21:                                               ; preds = %12, %1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @O_big, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @as_bad(i32 %33)
  br label %38

35:                                               ; preds = %27
  %36 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @as_bad(i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i64, i64* @O_constant, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = call i32 @clean_up_expression(%struct.TYPE_5__* %4)
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %3, align 8
  br label %44

44:                                               ; preds = %38, %21
  %45 = load i32, i32* @FAKE_LABEL_NAME, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @O_constant, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @absolute_section, align 4
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @expr_section, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = call i32* @symbol_create(i32 %45, i32 %56, i32 0, i32* @zero_address_frag)
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = call i32 @symbol_set_value_expression(i32* %58, %struct.TYPE_5__* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @O_constant, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @resolve_symbol_value(i32* %67)
  br label %69

69:                                               ; preds = %66, %55
  %70 = call i64 @xmalloc(i32 24)
  %71 = inttoptr i64 %70 to %struct.expr_symbol_line*
  store %struct.expr_symbol_line* %71, %struct.expr_symbol_line** %6, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.expr_symbol_line*, %struct.expr_symbol_line** %6, align 8
  %74 = getelementptr inbounds %struct.expr_symbol_line, %struct.expr_symbol_line* %73, i32 0, i32 3
  store i32* %72, i32** %74, align 8
  %75 = load %struct.expr_symbol_line*, %struct.expr_symbol_line** %6, align 8
  %76 = getelementptr inbounds %struct.expr_symbol_line, %struct.expr_symbol_line* %75, i32 0, i32 2
  %77 = load %struct.expr_symbol_line*, %struct.expr_symbol_line** %6, align 8
  %78 = getelementptr inbounds %struct.expr_symbol_line, %struct.expr_symbol_line* %77, i32 0, i32 1
  %79 = call i32 @as_where(i32* %76, i32* %78)
  %80 = load %struct.expr_symbol_line*, %struct.expr_symbol_line** @expr_symbol_lines, align 8
  %81 = load %struct.expr_symbol_line*, %struct.expr_symbol_line** %6, align 8
  %82 = getelementptr inbounds %struct.expr_symbol_line, %struct.expr_symbol_line* %81, i32 0, i32 0
  store %struct.expr_symbol_line* %80, %struct.expr_symbol_line** %82, align 8
  %83 = load %struct.expr_symbol_line*, %struct.expr_symbol_line** %6, align 8
  store %struct.expr_symbol_line* %83, %struct.expr_symbol_line** @expr_symbol_lines, align 8
  %84 = load i32*, i32** %5, align 8
  store i32* %84, i32** %2, align 8
  br label %85

85:                                               ; preds = %69, %17
  %86 = load i32*, i32** %2, align 8
  ret i32* %86
}

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @clean_up_expression(%struct.TYPE_5__*) #1

declare dso_local i32* @symbol_create(i32, i32, i32, i32*) #1

declare dso_local i32 @symbol_set_value_expression(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @resolve_symbol_value(i32*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @as_where(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_expr_symbol_where.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_expr_symbol_where.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr_symbol_line = type { i8*, i32, i32*, %struct.expr_symbol_line* }

@expr_symbol_lines = common dso_local global %struct.expr_symbol_line* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expr_symbol_where(i32* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.expr_symbol_line*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.expr_symbol_line*, %struct.expr_symbol_line** @expr_symbol_lines, align 8
  store %struct.expr_symbol_line* %9, %struct.expr_symbol_line** %8, align 8
  br label %10

10:                                               ; preds = %29, %3
  %11 = load %struct.expr_symbol_line*, %struct.expr_symbol_line** %8, align 8
  %12 = icmp ne %struct.expr_symbol_line* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load %struct.expr_symbol_line*, %struct.expr_symbol_line** %8, align 8
  %15 = getelementptr inbounds %struct.expr_symbol_line, %struct.expr_symbol_line* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.expr_symbol_line*, %struct.expr_symbol_line** %8, align 8
  %21 = getelementptr inbounds %struct.expr_symbol_line, %struct.expr_symbol_line* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8**, i8*** %6, align 8
  store i8* %22, i8** %23, align 8
  %24 = load %struct.expr_symbol_line*, %struct.expr_symbol_line** %8, align 8
  %25 = getelementptr inbounds %struct.expr_symbol_line, %struct.expr_symbol_line* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  store i32 1, i32* %4, align 4
  br label %34

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.expr_symbol_line*, %struct.expr_symbol_line** %8, align 8
  %31 = getelementptr inbounds %struct.expr_symbol_line, %struct.expr_symbol_line* %30, i32 0, i32 3
  %32 = load %struct.expr_symbol_line*, %struct.expr_symbol_line** %31, align 8
  store %struct.expr_symbol_line* %32, %struct.expr_symbol_line** %8, align 8
  br label %10

33:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

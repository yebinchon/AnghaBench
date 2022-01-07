; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_lex_charconst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_lex_charconst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@parse_in = common dso_local global i32 0, align 4
@CPP_WCHAR = common dso_local global i64 0, align 8
@wchar_type_node = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@char_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @lex_charconst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex_charconst(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load i32, i32* @parse_in, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = call i64 @cpp_interpret_charconst(i32 %8, %struct.TYPE_4__* %9, i32* %6, i32* %7)
  store i64 %10, i64* %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CPP_WCHAR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @wchar_type_node, align 4
  store i32 %17, i32* %4, align 4
  br label %29

18:                                               ; preds = %1
  %19 = call i32 (...) @c_dialect_cxx()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @integer_type_node, align 4
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @char_type_node, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %3, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %4, align 4
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @build_int_cst_wide(i32 %36, i64 %37, i32 0)
  store i32 %38, i32* %5, align 4
  br label %43

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @build_int_cst_wide(i32 %40, i64 %41, i32 -1)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @cpp_interpret_charconst(i32, %struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @c_dialect_cxx(...) #1

declare dso_local i32 @build_int_cst_wide(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

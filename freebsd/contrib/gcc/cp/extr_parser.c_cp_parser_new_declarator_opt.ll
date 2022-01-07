; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_new_declarator_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_new_declarator_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@INDIRECT_REF = common dso_local global i32 0, align 4
@CPP_OPEN_SQUARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*)* @cp_parser_new_declarator_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cp_parser_new_declarator_opt(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_7__* %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call i32 @cp_parser_ptr_operator(%struct.TYPE_7__* %10, i64* %5, i32* %6)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = call i64 @cp_parser_parse_definitely(%struct.TYPE_7__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = call i32* @cp_parser_new_declarator_opt(%struct.TYPE_7__* %16)
  store i32* %17, i32** %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32* @make_ptrmem_declarator(i32 %21, i64 %22, i32* %23)
  store i32* %24, i32** %7, align 8
  br label %38

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @INDIRECT_REF, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* @make_pointer_declarator(i32 %30, i32* %31)
  store i32* %32, i32** %7, align 8
  br label %37

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @make_reference_declarator(i32 %34, i32* %35)
  store i32* %36, i32** %7, align 8
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32*, i32** %7, align 8
  store i32* %39, i32** %2, align 8
  br label %51

40:                                               ; preds = %1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CPP_OPEN_SQUARE, align 4
  %45 = call i64 @cp_lexer_next_token_is(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = call i32* @cp_parser_direct_new_declarator(%struct.TYPE_7__* %48)
  store i32* %49, i32** %2, align 8
  br label %51

50:                                               ; preds = %40
  store i32* null, i32** %2, align 8
  br label %51

51:                                               ; preds = %50, %47, %38
  %52 = load i32*, i32** %2, align 8
  ret i32* %52
}

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_7__*) #1

declare dso_local i32 @cp_parser_ptr_operator(%struct.TYPE_7__*, i64*, i32*) #1

declare dso_local i64 @cp_parser_parse_definitely(%struct.TYPE_7__*) #1

declare dso_local i32* @make_ptrmem_declarator(i32, i64, i32*) #1

declare dso_local i32* @make_pointer_declarator(i32, i32*) #1

declare dso_local i32* @make_reference_declarator(i32, i32*) #1

declare dso_local i64 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i32* @cp_parser_direct_new_declarator(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

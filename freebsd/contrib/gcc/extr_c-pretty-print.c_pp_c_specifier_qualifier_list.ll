; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_specifier_qualifier_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_specifier_qualifier_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_isoc99 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"_Complex\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"__complex__\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"__vector__\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_specifier_qualifier_list(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @TREE_CODE(i32 %9)
  %11 = icmp ne i32 %10, 130
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @pp_c_type_qualifier_list(i32* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %72 [
    i32 129, label %18
    i32 130, label %18
    i32 133, label %18
    i32 131, label %47
    i32 134, label %47
    i32 128, label %51
    i32 132, label %51
  ]

18:                                               ; preds = %16, %16, %16
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TREE_TYPE(i32 %19)
  %21 = call i32 @strip_pointer_operator(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %6, align 4
  call void @pp_c_specifier_qualifier_list(i32* %22, i32 %23)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @TREE_CODE(i32 %24)
  %26 = icmp eq i32 %25, 134
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @TREE_CODE(i32 %28)
  %30 = icmp eq i32 %29, 131
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %18
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @pp_c_whitespace(i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @pp_c_left_paren(i32* %34)
  br label %43

36:                                               ; preds = %27
  %37 = call i32 (...) @c_dialect_cxx()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @pp_c_whitespace(i32* %40)
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @pp_ptr_operator(i32* %44, i32 %45)
  br label %76

47:                                               ; preds = %16, %16
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @TREE_TYPE(i32 %49)
  call void @pp_c_specifier_qualifier_list(i32* %48, i32 %50)
  br label %76

51:                                               ; preds = %16, %16
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @TREE_TYPE(i32 %53)
  call void @pp_c_specifier_qualifier_list(i32* %52, i32 %54)
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 132
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @flag_isoc99, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  %63 = call i32 @pp_c_identifier(i32* %58, i8* %62)
  br label %71

64:                                               ; preds = %51
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @pp_c_identifier(i32* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %57
  br label %76

72:                                               ; preds = %16
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @pp_simple_type_specifier(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %71, %47, %43
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_c_type_qualifier_list(i32*, i32) #1

declare dso_local i32 @strip_pointer_operator(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @pp_c_whitespace(i32*) #1

declare dso_local i32 @pp_c_left_paren(i32*) #1

declare dso_local i32 @c_dialect_cxx(...) #1

declare dso_local i32 @pp_ptr_operator(i32*, i32) #1

declare dso_local i32 @pp_c_identifier(i32*, i8*) #1

declare dso_local i32 @pp_simple_type_specifier(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

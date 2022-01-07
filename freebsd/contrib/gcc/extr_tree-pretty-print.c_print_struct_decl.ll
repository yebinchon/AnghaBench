; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_print_struct_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_print_struct_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RECORD_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@UNION_TYPE = common dso_local global i64 0, align 8
@QUAL_UNION_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@POINTER_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32)* @print_struct_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_struct_decl(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @TYPE_NAME(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @INDENT(i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @TREE_CODE(i64 %16)
  %18 = load i64, i64* @RECORD_TYPE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @pp_string(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %37

23:                                               ; preds = %13
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @UNION_TYPE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @QUAL_UNION_TYPE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %23
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @pp_string(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @TYPE_NAME(i64 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dump_generic_node(i32* %38, i64 %40, i32 %41, i32 0, i32 0)
  br label %43

43:                                               ; preds = %37, %4
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @pp_newline(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @INDENT(i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @pp_character(i32* %48, i8 signext 123)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @pp_newline(i32* %50)
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @TYPE_FIELDS(i64 %52)
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %83, %43
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %54
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @TREE_TYPE(i64 %58)
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @TREE_TYPE(i64 %63)
  %65 = call i64 @TREE_CODE(i64 %64)
  %66 = load i64, i64* @POINTER_TYPE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load i64, i64* %9, align 8
  %70 = call i64 @TREE_TYPE(i64 %69)
  %71 = call i64 @TREE_TYPE(i64 %70)
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68, %57
  %75 = load i32*, i32** %5, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 2
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @print_declaration(i32* %75, i64 %76, i32 %78, i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @pp_newline(i32* %81)
  br label %83

83:                                               ; preds = %74, %68, %62
  %84 = load i64, i64* %9, align 8
  %85 = call i64 @TREE_CHAIN(i64 %84)
  store i64 %85, i64* %9, align 8
  br label %54

86:                                               ; preds = %54
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @INDENT(i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @pp_character(i32* %89, i8 signext 125)
  ret void
}

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i32 @INDENT(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @pp_string(i32*, i8*) #1

declare dso_local i32 @dump_generic_node(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @pp_newline(i32*) #1

declare dso_local i32 @pp_character(i32*, i8 signext) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @print_declaration(i32*, i64, i32, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

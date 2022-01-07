; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_class_instance_variables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_class_instance_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@CPP_EOF = common dso_local global i32 0, align 4
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"extra semicolon in struct or union specified\00", align 1
@CPP_CLOSE_BRACE = common dso_local global i32 0, align 4
@RID_AT_PRIVATE = common dso_local global i32 0, align 4
@RID_AT_PROTECTED = common dso_local global i32 0, align 4
@RID_AT_PUBLIC = common dso_local global i32 0, align 4
@RID_AT_PACKAGE = common dso_local global i32 0, align 4
@CPP_PRAGMA = common dso_local global i32 0, align 4
@pragma_external = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<;%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_objc_class_instance_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_objc_class_instance_variables(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %7 = call i64 @c_parser_next_token_is(i32* %5, i32 %6)
  %8 = call i32 @gcc_assert(i64 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @c_parser_consume_token(i32* %9)
  br label %11

11:                                               ; preds = %101, %78, %69, %60, %51, %42, %26, %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @CPP_EOF, align 4
  %14 = call i64 @c_parser_next_token_is_not(i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %105

16:                                               ; preds = %11
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @CPP_SEMICOLON, align 4
  %19 = call i64 @c_parser_next_token_is(i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i64, i64* @pedantic, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @pedwarn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @c_parser_consume_token(i32* %27)
  br label %11

29:                                               ; preds = %16
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %32 = call i64 @c_parser_next_token_is(i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @c_parser_consume_token(i32* %35)
  br label %105

37:                                               ; preds = %29
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @RID_AT_PRIVATE, align 4
  %40 = call i64 @c_parser_next_token_is_keyword(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @c_parser_consume_token(i32* %43)
  %45 = call i32 @objc_set_visibility(i32 2)
  br label %11

46:                                               ; preds = %37
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @RID_AT_PROTECTED, align 4
  %49 = call i64 @c_parser_next_token_is_keyword(i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @c_parser_consume_token(i32* %52)
  %54 = call i32 @objc_set_visibility(i32 0)
  br label %11

55:                                               ; preds = %46
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* @RID_AT_PUBLIC, align 4
  %58 = call i64 @c_parser_next_token_is_keyword(i32* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @c_parser_consume_token(i32* %61)
  %63 = call i32 @objc_set_visibility(i32 1)
  br label %11

64:                                               ; preds = %55
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* @RID_AT_PACKAGE, align 4
  %67 = call i64 @c_parser_next_token_is_keyword(i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @c_parser_consume_token(i32* %70)
  %72 = call i32 @objc_set_visibility(i32 3)
  br label %11

73:                                               ; preds = %64
  %74 = load i32*, i32** %2, align 8
  %75 = load i32, i32* @CPP_PRAGMA, align 4
  %76 = call i64 @c_parser_next_token_is(i32* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32*, i32** %2, align 8
  %80 = load i32, i32* @pragma_external, align 4
  %81 = call i32 @c_parser_pragma(i32* %79, i32 %80)
  br label %11

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  %87 = load i32*, i32** %2, align 8
  %88 = call i64 @c_parser_struct_declaration(i32* %87)
  store i64 %88, i64* %3, align 8
  %89 = load i64, i64* %3, align 8
  %90 = call i64 @nreverse(i64 %89)
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %98, %86
  %92 = load i64, i64* %4, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @copy_node(i64 %95)
  %97 = call i32 @objc_add_instance_variable(i32 %96)
  br label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %4, align 8
  %100 = call i64 @TREE_CHAIN(i64 %99)
  store i64 %100, i64* %4, align 8
  br label %91

101:                                              ; preds = %91
  %102 = load i32*, i32** %2, align 8
  %103 = load i32, i32* @CPP_SEMICOLON, align 4
  %104 = call i32 @c_parser_skip_until_found(i32* %102, i32 %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %11

105:                                              ; preds = %34, %11
  ret void
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @objc_set_visibility(i32) #1

declare dso_local i32 @c_parser_pragma(i32*, i32) #1

declare dso_local i64 @c_parser_struct_declaration(i32*) #1

declare dso_local i64 @nreverse(i64) #1

declare dso_local i32 @objc_add_instance_variable(i32) #1

declare dso_local i32 @copy_node(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

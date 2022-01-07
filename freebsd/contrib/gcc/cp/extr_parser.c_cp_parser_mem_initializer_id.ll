; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_mem_initializer_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_mem_initializer_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@RID_TYPENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [103 x i8] c"keyword %<typename%> not allowed in this context (a qualified member initializer is implicitly a type)\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@none_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @cp_parser_mem_initializer_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_mem_initializer_id(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RID_TYPENAME, align 4
  %12 = call i64 @cp_lexer_next_token_is_keyword(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = call i32 @error(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cp_lexer_consume_token(i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call i64 @cp_parser_global_scope_opt(%struct.TYPE_10__* %21, i32 0)
  %23 = load i64, i64* @NULL_TREE, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = call i64 @cp_parser_nested_name_specifier_opt(%struct.TYPE_10__* %26, i32 1, i32 1, i32 1, i32 1)
  %28 = load i64, i64* @NULL_TREE, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = call i32 @cp_parser_optional_template_keyword(%struct.TYPE_10__* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %20
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39, %36
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @none_type, align 4
  %46 = call i32 @cp_parser_class_name(%struct.TYPE_10__* %43, i32 1, i32 %44, i32 %45, i32 1, i32 0, i32 1)
  store i32 %46, i32* %2, align 4
  br label %61

47:                                               ; preds = %39
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_10__* %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = load i32, i32* @none_type, align 4
  %52 = call i32 @cp_parser_class_name(%struct.TYPE_10__* %50, i32 1, i32 0, i32 %51, i32 1, i32 0, i32 1)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = call i64 @cp_parser_parse_definitely(%struct.TYPE_10__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %47
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = call i32 @cp_parser_identifier(%struct.TYPE_10__* %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %56, %42
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @cp_lexer_next_token_is_keyword(i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i64 @cp_parser_global_scope_opt(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @cp_parser_nested_name_specifier_opt(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @cp_parser_optional_template_keyword(%struct.TYPE_10__*) #1

declare dso_local i32 @cp_parser_class_name(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_10__*) #1

declare dso_local i64 @cp_parser_parse_definitely(%struct.TYPE_10__*) #1

declare dso_local i32 @cp_parser_identifier(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_pseudo_destructor_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_pseudo_destructor_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@error_mark_node = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@RID_TEMPLATE = common dso_local global i32 0, align 4
@CPP_SCOPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"`::'\00", align 1
@CPP_COMPL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"request for member of non-aggregate type\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"`~'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64*, i64*)* @cp_parser_pseudo_destructor_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_pseudo_destructor_name(%struct.TYPE_10__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i64, i64* @error_mark_node, align 8
  %9 = load i64*, i64** %6, align 8
  store i64 %8, i64* %9, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = call i32 @cp_parser_global_scope_opt(%struct.TYPE_10__* %10, i32 1)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = call i64 @cp_parser_nested_name_specifier_opt(%struct.TYPE_10__* %12, i32 0, i32 1, i32 0, i32 1)
  %14 = load i64, i64* @NULL_TREE, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RID_TEMPLATE, align 4
  %24 = call i64 @cp_lexer_next_token_is_keyword(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cp_lexer_consume_token(i32 %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = call i32 @cp_parser_template_id(%struct.TYPE_10__* %31, i32 1, i32 0, i32 1)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = load i64, i64* @CPP_SCOPE, align 8
  %35 = call i32 @cp_parser_require(%struct.TYPE_10__* %33, i64 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %80

36:                                               ; preds = %19, %3
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @CPP_COMPL, align 8
  %41 = call i64 @cp_lexer_next_token_is_not(i32 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = call i64 @cp_parser_type_name(%struct.TYPE_10__* %44)
  %46 = call i64 @TREE_TYPE(i64 %45)
  %47 = load i64*, i64** %5, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i64*, i64** %5, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @error_mark_node, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %87

53:                                               ; preds = %43
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* @CPP_SCOPE, align 8
  %58 = call i64 @cp_lexer_next_token_is_not(i32 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.TYPE_11__* @cp_lexer_peek_nth_token(i32 %63, i32 2)
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CPP_COMPL, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60, %53
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = call i32 @cp_parser_error(%struct.TYPE_10__* %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %87

72:                                               ; preds = %60
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = load i64, i64* @CPP_SCOPE, align 8
  %75 = call i32 @cp_parser_require(%struct.TYPE_10__* %73, i64 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %79

76:                                               ; preds = %36
  %77 = load i64, i64* @NULL_TREE, align 8
  %78 = load i64*, i64** %5, align 8
  store i64 %77, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %72
  br label %80

80:                                               ; preds = %79, %26
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = load i64, i64* @CPP_COMPL, align 8
  %83 = call i32 @cp_parser_require(%struct.TYPE_10__* %81, i64 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = call i64 @cp_parser_type_name(%struct.TYPE_10__* %84)
  %86 = load i64*, i64** %6, align 8
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %80, %69, %52
  ret void
}

declare dso_local i32 @cp_parser_global_scope_opt(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @cp_parser_nested_name_specifier_opt(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i64 @cp_lexer_next_token_is_keyword(i32, i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_template_id(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_10__*, i64, i8*) #1

declare dso_local i64 @cp_lexer_next_token_is_not(i32, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @cp_parser_type_name(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @cp_lexer_peek_nth_token(i32, i32) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

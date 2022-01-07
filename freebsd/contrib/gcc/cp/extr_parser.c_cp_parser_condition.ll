; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8* }

@.str = private unnamed_addr constant [39 x i8] c"types may not be defined in conditions\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@CP_PARSER_DECLARATOR_NAMED = common dso_local global i32 0, align 4
@CPP_EQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"`='\00", align 1
@LOOKUP_ONLYCONVERTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*)* @cp_parser_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_condition(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_14__* %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = call i32 @cp_parser_type_specifier_seq(%struct.TYPE_14__* %20, i32 1, i32* %4)
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = call i32 @cp_parser_error_occurred(%struct.TYPE_14__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %1
  %29 = load i64, i64* @NULL_TREE, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = load i32, i32* @CP_PARSER_DECLARATOR_NAMED, align 4
  %32 = call i32* @cp_parser_declarator(%struct.TYPE_14__* %30, i32 %31, i32* null, i32* null, i32 0)
  store i32* %32, i32** %9, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = call i64 @cp_parser_attributes_opt(%struct.TYPE_14__* %33)
  store i64 %34, i64* %8, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = call i64 @cp_parser_asm_specification_opt(%struct.TYPE_14__* %35)
  store i64 %36, i64* %7, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = load i32, i32* @CPP_EQ, align 4
  %39 = call i32 @cp_parser_require(%struct.TYPE_14__* %37, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = call i64 @cp_parser_parse_definitely(%struct.TYPE_14__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %28
  %44 = load i32*, i32** %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @NULL_TREE, align 8
  %47 = call i64 @start_decl(i32* %44, i32* %4, i32 1, i64 %45, i64 %46, i64* %11)
  store i64 %47, i64* %6, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = call i64 @cp_parser_constant_expression(%struct.TYPE_14__* %48, i32 1, i32* %12)
  store i64 %49, i64* %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @fold_non_dependent_expr(i64 %53)
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %52, %43
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* @LOOKUP_ONLYCONVERTING, align 4
  %64 = call i32 @cp_finish_decl(i64 %56, i64 %57, i32 %61, i64 %62, i32 %63)
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @pop_scope(i64 %68)
  br label %70

70:                                               ; preds = %67, %55
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @convert_from_reference(i64 %71)
  store i64 %72, i64* %2, align 8
  br label %80

73:                                               ; preds = %28
  br label %77

74:                                               ; preds = %1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = call i32 @cp_parser_abort_tentative_parse(%struct.TYPE_14__* %75)
  br label %77

77:                                               ; preds = %74, %73
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = call i64 @cp_parser_expression(%struct.TYPE_14__* %78, i32 0)
  store i64 %79, i64* %2, align 8
  br label %80

80:                                               ; preds = %77, %70
  %81 = load i64, i64* %2, align 8
  ret i64 %81
}

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_14__*) #1

declare dso_local i32 @cp_parser_type_specifier_seq(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @cp_parser_error_occurred(%struct.TYPE_14__*) #1

declare dso_local i32* @cp_parser_declarator(%struct.TYPE_14__*, i32, i32*, i32*, i32) #1

declare dso_local i64 @cp_parser_attributes_opt(%struct.TYPE_14__*) #1

declare dso_local i64 @cp_parser_asm_specification_opt(%struct.TYPE_14__*) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i64 @cp_parser_parse_definitely(%struct.TYPE_14__*) #1

declare dso_local i64 @start_decl(i32*, i32*, i32, i64, i64, i64*) #1

declare dso_local i64 @cp_parser_constant_expression(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i64 @fold_non_dependent_expr(i64) #1

declare dso_local i32 @cp_finish_decl(i64, i64, i32, i64, i32) #1

declare dso_local i32 @pop_scope(i64) #1

declare dso_local i64 @convert_from_reference(i64) #1

declare dso_local i32 @cp_parser_abort_tentative_parse(%struct.TYPE_14__*) #1

declare dso_local i64 @cp_parser_expression(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

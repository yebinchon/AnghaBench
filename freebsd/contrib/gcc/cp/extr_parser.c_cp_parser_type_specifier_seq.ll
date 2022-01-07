; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_type_specifier_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_type_specifier_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@CP_PARSER_FLAGS_OPTIONAL = common dso_local global i32 0, align 4
@RID_ATTRIBUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"expected type-specifier\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, %struct.TYPE_12__*)* @cp_parser_type_specifier_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_type_specifier_seq(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @CP_PARSER_FLAGS_OPTIONAL, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %13 = call i32 @clear_decl_specs(%struct.TYPE_12__* %12)
  br label %14

14:                                               ; preds = %3, %21, %57
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RID_ATTRIBUTE, align 4
  %19 = call i64 @cp_lexer_next_token_is_keyword(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = call i32 @cp_parser_attributes_opt(%struct.TYPE_11__* %25)
  %27 = call i32 @chainon(i32 %24, i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = call i32 @cp_parser_type_specifier(%struct.TYPE_11__* %31, i32 %32, %struct.TYPE_12__* %33, i32 0, i32* null, i32* %10)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = call i32 @cp_parser_error(%struct.TYPE_11__* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @error_mark_node, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %61

46:                                               ; preds = %37
  br label %58

47:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %53, %50, %47
  br label %14

58:                                               ; preds = %46
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = call i32 @cp_parser_check_decl_spec(%struct.TYPE_12__* %59)
  br label %61

61:                                               ; preds = %58, %40
  ret void
}

declare dso_local i32 @clear_decl_specs(%struct.TYPE_12__*) #1

declare dso_local i64 @cp_lexer_next_token_is_keyword(i32, i32) #1

declare dso_local i32 @chainon(i32, i32) #1

declare dso_local i32 @cp_parser_attributes_opt(%struct.TYPE_11__*) #1

declare dso_local i32 @cp_parser_type_specifier(%struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32, i32*, i32*) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @cp_parser_check_decl_spec(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

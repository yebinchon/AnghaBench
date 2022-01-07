; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_pretty_printer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_pretty_printer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@pp_cxx_declaration = common dso_local global i64 0, align 8
@pp_cxx_decl_specifier_seq = common dso_local global i64 0, align 8
@pp_cxx_function_specifier = common dso_local global i64 0, align 8
@pp_cxx_type_specifier_seq = common dso_local global i64 0, align 8
@pp_cxx_declarator = common dso_local global i64 0, align 8
@pp_cxx_direct_declarator = common dso_local global i64 0, align 8
@pp_cxx_parameter_declaration_clause = common dso_local global i64 0, align 8
@pp_cxx_type_id = common dso_local global i64 0, align 8
@pp_cxx_abstract_declarator = common dso_local global i64 0, align 8
@pp_cxx_direct_abstract_declarator = common dso_local global i64 0, align 8
@pp_cxx_simple_type_specifier = common dso_local global i64 0, align 8
@pp_cxx_constant = common dso_local global i64 0, align 8
@pp_cxx_id_expression = common dso_local global i64 0, align 8
@pp_cxx_primary_expression = common dso_local global i64 0, align 8
@pp_cxx_postfix_expression = common dso_local global i64 0, align 8
@pp_cxx_unary_expression = common dso_local global i64 0, align 8
@pp_cxx_multiplicative_expression = common dso_local global i64 0, align 8
@pp_cxx_conditional_expression = common dso_local global i64 0, align 8
@pp_cxx_assignment_expression = common dso_local global i64 0, align 8
@pp_cxx_expression = common dso_local global i64 0, align 8
@global_namespace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_cxx_pretty_printer_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = call i32 @pp_c_base(%struct.TYPE_7__* %3)
  %5 = call i32 @pp_c_pretty_printer_init(i32 %4)
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = call i32 @pp_set_line_maximum_length(%struct.TYPE_7__* %6, i32 0)
  %8 = load i64, i64* @pp_cxx_declaration, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 19
  store i8* %9, i8** %12, align 8
  %13 = load i64, i64* @pp_cxx_decl_specifier_seq, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 18
  store i8* %14, i8** %17, align 8
  %18 = load i64, i64* @pp_cxx_function_specifier, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 17
  store i8* %19, i8** %22, align 8
  %23 = load i64, i64* @pp_cxx_type_specifier_seq, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 16
  store i8* %24, i8** %27, align 8
  %28 = load i64, i64* @pp_cxx_declarator, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 15
  store i8* %29, i8** %32, align 8
  %33 = load i64, i64* @pp_cxx_direct_declarator, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 14
  store i8* %34, i8** %37, align 8
  %38 = load i64, i64* @pp_cxx_parameter_declaration_clause, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 13
  store i8* %39, i8** %42, align 8
  %43 = load i64, i64* @pp_cxx_type_id, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 12
  store i8* %44, i8** %47, align 8
  %48 = load i64, i64* @pp_cxx_abstract_declarator, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 11
  store i8* %49, i8** %52, align 8
  %53 = load i64, i64* @pp_cxx_direct_abstract_declarator, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 10
  store i8* %54, i8** %57, align 8
  %58 = load i64, i64* @pp_cxx_simple_type_specifier, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 9
  store i8* %59, i8** %62, align 8
  %63 = load i64, i64* @pp_cxx_constant, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 8
  store i8* %64, i8** %67, align 8
  %68 = load i64, i64* @pp_cxx_id_expression, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 7
  store i8* %69, i8** %72, align 8
  %73 = load i64, i64* @pp_cxx_primary_expression, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 6
  store i8* %74, i8** %77, align 8
  %78 = load i64, i64* @pp_cxx_postfix_expression, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  store i8* %79, i8** %82, align 8
  %83 = load i64, i64* @pp_cxx_unary_expression, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  store i8* %84, i8** %87, align 8
  %88 = load i64, i64* @pp_cxx_multiplicative_expression, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  store i8* %89, i8** %92, align 8
  %93 = load i64, i64* @pp_cxx_conditional_expression, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i8* %94, i8** %97, align 8
  %98 = load i64, i64* @pp_cxx_assignment_expression, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i8* %99, i8** %102, align 8
  %103 = load i64, i64* @pp_cxx_expression, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = load i32, i32* @global_namespace, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  ret void
}

declare dso_local i32 @pp_c_pretty_printer_init(i32) #1

declare dso_local i32 @pp_c_base(%struct.TYPE_7__*) #1

declare dso_local i32 @pp_set_line_maximum_length(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

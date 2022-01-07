; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_parameter_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_parameter_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_parm = type { i32 }
%struct.c_declspecs = type { i32, i8* }
%struct.c_declarator = type { i32 }

@NULL_TREE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"expected declaration specifiers or %<...%>\00", align 1
@C_DTR_PARM = common dso_local global i32 0, align 4
@CPP_COMMA = common dso_local global i32 0, align 4
@RID_ATTRIBUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.c_parm* (i32*, i8*)* @c_parser_parameter_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.c_parm* @c_parser_parameter_declaration(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.c_parm*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.c_declspecs*, align 8
  %7 = alloca %struct.c_declarator*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** @NULL_TREE, align 8
  store i8* %11, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @c_parser_next_token_starts_declspecs(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @c_parser_error(i32* %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @c_parser_skip_to_end_of_parameter(i32* %18)
  store %struct.c_parm* null, %struct.c_parm** %3, align 8
  br label %69

20:                                               ; preds = %2
  %21 = call %struct.c_declspecs* (...) @build_null_declspecs()
  store %struct.c_declspecs* %21, %struct.c_declspecs** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @declspecs_add_attrs(%struct.c_declspecs* %25, i8* %26)
  %28 = load i8*, i8** @NULL_TREE, align 8
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %32 = call i32 @c_parser_declspecs(i32* %30, %struct.c_declspecs* %31, i32 1, i32 1, i32 1)
  %33 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %34 = call i32 @finish_declspecs(%struct.c_declspecs* %33)
  %35 = call i32 (...) @pending_xref_error()
  %36 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %37 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** @NULL_TREE, align 8
  %40 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %41 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %44 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @C_DTR_PARM, align 4
  %47 = call %struct.c_declarator* @c_parser_declarator(i32* %42, i32 %45, i32 %46, i32* %10)
  store %struct.c_declarator* %47, %struct.c_declarator** %7, align 8
  %48 = load %struct.c_declarator*, %struct.c_declarator** %7, align 8
  %49 = icmp eq %struct.c_declarator* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %29
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @CPP_COMMA, align 4
  %53 = call i32 @c_parser_skip_until_found(i32* %51, i32 %52, i32* null)
  store %struct.c_parm* null, %struct.c_parm** %3, align 8
  br label %69

54:                                               ; preds = %29
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @RID_ATTRIBUTE, align 4
  %57 = call i64 @c_parser_next_token_is_keyword(i32* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32*, i32** %4, align 8
  %61 = call i8* @c_parser_attributes(i32* %60)
  store i8* %61, i8** %9, align 8
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.c_declspecs*, %struct.c_declspecs** %6, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @chainon(i8* %64, i8* %65)
  %67 = load %struct.c_declarator*, %struct.c_declarator** %7, align 8
  %68 = call %struct.c_parm* @build_c_parm(%struct.c_declspecs* %63, i32 %66, %struct.c_declarator* %67)
  store %struct.c_parm* %68, %struct.c_parm** %3, align 8
  br label %69

69:                                               ; preds = %62, %50, %15
  %70 = load %struct.c_parm*, %struct.c_parm** %3, align 8
  ret %struct.c_parm* %70
}

declare dso_local i32 @c_parser_next_token_starts_declspecs(i32*) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i32 @c_parser_skip_to_end_of_parameter(i32*) #1

declare dso_local %struct.c_declspecs* @build_null_declspecs(...) #1

declare dso_local i32 @declspecs_add_attrs(%struct.c_declspecs*, i8*) #1

declare dso_local i32 @c_parser_declspecs(i32*, %struct.c_declspecs*, i32, i32, i32) #1

declare dso_local i32 @finish_declspecs(%struct.c_declspecs*) #1

declare dso_local i32 @pending_xref_error(...) #1

declare dso_local %struct.c_declarator* @c_parser_declarator(i32*, i32, i32, i32*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i32*) #1

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i8* @c_parser_attributes(i32*) #1

declare dso_local %struct.c_parm* @build_c_parm(%struct.c_declspecs*, i32, %struct.c_declarator*) #1

declare dso_local i32 @chainon(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

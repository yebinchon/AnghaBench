; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_namespace_alias_definition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_namespace_alias_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RID_NAMESPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"`namespace'\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@CPP_EQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"`='\00", align 1
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"`;'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @cp_parser_namespace_alias_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_namespace_alias_definition(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @RID_NAMESPACE, align 4
  %7 = call i32 @cp_parser_require_keyword(i32* %5, i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @cp_parser_identifier(i32* %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @error_mark_node, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %26

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @CPP_EQ, align 4
  %17 = call i32 @cp_parser_require(i32* %15, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = call i64 @cp_parser_qualified_namespace_specifier(i32* %18)
  store i64 %19, i64* %4, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @CPP_SEMICOLON, align 4
  %22 = call i32 @cp_parser_require(i32* %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @do_namespace_alias(i64 %23, i64 %24)
  br label %26

26:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @cp_parser_require_keyword(i32*, i32, i8*) #1

declare dso_local i64 @cp_parser_identifier(i32*) #1

declare dso_local i32 @cp_parser_require(i32*, i32, i8*) #1

declare dso_local i64 @cp_parser_qualified_namespace_specifier(i32*) #1

declare dso_local i32 @do_namespace_alias(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

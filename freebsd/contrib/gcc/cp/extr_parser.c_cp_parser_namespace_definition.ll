; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_namespace_definition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_namespace_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@RID_NAMESPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"`namespace'\00", align 1
@CPP_NAME = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"`{'\00", align 1
@CPP_CLOSE_BRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"`}'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @cp_parser_namespace_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_namespace_definition(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = load i32, i32* @RID_NAMESPACE, align 4
  %7 = call i32 @cp_parser_require_keyword(%struct.TYPE_8__* %5, i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CPP_NAME, align 4
  %12 = call i64 @cp_lexer_next_token_is(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = call i32 @cp_parser_identifier(%struct.TYPE_8__* %15)
  store i32 %16, i32* %3, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @NULL_TREE, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = call i32 @cp_parser_attributes_opt(%struct.TYPE_8__* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %24 = call i32 @cp_parser_require(%struct.TYPE_8__* %22, i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @push_namespace_with_attribs(i32 %25, i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = call i32 @cp_parser_namespace_body(%struct.TYPE_8__* %28)
  %30 = call i32 (...) @pop_namespace()
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = load i32, i32* @CPP_CLOSE_BRACE, align 4
  %33 = call i32 @cp_parser_require(%struct.TYPE_8__* %31, i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cp_parser_require_keyword(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i64 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i32 @cp_parser_identifier(%struct.TYPE_8__*) #1

declare dso_local i32 @cp_parser_attributes_opt(%struct.TYPE_8__*) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @push_namespace_with_attribs(i32, i32) #1

declare dso_local i32 @cp_parser_namespace_body(%struct.TYPE_8__*) #1

declare dso_local i32 @pop_namespace(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

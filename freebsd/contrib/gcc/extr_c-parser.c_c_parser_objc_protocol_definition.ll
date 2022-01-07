; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_protocol_definition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_protocol_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@RID_AT_PROTOCOL = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"expected identifier\00", align 1
@CPP_COMMA = common dso_local global i64 0, align 8
@CPP_SEMICOLON = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<;%>\00", align 1
@CPP_LESS = common dso_local global i64 0, align 8
@objc_pq_context = common dso_local global i32 0, align 4
@RID_AT_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"expected %<@end%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @c_parser_objc_protocol_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_objc_protocol_definition(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @RID_AT_PROTOCOL, align 4
  %11 = call i32 @c_parser_next_token_is_keyword(i32* %9, i32 %10)
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @c_parser_consume_token(i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @CPP_NAME, align 4
  %17 = call i64 @c_parser_next_token_is_not(i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @c_parser_error(i32* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %100

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = call %struct.TYPE_4__* @c_parser_peek_2nd_token(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CPP_COMMA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load i32*, i32** %3, align 8
  %31 = call %struct.TYPE_4__* @c_parser_peek_2nd_token(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CPP_SEMICOLON, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %29, %22
  %37 = load i32, i32* @NULL_TREE, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %66
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @CPP_NAME, align 4
  %41 = call i64 @c_parser_next_token_is_not(i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @c_parser_error(i32* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %67

46:                                               ; preds = %38
  %47 = load i32*, i32** %3, align 8
  %48 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %47)
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @NULL_TREE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @build_tree_list(i32 %52, i32 %53)
  %55 = call i32 @chainon(i32 %51, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @c_parser_consume_token(i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load i64, i64* @CPP_COMMA, align 8
  %60 = call i64 @c_parser_next_token_is(i32* %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %46
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @c_parser_consume_token(i32* %63)
  br label %66

65:                                               ; preds = %46
  br label %67

66:                                               ; preds = %62
  br label %38

67:                                               ; preds = %65, %43
  %68 = load i32*, i32** %3, align 8
  %69 = load i64, i64* @CPP_SEMICOLON, align 8
  %70 = call i32 @c_parser_skip_until_found(i32* %68, i64 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @objc_declare_protocols(i32 %71, i32 %72)
  br label %100

74:                                               ; preds = %29
  %75 = load i32*, i32** %3, align 8
  %76 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %75)
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @NULL_TREE, align 4
  store i32 %79, i32* %8, align 4
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @c_parser_consume_token(i32* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load i64, i64* @CPP_LESS, align 8
  %84 = call i64 @c_parser_next_token_is(i32* %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @c_parser_objc_protocol_refs(i32* %87)
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %74
  store i32 1, i32* @objc_pq_context, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @objc_start_protocol(i32 %90, i32 %91, i32 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @c_parser_objc_interfacedecllist(i32* %94)
  %96 = load i32*, i32** %3, align 8
  %97 = load i32, i32* @RID_AT_END, align 4
  %98 = call i32 @c_parser_require_keyword(i32* %96, i32 %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* @objc_pq_context, align 4
  %99 = call i32 (...) @objc_finish_interface()
  br label %100

100:                                              ; preds = %19, %89, %67
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @c_parser_peek_2nd_token(i32*) #1

declare dso_local %struct.TYPE_3__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @chainon(i32, i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i64) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i64, i8*) #1

declare dso_local i32 @objc_declare_protocols(i32, i32) #1

declare dso_local i32 @c_parser_objc_protocol_refs(i32*) #1

declare dso_local i32 @objc_start_protocol(i32, i32, i32) #1

declare dso_local i32 @c_parser_objc_interfacedecllist(i32*) #1

declare dso_local i32 @c_parser_require_keyword(i32*, i32, i8*) #1

declare dso_local i32 @objc_finish_interface(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

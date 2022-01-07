; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_class_or_namespace_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_class_or_namespace_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i64 }

@class_type = common dso_local global i32 0, align 4
@none_type = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i32 0, align 4
@CPP_SCOPE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i32, i32, i32, i32, i32)* @cp_parser_class_or_namespace_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cp_parser_class_or_namespace_name(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %14, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %15, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %16, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %6
  %31 = load i8*, i8** %14, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i8*, i8** %14, align 8
  %35 = call i64 @TYPE_P(i8* %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br label %39

39:                                               ; preds = %37, %6
  %40 = phi i1 [ true, %6 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_8__* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @class_type, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @none_type, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i8* @cp_parser_class_name(%struct.TYPE_8__* %48, i32 %49, i32 %50, i32 %58, i32 %59, i32 0, i32 %60)
  store i8* %61, i8** %17, align 8
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %98, label %64

64:                                               ; preds = %57
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = call i32 @cp_parser_parse_definitely(%struct.TYPE_8__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %98, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %14, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CPP_NAME, align 4
  %82 = call i64 @cp_lexer_next_token_is_not(i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %68
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.TYPE_9__* @cp_lexer_peek_nth_token(i32 %87, i32 2)
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CPP_SCOPE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %84, %68
  %94 = load i8*, i8** @error_mark_node, align 8
  store i8* %94, i8** %7, align 8
  br label %100

95:                                               ; preds = %84
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = call i8* @cp_parser_namespace_name(%struct.TYPE_8__* %96)
  store i8* %97, i8** %17, align 8
  br label %98

98:                                               ; preds = %95, %64, %57
  %99 = load i8*, i8** %17, align 8
  store i8* %99, i8** %7, align 8
  br label %100

100:                                              ; preds = %98, %93
  %101 = load i8*, i8** %7, align 8
  ret i8* %101
}

declare dso_local i64 @TYPE_P(i8*) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_8__*) #1

declare dso_local i8* @cp_parser_class_name(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cp_parser_parse_definitely(%struct.TYPE_8__*) #1

declare dso_local i64 @cp_lexer_next_token_is_not(i32, i32) #1

declare dso_local %struct.TYPE_9__* @cp_lexer_peek_nth_token(i32, i32) #1

declare dso_local i8* @cp_parser_namespace_name(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

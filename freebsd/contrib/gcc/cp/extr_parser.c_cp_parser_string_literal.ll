; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_string_literal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_string_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.obstack = type { i32 }
%struct.TYPE_18__ = type { i8*, i8* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"expected string-literal\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@CPP_WSTRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"a wide string is invalid in this context\00", align 1
@parse_in = common dso_local global i32 0, align 4
@wchar_array_type_node = common dso_local global i32 0, align 4
@char_array_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32, i32)* @cp_parser_string_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_string_literal(%struct.TYPE_20__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.obstack, align 4
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_19__* @cp_lexer_peek_token(i32 %19)
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %15, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %22 = call i64 @cp_parser_is_string_literal(%struct.TYPE_19__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = call i32 @cp_parser_error(%struct.TYPE_20__* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @error_mark_node, align 4
  store i32 %27, i32* %4, align 4
  br label %149

28:                                               ; preds = %3
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_19__* @cp_lexer_peek_nth_token(i32 %31, i32 2)
  %33 = call i64 @cp_parser_is_string_literal(%struct.TYPE_19__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cp_lexer_consume_token(i32 %38)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @TREE_STRING_POINTER(i32 %43)
  %45 = inttoptr i64 %44 to i8*
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @TREE_STRING_LENGTH(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  store i64 1, i64* %10, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CPP_WSTRING, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %35
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %14, align 8
  br label %101

60:                                               ; preds = %28
  %61 = call i32 @gcc_obstack_init(%struct.obstack* %11)
  store i64 0, i64* %10, align 8
  br label %62

62:                                               ; preds = %94, %60
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cp_lexer_consume_token(i32 %65)
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @TREE_STRING_POINTER(i32 %72)
  %74 = inttoptr i64 %73 to i8*
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  store i8* %74, i8** %75, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @TREE_STRING_LENGTH(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  store i8* %80, i8** %81, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CPP_WSTRING, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %62
  store i32 1, i32* %9, align 4
  br label %88

88:                                               ; preds = %87, %62
  %89 = call i32 @obstack_grow(%struct.obstack* %11, %struct.TYPE_18__* %12, i32 16)
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.TYPE_19__* @cp_lexer_peek_token(i32 %92)
  store %struct.TYPE_19__* %93, %struct.TYPE_19__** %15, align 8
  br label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %96 = call i64 @cp_parser_is_string_literal(%struct.TYPE_19__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %62, label %98

98:                                               ; preds = %94
  %99 = call i64 @obstack_finish(%struct.obstack* %11)
  %100 = inttoptr i64 %99 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %100, %struct.TYPE_18__** %14, align 8
  br label %101

101:                                              ; preds = %98, %59
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %109 = call i32 @cp_parser_error(%struct.TYPE_20__* %108, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %107, %104, %101
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i64 (i32, %struct.TYPE_18__*, i64, %struct.TYPE_18__*, i32)* @cpp_interpret_string, i64 (i32, %struct.TYPE_18__*, i64, %struct.TYPE_18__*, i32)* @cpp_interpret_string_notranslate
  %115 = load i32, i32* @parse_in, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i64 %114(i32 %115, %struct.TYPE_18__* %116, i64 %117, %struct.TYPE_18__* %13, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @build_string(i8* %123, i8* %125)
  store i32 %126, i32* %8, align 4
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %121
  %133 = load i32, i32* @wchar_array_type_node, align 4
  br label %136

134:                                              ; preds = %121
  %135 = load i32, i32* @char_array_type_node, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @fix_string_type(i32 %138)
  store i32 %139, i32* %16, align 4
  br label %142

140:                                              ; preds = %110
  %141 = load i32, i32* @error_mark_node, align 4
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %140, %136
  %143 = load i64, i64* %10, align 8
  %144 = icmp ugt i64 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i32 @obstack_free(%struct.obstack* %11, i32 0)
  br label %147

147:                                              ; preds = %145, %142
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %147, %24
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_19__* @cp_lexer_peek_token(i32) #1

declare dso_local i64 @cp_parser_is_string_literal(%struct.TYPE_19__*) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_20__*, i8*) #1

declare dso_local %struct.TYPE_19__* @cp_lexer_peek_nth_token(i32, i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i64 @TREE_STRING_POINTER(i32) #1

declare dso_local i8* @TREE_STRING_LENGTH(i32) #1

declare dso_local i32 @gcc_obstack_init(%struct.obstack*) #1

declare dso_local i32 @obstack_grow(%struct.obstack*, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @obstack_finish(%struct.obstack*) #1

declare dso_local i64 @cpp_interpret_string(i32, %struct.TYPE_18__*, i64, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @cpp_interpret_string_notranslate(i32, %struct.TYPE_18__*, i64, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @build_string(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fix_string_type(i32) #1

declare dso_local i32 @obstack_free(%struct.obstack*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

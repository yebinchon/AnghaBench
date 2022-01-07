; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_method_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_method_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_parm = type { i32 }
%struct.TYPE_2__ = type { i32* }

@NULL_TREE = common dso_local global i64 0, align 8
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@CPP_COLON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<:%>\00", align 1
@RID_ATTRIBUTE = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"expected identifier\00", align 1
@error_mark_node = common dso_local global i32* null, align 8
@objc_method_attributes = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i32 0, align 4
@CPP_COMMA = common dso_local global i32 0, align 4
@CPP_ELLIPSIS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"method attributes must be specified at the end only\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"objective-c method declaration is expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @c_parser_objc_method_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @c_parser_objc_method_decl(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.c_parm*, align 8
  store i32* %0, i32** %3, align 8
  %15 = load i64, i64* @NULL_TREE, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %4, align 8
  %17 = load i64, i64* @NULL_TREE, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %21 = call i64 @c_parser_next_token_is(i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @c_parser_consume_token(i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @c_parser_objc_type_name(i32* %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %30 = call i32 @c_parser_skip_until_found(i32* %28, i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %23, %1
  %32 = load i32*, i32** %3, align 8
  %33 = call i32* @c_parser_objc_selector(i32* %32)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @CPP_COLON, align 4
  %39 = call i64 @c_parser_next_token_is(i32* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %167

41:                                               ; preds = %36, %31
  %42 = load i32*, i32** %5, align 8
  store i32* %42, i32** %8, align 8
  %43 = load i64, i64* @NULL_TREE, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %9, align 8
  br label %45

45:                                               ; preds = %41, %111
  %46 = load i64, i64* @NULL_TREE, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %10, align 8
  %48 = load i64, i64* @NULL_TREE, align 8
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @CPP_COLON, align 4
  %52 = call i32 @c_parser_require(i32* %50, i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %112

55:                                               ; preds = %45
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %58 = call i64 @c_parser_next_token_is(i32* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @c_parser_consume_token(i32* %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32* @c_parser_objc_type_name(i32* %63)
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %67 = call i32 @c_parser_skip_until_found(i32* %65, i32 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %60, %55
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @RID_ATTRIBUTE, align 4
  %71 = call i64 @c_parser_next_token_is_keyword(i32* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32*, i32** %3, align 8
  %75 = call i64 @c_parser_attributes(i32* %74)
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %10, align 8
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* @CPP_NAME, align 4
  %80 = call i64 @c_parser_next_token_is_not(i32* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @c_parser_error(i32* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32*, i32** @error_mark_node, align 8
  store i32* %85, i32** %2, align 8
  br label %194

86:                                               ; preds = %77
  %87 = load i32*, i32** %3, align 8
  %88 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %12, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @c_parser_consume_token(i32* %91)
  %93 = load i32*, i32** %8, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = call i32* @objc_build_keyword_decl(i32* %93, i32* %94, i32* %95, i32* %96)
  store i32* %97, i32** %13, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = call i32* @chainon(i32* %98, i32* %99)
  store i32* %100, i32** %9, align 8
  %101 = load i32*, i32** %3, align 8
  %102 = call i32* @c_parser_objc_selector(i32* %101)
  store i32* %102, i32** %8, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %86
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* @CPP_COLON, align 4
  %108 = call i64 @c_parser_next_token_is_not(i32* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %112

111:                                              ; preds = %105, %86
  br label %45

112:                                              ; preds = %110, %54
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* @RID_ATTRIBUTE, align 4
  %115 = call i64 @c_parser_next_token_is_keyword(i32* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32*, i32** %3, align 8
  %119 = call i64 @c_parser_attributes(i32* %118)
  store i64 %119, i64* @objc_method_attributes, align 8
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i32, i32* @TREE_LIST, align 4
  %122 = call i32* @make_node(i32 %121)
  store i32* %122, i32** %6, align 8
  br label %123

123:                                              ; preds = %158, %120
  %124 = load i32*, i32** %3, align 8
  %125 = load i32, i32* @CPP_COMMA, align 4
  %126 = call i64 @c_parser_next_token_is(i32* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %165

128:                                              ; preds = %123
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @c_parser_consume_token(i32* %129)
  %131 = load i32*, i32** %3, align 8
  %132 = load i32, i32* @CPP_ELLIPSIS, align 4
  %133 = call i64 @c_parser_next_token_is(i32* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %128
  store i32 1, i32* %7, align 4
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @c_parser_consume_token(i32* %136)
  %138 = load i64, i64* @objc_method_attributes, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %135
  %143 = load i32*, i32** %3, align 8
  %144 = load i32, i32* @RID_ATTRIBUTE, align 4
  %145 = call i64 @c_parser_next_token_is_keyword(i32* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32*, i32** %3, align 8
  %149 = call i64 @c_parser_attributes(i32* %148)
  store i64 %149, i64* @objc_method_attributes, align 8
  br label %150

150:                                              ; preds = %147, %142
  br label %165

151:                                              ; preds = %128
  %152 = load i32*, i32** %3, align 8
  %153 = load i64, i64* @NULL_TREE, align 8
  %154 = call %struct.c_parm* @c_parser_parameter_declaration(i32* %152, i64 %153)
  store %struct.c_parm* %154, %struct.c_parm** %14, align 8
  %155 = load %struct.c_parm*, %struct.c_parm** %14, align 8
  %156 = icmp eq %struct.c_parm* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %165

158:                                              ; preds = %151
  %159 = load i32*, i32** %6, align 8
  %160 = load i64, i64* @NULL_TREE, align 8
  %161 = load %struct.c_parm*, %struct.c_parm** %14, align 8
  %162 = call i32 @grokparm(%struct.c_parm* %161)
  %163 = call i32* @build_tree_list(i64 %160, i32 %162)
  %164 = call i32* @chainon(i32* %159, i32* %163)
  store i32* %164, i32** %6, align 8
  br label %123

165:                                              ; preds = %157, %150, %123
  %166 = load i32*, i32** %9, align 8
  store i32* %166, i32** %5, align 8
  br label %181

167:                                              ; preds = %36
  %168 = load i64, i64* @objc_method_attributes, align 8
  %169 = load i64, i64* @NULL_TREE, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @gcc_assert(i32 %171)
  %173 = load i32*, i32** %3, align 8
  %174 = load i32, i32* @RID_ATTRIBUTE, align 4
  %175 = call i64 @c_parser_next_token_is_keyword(i32* %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %167
  %178 = load i32*, i32** %3, align 8
  %179 = call i64 @c_parser_attributes(i32* %178)
  store i64 %179, i64* @objc_method_attributes, align 8
  br label %180

180:                                              ; preds = %177, %167
  br label %181

181:                                              ; preds = %180, %165
  %182 = load i32*, i32** %5, align 8
  %183 = icmp eq i32* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i32*, i32** %3, align 8
  %186 = call i32 @c_parser_error(i32* %185, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %187 = load i32*, i32** @error_mark_node, align 8
  store i32* %187, i32** %2, align 8
  br label %194

188:                                              ; preds = %181
  %189 = load i32*, i32** %4, align 8
  %190 = load i32*, i32** %5, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* %7, align 4
  %193 = call i32* @objc_build_method_signature(i32* %189, i32* %190, i32* %191, i32 %192)
  store i32* %193, i32** %2, align 8
  br label %194

194:                                              ; preds = %188, %184, %82
  %195 = load i32*, i32** %2, align 8
  ret i32* %195
}

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32* @c_parser_objc_type_name(i32*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local i32* @c_parser_objc_selector(i32*) #1

declare dso_local i32 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i64 @c_parser_attributes(i32*) #1

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32* @objc_build_keyword_decl(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @chainon(i32*, i32*) #1

declare dso_local i32* @make_node(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.c_parm* @c_parser_parameter_declaration(i32*, i64) #1

declare dso_local i32* @build_tree_list(i64, i32) #1

declare dso_local i32 @grokparm(%struct.c_parm*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32* @objc_build_method_signature(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

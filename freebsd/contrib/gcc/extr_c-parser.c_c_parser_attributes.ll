; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i64 }

@NULL_TREE = common dso_local global i32 0, align 4
@RID_ATTRIBUTE = common dso_local global i32 0, align 4
@c_lex_string_translate = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<(%>\00", align 1
@CPP_CLOSE_PAREN = common dso_local global i64 0, align 8
@CPP_COMMA = common dso_local global i64 0, align 8
@CPP_NAME = common dso_local global i64 0, align 8
@CPP_KEYWORD = common dso_local global i64 0, align 8
@C_ID_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @c_parser_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_parser_attributes(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @NULL_TREE, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %205, %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @RID_ATTRIBUTE, align 4
  %14 = call i64 @c_parser_next_token_is_keyword(i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %206

16:                                               ; preds = %11
  store i32 0, i32* @c_lex_string_translate, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @c_parser_consume_token(i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %21 = call i32 @c_parser_require(i32* %19, i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  store i32 1, i32* @c_lex_string_translate, align 4
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %208

25:                                               ; preds = %16
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %28 = call i32 @c_parser_require(i32* %26, i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  store i32 1, i32* @c_lex_string_translate, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %33 = call i32 @c_parser_skip_until_found(i32* %31, i64 %32, i8* null)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %208

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %175, %89, %58, %35
  %37 = load i32*, i32** %3, align 8
  %38 = load i64, i64* @CPP_COMMA, align 8
  %39 = call i64 @c_parser_next_token_is(i32* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** %3, align 8
  %43 = load i64, i64* @CPP_NAME, align 8
  %44 = call i64 @c_parser_next_token_is(i32* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32*, i32** %3, align 8
  %48 = load i64, i64* @CPP_KEYWORD, align 8
  %49 = call i64 @c_parser_next_token_is(i32* %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %46, %41, %36
  %52 = phi i1 [ true, %41 ], [ true, %36 ], [ %50, %46 ]
  br i1 %52, label %53, label %179

53:                                               ; preds = %51
  %54 = load i32*, i32** %3, align 8
  %55 = load i64, i64* @CPP_COMMA, align 8
  %56 = call i64 @c_parser_next_token_is(i32* %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @c_parser_consume_token(i32* %59)
  br label %36

61:                                               ; preds = %53
  %62 = load i32*, i32** %3, align 8
  %63 = load i64, i64* @CPP_KEYWORD, align 8
  %64 = call i64 @c_parser_next_token_is(i32* %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load i32*, i32** %3, align 8
  %68 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %72 [
    i32 133, label %71
    i32 130, label %71
    i32 138, label %71
    i32 147, label %71
    i32 142, label %71
    i32 137, label %71
    i32 131, label %71
    i32 135, label %71
    i32 140, label %71
    i32 128, label %71
    i32 134, label %71
    i32 151, label %71
    i32 136, label %71
    i32 148, label %71
    i32 132, label %71
    i32 139, label %71
    i32 149, label %71
    i32 141, label %71
    i32 143, label %71
    i32 129, label %71
    i32 145, label %71
    i32 144, label %71
    i32 146, label %71
    i32 150, label %71
  ]

71:                                               ; preds = %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66
  store i32 1, i32* %8, align 4
  br label %73

72:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  br label %179

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i32*, i32** %3, align 8
  %80 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %79)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %6, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @c_parser_consume_token(i32* %83)
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %87 = call i64 @c_parser_next_token_is_not(i32* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @NULL_TREE, align 4
  %92 = call i32 @build_tree_list(i32 %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @chainon(i32 %93, i32 %94)
  store i32 %95, i32* %4, align 4
  br label %36

96:                                               ; preds = %78
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @c_parser_consume_token(i32* %97)
  %99 = load i32*, i32** %3, align 8
  %100 = load i64, i64* @CPP_NAME, align 8
  %101 = call i64 @c_parser_next_token_is(i32* %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %148

103:                                              ; preds = %96
  %104 = load i32*, i32** %3, align 8
  %105 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %104)
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @C_ID_ID, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %148

110:                                              ; preds = %103
  %111 = load i32*, i32** %3, align 8
  %112 = call %struct.TYPE_4__* @c_parser_peek_2nd_token(i32* %111)
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CPP_COMMA, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %124, label %117

117:                                              ; preds = %110
  %118 = load i32*, i32** %3, align 8
  %119 = call %struct.TYPE_4__* @c_parser_peek_2nd_token(i32* %118)
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %148

124:                                              ; preds = %117, %110
  %125 = load i32*, i32** %3, align 8
  %126 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %125)
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %9, align 4
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @c_parser_consume_token(i32* %129)
  %131 = load i32*, i32** %3, align 8
  %132 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %133 = call i64 @c_parser_next_token_is(i32* %131, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %124
  %136 = load i32, i32* @NULL_TREE, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @build_tree_list(i32 %136, i32 %137)
  store i32 %138, i32* %7, align 4
  br label %147

139:                                              ; preds = %124
  %140 = load i32*, i32** %3, align 8
  %141 = call i32 @c_parser_consume_token(i32* %140)
  %142 = load i32, i32* @NULL_TREE, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @c_parser_expr_list(i32* %144, i32 0)
  %146 = call i32 @tree_cons(i32 %142, i32 %143, i32 %145)
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %139, %135
  br label %159

148:                                              ; preds = %117, %103, %96
  %149 = load i32*, i32** %3, align 8
  %150 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %151 = call i64 @c_parser_next_token_is(i32* %149, i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* @NULL_TREE, align 4
  store i32 %154, i32* %7, align 4
  br label %158

155:                                              ; preds = %148
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @c_parser_expr_list(i32* %156, i32 0)
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %155, %153
  br label %159

159:                                              ; preds = %158, %147
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @build_tree_list(i32 %160, i32 %161)
  store i32 %162, i32* %5, align 4
  %163 = load i32*, i32** %3, align 8
  %164 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %165 = call i64 @c_parser_next_token_is(i32* %163, i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 @c_parser_consume_token(i32* %168)
  br label %175

170:                                              ; preds = %159
  store i32 1, i32* @c_lex_string_translate, align 4
  %171 = load i32*, i32** %3, align 8
  %172 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %173 = call i32 @c_parser_skip_until_found(i32* %171, i64 %172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %174 = load i32, i32* %4, align 4
  store i32 %174, i32* %2, align 4
  br label %208

175:                                              ; preds = %167
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @chainon(i32 %176, i32 %177)
  store i32 %178, i32* %4, align 4
  br label %36

179:                                              ; preds = %76, %51
  %180 = load i32*, i32** %3, align 8
  %181 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %182 = call i64 @c_parser_next_token_is(i32* %180, i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i32*, i32** %3, align 8
  %186 = call i32 @c_parser_consume_token(i32* %185)
  br label %192

187:                                              ; preds = %179
  store i32 1, i32* @c_lex_string_translate, align 4
  %188 = load i32*, i32** %3, align 8
  %189 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %190 = call i32 @c_parser_skip_until_found(i32* %188, i64 %189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %191 = load i32, i32* %4, align 4
  store i32 %191, i32* %2, align 4
  br label %208

192:                                              ; preds = %184
  %193 = load i32*, i32** %3, align 8
  %194 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %195 = call i64 @c_parser_next_token_is(i32* %193, i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i32*, i32** %3, align 8
  %199 = call i32 @c_parser_consume_token(i32* %198)
  br label %205

200:                                              ; preds = %192
  store i32 1, i32* @c_lex_string_translate, align 4
  %201 = load i32*, i32** %3, align 8
  %202 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %203 = call i32 @c_parser_skip_until_found(i32* %201, i64 %202, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %204 = load i32, i32* %4, align 4
  store i32 %204, i32* %2, align 4
  br label %208

205:                                              ; preds = %197
  store i32 1, i32* @c_lex_string_translate, align 4
  br label %11

206:                                              ; preds = %11
  %207 = load i32, i32* %4, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %206, %200, %187, %170, %30, %23
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i64, i8*) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i64) #1

declare dso_local %struct.TYPE_3__* @c_parser_peek_token(i32*) #1

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @chainon(i32, i32) #1

declare dso_local %struct.TYPE_4__* @c_parser_peek_2nd_token(i32*) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @c_parser_expr_list(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

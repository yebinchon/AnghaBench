; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_unary_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_unary_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32 }

@CPP_KEYWORD = common dso_local global i64 0, align 8
@ALIGNOF_EXPR = common dso_local global i32 0, align 4
@SIZEOF_EXPR = common dso_local global i32 0, align 4
@pedantic = common dso_local global i32 0, align 4
@REALPART_EXPR = common dso_local global i32 0, align 4
@IMAGPART_EXPR = common dso_local global i32 0, align 4
@CPP_SCOPE = common dso_local global i32 0, align 4
@ERROR_MARK = common dso_local global i32 0, align 4
@CPP_PLUS_PLUS = common dso_local global i64 0, align 8
@CPP_MINUS_MINUS = common dso_local global i64 0, align 8
@CPP_AND_AND = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"`*'\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unary *\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"`&'\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`++'\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`--'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32, i32)* @cp_parser_unary_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_unary_expression(%struct.TYPE_20__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_19__* @cp_lexer_peek_token(i32 %23)
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %8, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CPP_KEYWORD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %94

30:                                               ; preds = %3
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %92 [
    i32 136, label %35
    i32 130, label %35
    i32 132, label %62
    i32 135, label %65
    i32 134, label %68
    i32 131, label %75
    i32 133, label %75
  ]

35:                                               ; preds = %30, %30
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 136
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @ALIGNOF_EXPR, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @SIZEOF_EXPR, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %12, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_19__* @cp_lexer_consume_token(i32 %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @cp_parser_sizeof_operand(%struct.TYPE_20__* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @TYPE_P(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @cxx_sizeof_or_alignof_type(i32 %55, i32 %56, i32 1)
  store i32 %57, i32* %4, align 4
  br label %215

58:                                               ; preds = %42
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @cxx_sizeof_or_alignof_expr(i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %215

62:                                               ; preds = %30
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %64 = call i32 @cp_parser_new_expression(%struct.TYPE_20__* %63)
  store i32 %64, i32* %4, align 4
  br label %215

65:                                               ; preds = %30
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = call i32 @cp_parser_delete_expression(%struct.TYPE_20__* %66)
  store i32 %67, i32* %4, align 4
  br label %215

68:                                               ; preds = %30
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = call i32 @cp_parser_extension_opt(%struct.TYPE_20__* %69, i32* %13)
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %72 = call i32 @cp_parser_simple_cast_expression(%struct.TYPE_20__* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* @pedantic, align 4
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %4, align 4
  br label %215

75:                                               ; preds = %30, %30
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.TYPE_19__* @cp_lexer_consume_token(i32 %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = call i32 @cp_parser_simple_cast_expression(%struct.TYPE_20__* %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 131
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @REALPART_EXPR, align 4
  br label %88

86:                                               ; preds = %75
  %87 = load i32, i32* @IMAGPART_EXPR, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @build_x_unary_op(i32 %89, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %215

92:                                               ; preds = %30
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93, %3
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CPP_SCOPE, align 4
  %99 = call i64 @cp_lexer_next_token_is(i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %94
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.TYPE_18__* @cp_lexer_peek_nth_token(i32 %104, i32 2)
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp eq i32 %108, 132
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %112 = call i32 @cp_parser_new_expression(%struct.TYPE_20__* %111)
  store i32 %112, i32* %4, align 4
  br label %215

113:                                              ; preds = %101
  %114 = load i32, i32* %16, align 4
  %115 = icmp eq i32 %114, 135
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %118 = call i32 @cp_parser_delete_expression(%struct.TYPE_20__* %117)
  store i32 %118, i32* %4, align 4
  br label %215

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120, %94
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %123 = call i32 @cp_parser_unary_operator(%struct.TYPE_19__* %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @ERROR_MARK, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %163

127:                                              ; preds = %121
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CPP_PLUS_PLUS, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 137, i32* %9, align 4
  br label %162

134:                                              ; preds = %127
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CPP_MINUS_MINUS, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i32 138, i32* %9, align 4
  br label %161

141:                                              ; preds = %134
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %143 = call i64 @cp_parser_allow_gnu_extensions_p(%struct.TYPE_20__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @CPP_AND_AND, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %145
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call %struct.TYPE_19__* @cp_lexer_consume_token(i32 %154)
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %157 = call i32 @cp_parser_identifier(%struct.TYPE_20__* %156)
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %17, align 4
  %159 = call i32 @finish_label_address_expr(i32 %158)
  store i32 %159, i32* %4, align 4
  br label %215

160:                                              ; preds = %145, %141
  br label %161

161:                                              ; preds = %160, %140
  br label %162

162:                                              ; preds = %161, %133
  br label %163

163:                                              ; preds = %162, %121
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @ERROR_MARK, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %210

167:                                              ; preds = %163
  %168 = load i32, i32* @error_mark_node, align 4
  store i32 %168, i32* %19, align 4
  store i8* null, i8** %20, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call %struct.TYPE_19__* @cp_lexer_consume_token(i32 %171)
  store %struct.TYPE_19__* %172, %struct.TYPE_19__** %8, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %174 = load i32, i32* %9, align 4
  %175 = icmp eq i32 %174, 142
  %176 = zext i1 %175 to i32
  %177 = call i32 @cp_parser_cast_expression(%struct.TYPE_20__* %173, i32 %176, i32 0)
  store i32 %177, i32* %18, align 4
  %178 = load i32, i32* %9, align 4
  switch i32 %178, label %196 [
    i32 140, label %179
    i32 142, label %182
    i32 141, label %183
    i32 137, label %187
    i32 138, label %187
    i32 128, label %192
    i32 139, label %192
    i32 129, label %192
  ]

179:                                              ; preds = %167
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %180 = load i32, i32* %18, align 4
  %181 = call i32 @build_x_indirect_ref(i32 %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %181, i32* %19, align 4
  br label %198

182:                                              ; preds = %167
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 8
  br label %183

183:                                              ; preds = %167, %182
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %18, align 4
  %186 = call i32 @build_x_unary_op(i32 %184, i32 %185)
  store i32 %186, i32* %19, align 4
  br label %198

187:                                              ; preds = %167, %167
  %188 = load i32, i32* %9, align 4
  %189 = icmp eq i32 %188, 137
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  store i8* %191, i8** %20, align 8
  br label %192

192:                                              ; preds = %167, %167, %167, %187
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %18, align 4
  %195 = call i32 @finish_unary_op_expr(i32 %193, i32 %194)
  store i32 %195, i32* %19, align 4
  br label %198

196:                                              ; preds = %167
  %197 = call i32 (...) @gcc_unreachable()
  br label %198

198:                                              ; preds = %196, %192, %183, %179
  %199 = load i8*, i8** %20, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %203 = load i8*, i8** %20, align 8
  %204 = call i64 @cp_parser_non_integral_constant_expression(%struct.TYPE_20__* %202, i8* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load i32, i32* @error_mark_node, align 4
  store i32 %207, i32* %19, align 4
  br label %208

208:                                              ; preds = %206, %201, %198
  %209 = load i32, i32* %19, align 4
  store i32 %209, i32* %4, align 4
  br label %215

210:                                              ; preds = %163
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @cp_parser_postfix_expression(%struct.TYPE_20__* %211, i32 %212, i32 %213)
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %210, %208, %151, %116, %110, %88, %68, %65, %62, %58, %54
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local %struct.TYPE_19__* @cp_lexer_peek_token(i32) #1

declare dso_local %struct.TYPE_19__* @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_sizeof_operand(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @TYPE_P(i32) #1

declare dso_local i32 @cxx_sizeof_or_alignof_type(i32, i32, i32) #1

declare dso_local i32 @cxx_sizeof_or_alignof_expr(i32, i32) #1

declare dso_local i32 @cp_parser_new_expression(%struct.TYPE_20__*) #1

declare dso_local i32 @cp_parser_delete_expression(%struct.TYPE_20__*) #1

declare dso_local i32 @cp_parser_extension_opt(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @cp_parser_simple_cast_expression(%struct.TYPE_20__*) #1

declare dso_local i32 @build_x_unary_op(i32, i32) #1

declare dso_local i64 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local %struct.TYPE_18__* @cp_lexer_peek_nth_token(i32, i32) #1

declare dso_local i32 @cp_parser_unary_operator(%struct.TYPE_19__*) #1

declare dso_local i64 @cp_parser_allow_gnu_extensions_p(%struct.TYPE_20__*) #1

declare dso_local i32 @cp_parser_identifier(%struct.TYPE_20__*) #1

declare dso_local i32 @finish_label_address_expr(i32) #1

declare dso_local i32 @cp_parser_cast_expression(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @build_x_indirect_ref(i32, i8*) #1

declare dso_local i32 @finish_unary_op_expr(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @cp_parser_non_integral_constant_expression(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @cp_parser_postfix_expression(%struct.TYPE_20__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

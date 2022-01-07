; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_operator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@RID_NEW = common dso_local global i32 0, align 4
@NEW_EXPR = common dso_local global i32 0, align 4
@RID_DELETE = common dso_local global i32 0, align 4
@DELETE_EXPR = common dso_local global i32 0, align 4
@CPP_CLOSE_SQUARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"`]'\00", align 1
@VEC_NEW_EXPR = common dso_local global i32 0, align 4
@VEC_DELETE_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@TRUNC_DIV_EXPR = common dso_local global i32 0, align 4
@TRUNC_MOD_EXPR = common dso_local global i32 0, align 4
@BIT_XOR_EXPR = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@BIT_IOR_EXPR = common dso_local global i32 0, align 4
@BIT_NOT_EXPR = common dso_local global i32 0, align 4
@TRUTH_NOT_EXPR = common dso_local global i32 0, align 4
@NOP_EXPR = common dso_local global i32 0, align 4
@LT_EXPR = common dso_local global i32 0, align 4
@GT_EXPR = common dso_local global i32 0, align 4
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@NE_EXPR = common dso_local global i32 0, align 4
@LE_EXPR = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@TRUTH_ANDIF_EXPR = common dso_local global i32 0, align 4
@TRUTH_ORIF_EXPR = common dso_local global i32 0, align 4
@POSTINCREMENT_EXPR = common dso_local global i32 0, align 4
@PREDECREMENT_EXPR = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i32 0, align 4
@MEMBER_REF = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"`)'\00", align 1
@CALL_EXPR = common dso_local global i32 0, align 4
@ARRAY_REF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"expected operator\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @cp_parser_operator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_operator(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load i64, i64* @NULL_TREE, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_7__* @cp_lexer_peek_token(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %197 [
    i32 153, label %15
    i32 134, label %69
    i32 148, label %72
    i32 143, label %75
    i32 159, label %78
    i32 145, label %81
    i32 129, label %84
    i32 166, label %87
    i32 137, label %90
    i32 162, label %93
    i32 141, label %96
    i32 157, label %99
    i32 152, label %102
    i32 155, label %105
    i32 133, label %108
    i32 147, label %111
    i32 142, label %114
    i32 158, label %117
    i32 144, label %120
    i32 128, label %123
    i32 164, label %126
    i32 136, label %129
    i32 150, label %132
    i32 131, label %135
    i32 149, label %138
    i32 130, label %141
    i32 156, label %144
    i32 140, label %147
    i32 151, label %150
    i32 154, label %153
    i32 165, label %156
    i32 135, label %159
    i32 132, label %162
    i32 146, label %165
    i32 163, label %168
    i32 160, label %171
    i32 161, label %174
    i32 139, label %177
    i32 138, label %187
  ]

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RID_NEW, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @NEW_EXPR, align 4
  store i32 %22, i32* %6, align 4
  br label %33

23:                                               ; preds = %15
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RID_DELETE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @DELETE_EXPR, align 4
  store i32 %30, i32* %6, align 4
  br label %32

31:                                               ; preds = %23
  br label %198

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cp_lexer_consume_token(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_7__* @cp_lexer_peek_token(i32 %40)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %5, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 138
  br i1 %45, label %46, label %64

46:                                               ; preds = %33
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cp_lexer_consume_token(i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = load i32, i32* @CPP_CLOSE_SQUARE, align 4
  %53 = call i32 @cp_parser_require(%struct.TYPE_8__* %51, i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @NEW_EXPR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @VEC_NEW_EXPR, align 4
  br label %61

59:                                               ; preds = %46
  %60 = load i32, i32* @VEC_DELETE_EXPR, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = call i64 @ansi_opname(i32 %62)
  store i64 %63, i64* %4, align 8
  br label %67

64:                                               ; preds = %33
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @ansi_opname(i32 %65)
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i64, i64* %4, align 8
  store i64 %68, i64* %2, align 8
  br label %212

69:                                               ; preds = %1
  %70 = load i32, i32* @PLUS_EXPR, align 4
  %71 = call i64 @ansi_opname(i32 %70)
  store i64 %71, i64* %4, align 8
  br label %198

72:                                               ; preds = %1
  %73 = load i32, i32* @MINUS_EXPR, align 4
  %74 = call i64 @ansi_opname(i32 %73)
  store i64 %74, i64* %4, align 8
  br label %198

75:                                               ; preds = %1
  %76 = load i32, i32* @MULT_EXPR, align 4
  %77 = call i64 @ansi_opname(i32 %76)
  store i64 %77, i64* %4, align 8
  br label %198

78:                                               ; preds = %1
  %79 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  %80 = call i64 @ansi_opname(i32 %79)
  store i64 %80, i64* %4, align 8
  br label %198

81:                                               ; preds = %1
  %82 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %83 = call i64 @ansi_opname(i32 %82)
  store i64 %83, i64* %4, align 8
  br label %198

84:                                               ; preds = %1
  %85 = load i32, i32* @BIT_XOR_EXPR, align 4
  %86 = call i64 @ansi_opname(i32 %85)
  store i64 %86, i64* %4, align 8
  br label %198

87:                                               ; preds = %1
  %88 = load i32, i32* @BIT_AND_EXPR, align 4
  %89 = call i64 @ansi_opname(i32 %88)
  store i64 %89, i64* %4, align 8
  br label %198

90:                                               ; preds = %1
  %91 = load i32, i32* @BIT_IOR_EXPR, align 4
  %92 = call i64 @ansi_opname(i32 %91)
  store i64 %92, i64* %4, align 8
  br label %198

93:                                               ; preds = %1
  %94 = load i32, i32* @BIT_NOT_EXPR, align 4
  %95 = call i64 @ansi_opname(i32 %94)
  store i64 %95, i64* %4, align 8
  br label %198

96:                                               ; preds = %1
  %97 = load i32, i32* @TRUTH_NOT_EXPR, align 4
  %98 = call i64 @ansi_opname(i32 %97)
  store i64 %98, i64* %4, align 8
  br label %198

99:                                               ; preds = %1
  %100 = load i32, i32* @NOP_EXPR, align 4
  %101 = call i64 @ansi_assopname(i32 %100)
  store i64 %101, i64* %4, align 8
  br label %198

102:                                              ; preds = %1
  %103 = load i32, i32* @LT_EXPR, align 4
  %104 = call i64 @ansi_opname(i32 %103)
  store i64 %104, i64* %4, align 8
  br label %198

105:                                              ; preds = %1
  %106 = load i32, i32* @GT_EXPR, align 4
  %107 = call i64 @ansi_opname(i32 %106)
  store i64 %107, i64* %4, align 8
  br label %198

108:                                              ; preds = %1
  %109 = load i32, i32* @PLUS_EXPR, align 4
  %110 = call i64 @ansi_assopname(i32 %109)
  store i64 %110, i64* %4, align 8
  br label %198

111:                                              ; preds = %1
  %112 = load i32, i32* @MINUS_EXPR, align 4
  %113 = call i64 @ansi_assopname(i32 %112)
  store i64 %113, i64* %4, align 8
  br label %198

114:                                              ; preds = %1
  %115 = load i32, i32* @MULT_EXPR, align 4
  %116 = call i64 @ansi_assopname(i32 %115)
  store i64 %116, i64* %4, align 8
  br label %198

117:                                              ; preds = %1
  %118 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  %119 = call i64 @ansi_assopname(i32 %118)
  store i64 %119, i64* %4, align 8
  br label %198

120:                                              ; preds = %1
  %121 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %122 = call i64 @ansi_assopname(i32 %121)
  store i64 %122, i64* %4, align 8
  br label %198

123:                                              ; preds = %1
  %124 = load i32, i32* @BIT_XOR_EXPR, align 4
  %125 = call i64 @ansi_assopname(i32 %124)
  store i64 %125, i64* %4, align 8
  br label %198

126:                                              ; preds = %1
  %127 = load i32, i32* @BIT_AND_EXPR, align 4
  %128 = call i64 @ansi_assopname(i32 %127)
  store i64 %128, i64* %4, align 8
  br label %198

129:                                              ; preds = %1
  %130 = load i32, i32* @BIT_IOR_EXPR, align 4
  %131 = call i64 @ansi_assopname(i32 %130)
  store i64 %131, i64* %4, align 8
  br label %198

132:                                              ; preds = %1
  %133 = load i32, i32* @LSHIFT_EXPR, align 4
  %134 = call i64 @ansi_opname(i32 %133)
  store i64 %134, i64* %4, align 8
  br label %198

135:                                              ; preds = %1
  %136 = load i32, i32* @RSHIFT_EXPR, align 4
  %137 = call i64 @ansi_opname(i32 %136)
  store i64 %137, i64* %4, align 8
  br label %198

138:                                              ; preds = %1
  %139 = load i32, i32* @LSHIFT_EXPR, align 4
  %140 = call i64 @ansi_assopname(i32 %139)
  store i64 %140, i64* %4, align 8
  br label %198

141:                                              ; preds = %1
  %142 = load i32, i32* @RSHIFT_EXPR, align 4
  %143 = call i64 @ansi_assopname(i32 %142)
  store i64 %143, i64* %4, align 8
  br label %198

144:                                              ; preds = %1
  %145 = load i32, i32* @EQ_EXPR, align 4
  %146 = call i64 @ansi_opname(i32 %145)
  store i64 %146, i64* %4, align 8
  br label %198

147:                                              ; preds = %1
  %148 = load i32, i32* @NE_EXPR, align 4
  %149 = call i64 @ansi_opname(i32 %148)
  store i64 %149, i64* %4, align 8
  br label %198

150:                                              ; preds = %1
  %151 = load i32, i32* @LE_EXPR, align 4
  %152 = call i64 @ansi_opname(i32 %151)
  store i64 %152, i64* %4, align 8
  br label %198

153:                                              ; preds = %1
  %154 = load i32, i32* @GE_EXPR, align 4
  %155 = call i64 @ansi_opname(i32 %154)
  store i64 %155, i64* %4, align 8
  br label %198

156:                                              ; preds = %1
  %157 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %158 = call i64 @ansi_opname(i32 %157)
  store i64 %158, i64* %4, align 8
  br label %198

159:                                              ; preds = %1
  %160 = load i32, i32* @TRUTH_ORIF_EXPR, align 4
  %161 = call i64 @ansi_opname(i32 %160)
  store i64 %161, i64* %4, align 8
  br label %198

162:                                              ; preds = %1
  %163 = load i32, i32* @POSTINCREMENT_EXPR, align 4
  %164 = call i64 @ansi_opname(i32 %163)
  store i64 %164, i64* %4, align 8
  br label %198

165:                                              ; preds = %1
  %166 = load i32, i32* @PREDECREMENT_EXPR, align 4
  %167 = call i64 @ansi_opname(i32 %166)
  store i64 %167, i64* %4, align 8
  br label %198

168:                                              ; preds = %1
  %169 = load i32, i32* @COMPOUND_EXPR, align 4
  %170 = call i64 @ansi_opname(i32 %169)
  store i64 %170, i64* %4, align 8
  br label %198

171:                                              ; preds = %1
  %172 = load i32, i32* @MEMBER_REF, align 4
  %173 = call i64 @ansi_opname(i32 %172)
  store i64 %173, i64* %4, align 8
  br label %198

174:                                              ; preds = %1
  %175 = load i32, i32* @COMPONENT_REF, align 4
  %176 = call i64 @ansi_opname(i32 %175)
  store i64 %176, i64* %4, align 8
  br label %198

177:                                              ; preds = %1
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @cp_lexer_consume_token(i32 %180)
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %183 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %184 = call i32 @cp_parser_require(%struct.TYPE_8__* %182, i32 %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %185 = load i32, i32* @CALL_EXPR, align 4
  %186 = call i64 @ansi_opname(i32 %185)
  store i64 %186, i64* %2, align 8
  br label %212

187:                                              ; preds = %1
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @cp_lexer_consume_token(i32 %190)
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %193 = load i32, i32* @CPP_CLOSE_SQUARE, align 4
  %194 = call i32 @cp_parser_require(%struct.TYPE_8__* %192, i32 %193, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %195 = load i32, i32* @ARRAY_REF, align 4
  %196 = call i64 @ansi_opname(i32 %195)
  store i64 %196, i64* %2, align 8
  br label %212

197:                                              ; preds = %1
  br label %198

198:                                              ; preds = %197, %174, %171, %168, %165, %162, %159, %156, %153, %150, %147, %144, %141, %138, %135, %132, %129, %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %31
  %199 = load i64, i64* %4, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @cp_lexer_consume_token(i32 %204)
  br label %210

206:                                              ; preds = %198
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %208 = call i32 @cp_parser_error(%struct.TYPE_8__* %207, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %209 = load i64, i64* @error_mark_node, align 8
  store i64 %209, i64* %4, align 8
  br label %210

210:                                              ; preds = %206, %201
  %211 = load i64, i64* %4, align 8
  store i64 %211, i64* %2, align 8
  br label %212

212:                                              ; preds = %210, %187, %177, %67
  %213 = load i64, i64* %2, align 8
  ret i64 %213
}

declare dso_local %struct.TYPE_7__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i64 @ansi_opname(i32) #1

declare dso_local i64 @ansi_assopname(i32) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

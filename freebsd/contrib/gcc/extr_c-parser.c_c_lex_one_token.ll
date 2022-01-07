; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_lex_one_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_lex_one_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32, i32, i32 }

@TV_LEX = common dso_local global i32 0, align 4
@C_ID_NONE = common dso_local global i32 0, align 4
@RID_MAX = common dso_local global i32 0, align 4
@PRAGMA_NONE = common dso_local global i32 0, align 4
@in_system_header = common dso_local global i32 0, align 4
@objc_need_raw_identifier = common dso_local global i32 0, align 4
@objc_pq_context = common dso_local global i32 0, align 4
@ridpointers = common dso_local global i8** null, align 8
@CPP_KEYWORD = common dso_local global i8* null, align 8
@objc_foreach_context = common dso_local global i32 0, align 4
@RID_IN = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@CPP_MULT = common dso_local global i32 0, align 4
@CPP_PLUS = common dso_local global i32 0, align 4
@CPP_PLUS_PLUS = common dso_local global i32 0, align 4
@CPP_MINUS = common dso_local global i32 0, align 4
@CPP_MINUS_MINUS = common dso_local global i32 0, align 4
@CPP_OPEN_SQUARE = common dso_local global i32 0, align 4
@TYPE_DECL = common dso_local global i32 0, align 4
@C_ID_TYPENAME = common dso_local global i32 0, align 4
@C_ID_CLASSNAME = common dso_local global i32 0, align 4
@C_ID_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*)* @c_lex_one_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_lex_one_token(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @TV_LEX, align 4
  %11 = call i32 @timevar_push(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  %16 = call i32 @c_lex_with_flags(i32** %13, i32* %15, i32* null)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @C_ID_NONE, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @RID_MAX, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @PRAGMA_NONE, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @in_system_header, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %233 [
    i32 130, label %34
    i32 134, label %210
    i32 132, label %222
    i32 131, label %222
    i32 133, label %222
    i32 128, label %222
    i32 129, label %224
  ]

34:                                               ; preds = %2
  %35 = load i32, i32* @objc_need_raw_identifier, align 4
  store i32 %35, i32* %6, align 4
  %36 = call i32 @OBJC_NEED_RAW_IDENTIFIER(i32 0)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @C_IS_RESERVED_WORD(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %161

42:                                               ; preds = %34
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i8* @C_RID_CODE(i32* %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %7, align 4
  %48 = call i32 (...) @c_dialect_objc()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %144

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @OBJC_IS_AT_KEYWORD(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @OBJC_IS_PQ_KEYWORD(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @objc_pq_context, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %58, %54
  %62 = load i8**, i8*** @ridpointers, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  %70 = load i8*, i8** @CPP_KEYWORD, align 8
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %234

77:                                               ; preds = %58, %50
  %78 = load i32, i32* @objc_foreach_context, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %142

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @RID_IN, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %142

84:                                               ; preds = %80
  %85 = load i32*, i32** %4, align 8
  %86 = call %struct.TYPE_4__* @c_parser_peek_2nd_token(i32* %85)
  store %struct.TYPE_4__* %86, %struct.TYPE_4__** %8, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 130
  br i1 %90, label %133, label %91

91:                                               ; preds = %84
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %133, label %97

97:                                               ; preds = %91
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CPP_MULT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %133, label %103

103:                                              ; preds = %97
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CPP_PLUS, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %133, label %109

109:                                              ; preds = %103
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CPP_PLUS_PLUS, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %133, label %115

115:                                              ; preds = %109
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CPP_MINUS, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %133, label %121

121:                                              ; preds = %115
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @CPP_MINUS_MINUS, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @CPP_OPEN_SQUARE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %127, %121, %115, %109, %103, %97, %91, %84
  %134 = load i8*, i8** @CPP_KEYWORD, align 8
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  br label %234

141:                                              ; preds = %127
  br label %142

142:                                              ; preds = %141, %80, %77
  br label %143

143:                                              ; preds = %142
  br label %160

144:                                              ; preds = %42
  %145 = load i8**, i8*** @ridpointers, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  store i32* %150, i32** %152, align 8
  %153 = load i8*, i8** @CPP_KEYWORD, align 8
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  br label %234

160:                                              ; preds = %143
  br label %161

161:                                              ; preds = %160, %34
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = call i32* @lookup_name(i32* %164)
  store i32* %165, i32** %5, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %178

168:                                              ; preds = %161
  %169 = load i32*, i32** %5, align 8
  %170 = call i32 @TREE_CODE(i32* %169)
  %171 = load i32, i32* @TYPE_DECL, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* @C_ID_TYPENAME, align 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  br label %234

177:                                              ; preds = %168
  br label %206

178:                                              ; preds = %161
  %179 = call i32 (...) @c_dialect_objc()
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %205

181:                                              ; preds = %178
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = call i32* @objc_is_class_name(i32* %184)
  store i32* %185, i32** %9, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %204

188:                                              ; preds = %181
  %189 = call i32 (...) @global_bindings_p()
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %204, label %194

194:                                              ; preds = %191
  %195 = load i32*, i32** %5, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %204, label %197

197:                                              ; preds = %194, %188
  %198 = load i32*, i32** %9, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  store i32* %198, i32** %200, align 8
  %201 = load i32, i32* @C_ID_CLASSNAME, align 4
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 4
  br label %234

204:                                              ; preds = %194, %191, %181
  br label %205

205:                                              ; preds = %204, %178
  br label %206

206:                                              ; preds = %205, %177
  %207 = load i32, i32* @C_ID_ID, align 4
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 4
  br label %234

210:                                              ; preds = %2
  %211 = load i8*, i8** @CPP_KEYWORD, align 8
  %212 = ptrtoint i8* %211 to i32
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = call i8* @C_RID_CODE(i32* %217)
  %219 = ptrtoint i8* %218 to i32
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  br label %234

222:                                              ; preds = %2, %2, %2, %2
  %223 = call i32 @OBJC_NEED_RAW_IDENTIFIER(i32 0)
  br label %234

224:                                              ; preds = %2
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @TREE_INT_CST_LOW(i32* %227)
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 8
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 2
  store i32* null, i32** %232, align 8
  br label %234

233:                                              ; preds = %2
  br label %234

234:                                              ; preds = %233, %224, %222, %210, %206, %197, %173, %144, %133, %61
  %235 = load i32, i32* @TV_LEX, align 4
  %236 = call i32 @timevar_pop(i32 %235)
  ret void
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @c_lex_with_flags(i32**, i32*, i32*) #1

declare dso_local i32 @OBJC_NEED_RAW_IDENTIFIER(i32) #1

declare dso_local i32 @C_IS_RESERVED_WORD(i32*) #1

declare dso_local i8* @C_RID_CODE(i32*) #1

declare dso_local i32 @c_dialect_objc(...) #1

declare dso_local i32 @OBJC_IS_AT_KEYWORD(i32) #1

declare dso_local i32 @OBJC_IS_PQ_KEYWORD(i32) #1

declare dso_local %struct.TYPE_4__* @c_parser_peek_2nd_token(i32*) #1

declare dso_local i32* @lookup_name(i32*) #1

declare dso_local i32 @TREE_CODE(i32*) #1

declare dso_local i32* @objc_is_class_name(i32*) #1

declare dso_local i32 @global_bindings_p(...) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32*) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

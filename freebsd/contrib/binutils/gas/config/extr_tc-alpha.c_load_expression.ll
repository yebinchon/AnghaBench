; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_load_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_load_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32, i32* }
%struct.alpha_insn = type { i32, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i8* }
%struct.TYPE_14__ = type { i32 }

@alpha_gp_register = common dso_local global i32 0, align 4
@AXP_REG_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"addq\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lda\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"bignum invalid; zero assumed\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"floating point number invalid; zero assumed\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"can't handle expression\00", align 1
@next_sequence_num = common dso_local global i32 0, align 4
@alpha_lit8_section = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c".lit8\00", align 1
@alpha_lit8_symbol = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"overflow in literal (.lit8) table\00", align 1
@alpha_noat_on = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [49 x i8] c"macro requires $at register while noat in effect\00", align 1
@AXP_REG_AT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"macro requires $at while $at in use\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ldq\00", align 1
@MAX_INSN_FIXUPS = common dso_local global i32 0, align 4
@DUMMY_RELOC_LITUSE_BASE = common dso_local global i8* null, align 8
@O_absent = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"ldah\00", align 1
@BFD_RELOC_ALPHA_ELF_LITERAL = common dso_local global i8* null, align 8
@BFD_RELOC_ALPHA_LITERAL = common dso_local global i8* null, align 8
@absolute_section = common dso_local global i32 0, align 4
@alpha_evax_proc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@alpha_lit8_literal = common dso_local global i32 0, align 4
@alpha_lita_section = common dso_local global i32* null, align 8
@alpha_lita_symbol = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_16__*, i32*, %struct.TYPE_16__*)* @load_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_expression(i32 %0, %struct.TYPE_16__* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.alpha_insn, align 8
  %14 = alloca [3 x %struct.TYPE_16__], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  store i64 0, i64* %10, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %106 [
    i32 128, label %29
    i32 130, label %59
    i32 129, label %60
    i32 131, label %94
  ]

29:                                               ; preds = %4
  %30 = call i32 @emit_insn(%struct.alpha_insn* %13)
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @alpha_gp_register, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @AXP_REG_ZERO, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 1
  %40 = load i32, i32* %12, align 4
  %41 = bitcast %struct.TYPE_16__* %39 to { i64, i32* }*
  %42 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 16
  %44 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %41, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @set_tok_reg(i64 %43, i32* %45, i32 %40)
  %47 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 2
  %48 = load i32, i32* %6, align 4
  %49 = bitcast %struct.TYPE_16__* %47 to { i64, i32* }*
  %50 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 16
  %52 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %49, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @set_tok_reg(i64 %51, i32* %53, i32 %48)
  %55 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %56 = call i32 @assemble_tokens(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %55, i32 3, i32 0)
  br label %57

57:                                               ; preds = %38, %34, %29
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %12, align 4
  br label %109

59:                                               ; preds = %4
  br label %109

60:                                               ; preds = %4
  %61 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %62 = load i32, i32* %6, align 4
  %63 = bitcast %struct.TYPE_16__* %61 to { i64, i32* }*
  %64 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 16
  %66 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %63, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @set_tok_reg(i64 %65, i32* %67, i32 %62)
  %69 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 1
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %71 = bitcast %struct.TYPE_16__* %69 to i8*
  %72 = bitcast %struct.TYPE_16__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %71, i8* align 8 %72, i64 16, i1 false)
  %73 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 2
  %74 = load i32, i32* %12, align 4
  %75 = bitcast %struct.TYPE_16__* %73 to { i64, i32* }*
  %76 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 16
  %78 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %75, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @set_tok_preg(i64 %77, i32* %79, i32 %74)
  %81 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %82 = call i32 @assemble_tokens(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %81, i32 3, i32 0)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %84 = icmp ne %struct.TYPE_16__* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %60
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = bitcast %struct.TYPE_16__* %86 to { i64, i32* }*
  %88 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %87, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @set_tok_const(i64 %89, i32* %91, i32 0)
  br label %93

93:                                               ; preds = %85, %60
  store i64 0, i64* %5, align 8
  br label %394

94:                                               ; preds = %4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %101 = call i32 @as_bad(i32 %100)
  br label %105

102:                                              ; preds = %94
  %103 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %104 = call i32 @as_bad(i32 %103)
  br label %105

105:                                              ; preds = %102, %99
  store i32 0, i32* %11, align 4
  br label %109

106:                                              ; preds = %4
  %107 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %108 = call i32 @as_bad(i32 %107)
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %106, %105, %59, %57
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @range_signed_32(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %270, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @next_sequence_num, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* @next_sequence_num, align 4
  %116 = sext i32 %114 to i64
  store i64 %116, i64* %16, align 8
  %117 = load i32*, i32** @alpha_lit8_section, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = call i32 @create_literal_section(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32** @alpha_lit8_section, i32** @alpha_lit8_symbol)
  br label %121

121:                                              ; preds = %119, %113
  %122 = load i32, i32* %11, align 4
  %123 = load i32*, i32** @alpha_lit8_section, align 8
  %124 = call i32 @add_to_literal_pool(i32* null, i32 %122, i32* %123, i32 8)
  %125 = sub nsw i32 %124, 32768
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp sge i32 %126, 32768
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %130 = call i32 @as_fatal(i32 %129)
  br label %131

131:                                              ; preds = %128, %121
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %157

135:                                              ; preds = %131
  %136 = load i64, i64* @alpha_noat_on, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %140 = call i32 @as_bad(i32 %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @AXP_REG_AT, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %147 = call i32 @as_bad(i32 %146)
  br label %148

148:                                              ; preds = %145, %141
  %149 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %150 = load i32, i32* @AXP_REG_AT, align 4
  %151 = bitcast %struct.TYPE_16__* %149 to { i64, i32* }*
  %152 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 16
  %154 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %151, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @set_tok_reg(i64 %153, i32* %155, i32 %150)
  br label %166

157:                                              ; preds = %131
  %158 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %159 = load i32, i32* %6, align 4
  %160 = bitcast %struct.TYPE_16__* %158 to { i64, i32* }*
  %161 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 16
  %163 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %160, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @set_tok_reg(i64 %162, i32* %164, i32 %159)
  br label %166

166:                                              ; preds = %157, %148
  %167 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 2
  %168 = load i32, i32* @alpha_gp_register, align 4
  %169 = bitcast %struct.TYPE_16__* %167 to { i64, i32* }*
  %170 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 16
  %172 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %169, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @set_tok_preg(i64 %171, i32* %173, i32 %168)
  %175 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %176 = call i32 @assemble_tokens_to_insn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_16__* %175, i32 3, %struct.alpha_insn* %13)
  %177 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %13, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 1
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  %182 = load i64, i64* %16, align 8
  %183 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %13, i32 0, i32 1
  store i64 %182, i64* %183, align 8
  %184 = call i32 @emit_insn(%struct.alpha_insn* %13)
  %185 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 1
  %186 = load i32, i32* %15, align 4
  %187 = bitcast %struct.TYPE_16__* %185 to { i64, i32* }*
  %188 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 16
  %190 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %187, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @set_tok_const(i64 %189, i32* %191, i32 %186)
  %193 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 2
  %194 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 16
  %197 = bitcast %struct.TYPE_16__* %193 to { i64, i32* }*
  %198 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 16
  %200 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %197, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @set_tok_preg(i64 %199, i32* %201, i32 %196)
  %203 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %204 = call i32 @assemble_tokens_to_insn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_16__* %203, i32 3, %struct.alpha_insn* %13)
  %205 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %13, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @MAX_INSN_FIXUPS, align 4
  %208 = icmp slt i32 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  %211 = load i8*, i8** @DUMMY_RELOC_LITUSE_BASE, align 8
  %212 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %13, i32 0, i32 2
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %212, align 8
  %214 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %13, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  store i8* %211, i8** %218, align 8
  %219 = load i32, i32* @O_absent, align 4
  %220 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %13, i32 0, i32 2
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %220, align 8
  %222 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %13, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  store i32 %219, i32* %227, align 8
  %228 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %13, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 8
  %231 = load i64, i64* %16, align 8
  %232 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %13, i32 0, i32 1
  store i64 %231, i64* %232, align 8
  store i64 0, i64* %10, align 8
  %233 = call i32 @emit_insn(%struct.alpha_insn* %13)
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* @AXP_REG_ZERO, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %256

237:                                              ; preds = %166
  %238 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 1
  %239 = load i32, i32* %12, align 4
  %240 = bitcast %struct.TYPE_16__* %238 to { i64, i32* }*
  %241 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 16
  %243 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %240, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @set_tok_reg(i64 %242, i32* %244, i32 %239)
  %246 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 2
  %247 = load i32, i32* %6, align 4
  %248 = bitcast %struct.TYPE_16__* %246 to { i64, i32* }*
  %249 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 16
  %251 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %248, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @set_tok_reg(i64 %250, i32* %252, i32 %247)
  %254 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %255 = call i32 @assemble_tokens(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %254, i32 3, i32 0)
  br label %256

256:                                              ; preds = %237, %166
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %258 = icmp ne %struct.TYPE_16__* %257, null
  br i1 %258, label %259, label %267

259:                                              ; preds = %256
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %261 = bitcast %struct.TYPE_16__* %260 to { i64, i32* }*
  %262 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %261, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @set_tok_const(i64 %263, i32* %265, i32 0)
  br label %267

267:                                              ; preds = %259, %256
  %268 = load i32, i32* %6, align 4
  %269 = load i32*, i32** %8, align 8
  store i32 %268, i32* %269, align 4
  br label %392

270:                                              ; preds = %109
  %271 = load i32, i32* %11, align 4
  %272 = call i32 @sign_extend_16(i32 %271)
  store i32 %272, i32* %17, align 4
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %17, align 4
  %275 = sub nsw i32 %273, %274
  store i32 %275, i32* %20, align 4
  %276 = load i32, i32* %20, align 4
  %277 = ashr i32 %276, 16
  %278 = call i32 @sign_extend_16(i32 %277)
  store i32 %278, i32* %18, align 4
  %279 = load i32, i32* %20, align 4
  %280 = load i32, i32* %18, align 4
  %281 = shl i32 %280, 16
  %282 = sub nsw i32 %279, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %270
  store i32 16384, i32* %19, align 4
  %285 = load i32, i32* %20, align 4
  %286 = sub nsw i32 %285, 1073741824
  store i32 %286, i32* %20, align 4
  %287 = load i32, i32* %20, align 4
  %288 = ashr i32 %287, 16
  %289 = call i32 @sign_extend_16(i32 %288)
  store i32 %289, i32* %18, align 4
  br label %291

290:                                              ; preds = %270
  store i32 0, i32* %19, align 4
  br label %291

291:                                              ; preds = %290, %284
  %292 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %293 = load i32, i32* %6, align 4
  %294 = bitcast %struct.TYPE_16__* %292 to { i64, i32* }*
  %295 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 16
  %297 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %294, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = call i32 @set_tok_reg(i64 %296, i32* %298, i32 %293)
  %300 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 2
  %301 = load i32, i32* %12, align 4
  %302 = bitcast %struct.TYPE_16__* %300 to { i64, i32* }*
  %303 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 16
  %305 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %302, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = call i32 @set_tok_preg(i64 %304, i32* %306, i32 %301)
  %308 = load i32, i32* %19, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %329

310:                                              ; preds = %291
  %311 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 1
  %312 = load i32, i32* %19, align 4
  %313 = bitcast %struct.TYPE_16__* %311 to { i64, i32* }*
  %314 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 16
  %316 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %313, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = call i32 @set_tok_const(i64 %315, i32* %317, i32 %312)
  %319 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %320 = call i32 @assemble_tokens(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_16__* %319, i32 3, i32 0)
  %321 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 2
  %322 = load i32, i32* %6, align 4
  store i32 %322, i32* %12, align 4
  %323 = bitcast %struct.TYPE_16__* %321 to { i64, i32* }*
  %324 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 16
  %326 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %323, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = call i32 @set_tok_preg(i64 %325, i32* %327, i32 %322)
  br label %329

329:                                              ; preds = %310, %291
  %330 = load i32, i32* %18, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %352

332:                                              ; preds = %329
  %333 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 1
  %334 = load i32, i32* %18, align 4
  %335 = bitcast %struct.TYPE_16__* %333 to { i64, i32* }*
  %336 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 16
  %338 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %335, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = call i32 @set_tok_const(i64 %337, i32* %339, i32 %334)
  %341 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %342 = call i32 @assemble_tokens(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_16__* %341, i32 3, i32 0)
  %343 = load i32, i32* %6, align 4
  store i32 %343, i32* %12, align 4
  %344 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 2
  %345 = load i32, i32* %12, align 4
  %346 = bitcast %struct.TYPE_16__* %344 to { i64, i32* }*
  %347 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 16
  %349 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %346, i32 0, i32 1
  %350 = load i32*, i32** %349, align 8
  %351 = call i32 @set_tok_preg(i64 %348, i32* %350, i32 %345)
  br label %352

352:                                              ; preds = %332, %329
  %353 = load i32, i32* %17, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %352
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %357 = icmp ne %struct.TYPE_16__* %356, null
  br i1 %357, label %358, label %365

358:                                              ; preds = %355, %352
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %360 = icmp ne %struct.TYPE_16__* %359, null
  br i1 %360, label %377, label %361

361:                                              ; preds = %358
  %362 = load i32, i32* %12, align 4
  %363 = load i32, i32* %6, align 4
  %364 = icmp ne i32 %362, %363
  br i1 %364, label %365, label %377

365:                                              ; preds = %361, %355
  %366 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 1
  %367 = load i32, i32* %17, align 4
  %368 = bitcast %struct.TYPE_16__* %366 to { i64, i32* }*
  %369 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 16
  %371 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %368, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = call i32 @set_tok_const(i64 %370, i32* %372, i32 %367)
  %374 = getelementptr inbounds [3 x %struct.TYPE_16__], [3 x %struct.TYPE_16__]* %14, i64 0, i64 0
  %375 = call i32 @assemble_tokens(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %374, i32 3, i32 0)
  %376 = load i32, i32* %6, align 4
  store i32 %376, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %377

377:                                              ; preds = %365, %361, %358
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %379 = icmp ne %struct.TYPE_16__* %378, null
  br i1 %379, label %380, label %389

380:                                              ; preds = %377
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %382 = load i32, i32* %17, align 4
  %383 = bitcast %struct.TYPE_16__* %381 to { i64, i32* }*
  %384 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %383, i32 0, i32 1
  %387 = load i32*, i32** %386, align 8
  %388 = call i32 @set_tok_const(i64 %385, i32* %387, i32 %382)
  br label %389

389:                                              ; preds = %380, %377
  %390 = load i32, i32* %12, align 4
  %391 = load i32*, i32** %8, align 8
  store i32 %390, i32* %391, align 4
  br label %392

392:                                              ; preds = %389, %267
  %393 = load i64, i64* %10, align 8
  store i64 %393, i64* %5, align 8
  br label %394

394:                                              ; preds = %392, %93
  %395 = load i64, i64* %5, align 8
  ret i64 %395
}

declare dso_local i32 @emit_insn(%struct.alpha_insn*) #1

declare dso_local i32 @set_tok_reg(i64, i32*, i32) #1

declare dso_local i32 @assemble_tokens(i8*, %struct.TYPE_16__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_tok_preg(i64, i32*, i32) #1

declare dso_local i32 @set_tok_const(i64, i32*, i32) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @range_signed_32(i32) #1

declare dso_local i32 @create_literal_section(i8*, i32**, i32**) #1

declare dso_local i32 @add_to_literal_pool(i32*, i32, i32*, i32) #1

declare dso_local i32 @as_fatal(i32) #1

declare dso_local i32 @assemble_tokens_to_insn(i8*, %struct.TYPE_16__*, i32, %struct.alpha_insn*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sign_extend_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

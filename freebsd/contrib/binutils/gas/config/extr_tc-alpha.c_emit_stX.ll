; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_stX.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_emit_stX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.alpha_insn = type { i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i8* }

@alpha_target = common dso_local global i32 0, align 4
@AXP_OPCODE_BWX = common dso_local global i32 0, align 4
@stX_op = common dso_local global i32* null, align 8
@alpha_noat_on = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"macro requires $at register while noat in effect\00", align 1
@O_constant = common dso_local global i64 0, align 8
@AXP_REG_ZERO = common dso_local global i32 0, align 4
@alpha_gp_register = common dso_local global i32 0, align 4
@AXP_REG_AT = common dso_local global i32 0, align 4
@AXP_REG_T9 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ldq_u\00", align 1
@MAX_INSN_FIXUPS = common dso_local global i64 0, align 8
@DUMMY_RELOC_LITUSE_BASE = common dso_local global i8* null, align 8
@O_absent = common dso_local global i8* null, align 8
@AXP_REG_T10 = common dso_local global i32 0, align 4
@insXl_op = common dso_local global i8** null, align 8
@DUMMY_RELOC_LITUSE_BYTOFF = common dso_local global i8* null, align 8
@mskXl_op = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stq_u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i8*)* @emit_stX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_stX(%struct.TYPE_14__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x %struct.TYPE_14__], align 16
  %9 = alloca %struct.alpha_insn, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @alpha_target, align 4
  %16 = load i32, i32* @AXP_OPCODE_BWX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** @stX_op, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @emit_loadstore(%struct.TYPE_14__* %20, i32 %21, i32 %26)
  br label %283

28:                                               ; preds = %3
  %29 = load i64, i64* @alpha_noat_on, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @as_bad(i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @O_constant, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @AXP_REG_ZERO, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @alpha_gp_register, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %10, align 4
  br label %55

50:                                               ; preds = %34
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %50, %48
  %56 = load i32, i32* @AXP_REG_AT, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 1
  %59 = call i64 @load_expression(i32 %56, %struct.TYPE_14__* %58, i32* %10, i32* null)
  store i64 %59, i64* %11, align 8
  %60 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %61 = load i32, i32* @AXP_REG_T9, align 4
  %62 = bitcast %struct.TYPE_14__* %60 to { i64, i32 }*
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 16
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @set_tok_reg(i64 %64, i32 %66, i32 %61)
  %68 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 1
  %69 = bitcast %struct.TYPE_14__* %68 to { i64, i32 }*
  %70 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 16
  %72 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %69, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @set_tok_const(i64 %71, i32 %73, i32 0)
  %75 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 2
  %76 = load i32, i32* %10, align 4
  %77 = bitcast %struct.TYPE_14__* %75 to { i64, i32 }*
  %78 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 16
  %80 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %77, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @set_tok_preg(i64 %79, i32 %81, i32 %76)
  %83 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %84 = call i32 @assemble_tokens_to_insn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %83, i32 3, %struct.alpha_insn* %9)
  %85 = load i64, i64* %11, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %55
  %88 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MAX_INSN_FIXUPS, align 8
  %91 = icmp ult i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i8*, i8** @DUMMY_RELOC_LITUSE_BASE, align 8
  %95 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 2
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  store i8* %94, i8** %100, align 8
  %101 = load i8*, i8** @O_absent, align 8
  %102 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 2
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  store i8* %101, i8** %108, align 8
  %109 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 1
  store i64 %112, i64* %113, align 8
  br label %114

114:                                              ; preds = %87, %55
  %115 = call i32 @emit_insn(%struct.alpha_insn* %9)
  %116 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i64 0
  %119 = bitcast %struct.TYPE_14__* %116 to i8*
  %120 = bitcast %struct.TYPE_14__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %119, i8* align 8 %120, i64 16, i1 false)
  %121 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 1
  %122 = load i32, i32* %10, align 4
  %123 = bitcast %struct.TYPE_14__* %121 to { i64, i32 }*
  %124 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 16
  %126 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %123, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @set_tok_reg(i64 %125, i32 %127, i32 %122)
  %129 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 2
  %130 = load i32, i32* @AXP_REG_T10, align 4
  %131 = bitcast %struct.TYPE_14__* %129 to { i64, i32 }*
  %132 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 16
  %134 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %131, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @set_tok_reg(i64 %133, i32 %135, i32 %130)
  %137 = load i8**, i8*** @insXl_op, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %143 = call i32 @assemble_tokens_to_insn(i8* %141, %struct.TYPE_14__* %142, i32 3, %struct.alpha_insn* %9)
  %144 = load i64, i64* %11, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %173

146:                                              ; preds = %114
  %147 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @MAX_INSN_FIXUPS, align 8
  %150 = icmp ult i64 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load i8*, i8** @DUMMY_RELOC_LITUSE_BYTOFF, align 8
  %154 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 2
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  store i8* %153, i8** %159, align 8
  %160 = load i8*, i8** @O_absent, align 8
  %161 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 2
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  %163 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  store i8* %160, i8** %167, align 8
  %168 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %168, align 8
  %171 = load i64, i64* %11, align 8
  %172 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 1
  store i64 %171, i64* %172, align 8
  br label %173

173:                                              ; preds = %146, %114
  %174 = call i32 @emit_insn(%struct.alpha_insn* %9)
  %175 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %176 = load i32, i32* @AXP_REG_T9, align 4
  %177 = bitcast %struct.TYPE_14__* %175 to { i64, i32 }*
  %178 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 16
  %180 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %177, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @set_tok_reg(i64 %179, i32 %181, i32 %176)
  %183 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 2
  %184 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %185 = bitcast %struct.TYPE_14__* %183 to i8*
  %186 = bitcast %struct.TYPE_14__* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %185, i8* align 16 %186, i64 16, i1 false)
  %187 = load i8**, i8*** @mskXl_op, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %193 = call i32 @assemble_tokens_to_insn(i8* %191, %struct.TYPE_14__* %192, i32 3, %struct.alpha_insn* %9)
  %194 = load i64, i64* %11, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %223

196:                                              ; preds = %173
  %197 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @MAX_INSN_FIXUPS, align 8
  %200 = icmp ult i64 %198, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load i8*, i8** @DUMMY_RELOC_LITUSE_BYTOFF, align 8
  %204 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 2
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %204, align 8
  %206 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  store i8* %203, i8** %209, align 8
  %210 = load i8*, i8** @O_absent, align 8
  %211 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 2
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  store i8* %210, i8** %217, align 8
  %218 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %218, align 8
  %221 = load i64, i64* %11, align 8
  %222 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 1
  store i64 %221, i64* %222, align 8
  br label %223

223:                                              ; preds = %196, %173
  %224 = call i32 @emit_insn(%struct.alpha_insn* %9)
  %225 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 1
  %226 = load i32, i32* @AXP_REG_T10, align 4
  %227 = bitcast %struct.TYPE_14__* %225 to { i64, i32 }*
  %228 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 16
  %230 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %227, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @set_tok_reg(i64 %229, i32 %231, i32 %226)
  %233 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %234 = call i32 @assemble_tokens(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_14__* %233, i32 3, i32 1)
  %235 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 1
  %236 = bitcast %struct.TYPE_14__* %235 to { i64, i32 }*
  %237 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 16
  %239 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %236, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @set_tok_const(i64 %238, i32 %240, i32 0)
  %242 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 2
  %243 = load i32, i32* @AXP_REG_AT, align 4
  %244 = bitcast %struct.TYPE_14__* %242 to { i64, i32 }*
  %245 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 16
  %247 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %244, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @set_tok_preg(i64 %246, i32 %248, i32 %243)
  %250 = getelementptr inbounds [3 x %struct.TYPE_14__], [3 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %251 = call i32 @assemble_tokens_to_insn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_14__* %250, i32 3, %struct.alpha_insn* %9)
  %252 = load i64, i64* %11, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %281

254:                                              ; preds = %223
  %255 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @MAX_INSN_FIXUPS, align 8
  %258 = icmp ult i64 %256, %257
  %259 = zext i1 %258 to i32
  %260 = call i32 @assert(i32 %259)
  %261 = load i8*, i8** @DUMMY_RELOC_LITUSE_BASE, align 8
  %262 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 2
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %262, align 8
  %264 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 1
  store i8* %261, i8** %267, align 8
  %268 = load i8*, i8** @O_absent, align 8
  %269 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 2
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %269, align 8
  %271 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  store i8* %268, i8** %275, align 8
  %276 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %276, align 8
  %279 = load i64, i64* %11, align 8
  %280 = getelementptr inbounds %struct.alpha_insn, %struct.alpha_insn* %9, i32 0, i32 1
  store i64 %279, i64* %280, align 8
  br label %281

281:                                              ; preds = %254, %223
  %282 = call i32 @emit_insn(%struct.alpha_insn* %9)
  br label %283

283:                                              ; preds = %281, %19
  ret void
}

declare dso_local i32 @emit_loadstore(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @load_expression(i32, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @set_tok_reg(i64, i32, i32) #1

declare dso_local i32 @set_tok_const(i64, i32, i32) #1

declare dso_local i32 @set_tok_preg(i64, i32, i32) #1

declare dso_local i32 @assemble_tokens_to_insn(i8*, %struct.TYPE_14__*, i32, %struct.alpha_insn*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_insn(%struct.alpha_insn*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assemble_tokens(i8*, %struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

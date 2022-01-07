; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_70__ = type { %struct.TYPE_74__*, i32, i32 }
%struct.TYPE_74__ = type { i32 }
%struct.TYPE_75__ = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_77__*, i32, i32, %struct.TYPE_75__*, %struct.TYPE_75__*, i32*, %struct.TYPE_75__*, i32, %struct.TYPE_73__*, %struct.TYPE_75__* }
%struct.TYPE_77__ = type { i32, i32, %struct.TYPE_73__*, i32, i32 }
%struct.TYPE_73__ = type { i32, i32, i32, %struct.TYPE_72__* }
%struct.TYPE_72__ = type { i32, i32 }
%struct.TYPE_76__ = type { %struct.TYPE_71__* }
%struct.TYPE_71__ = type { i32 }
%struct.TYPE_78__ = type { i64, i32 }
%struct.TYPE_69__ = type { i32 }

@DIF_OP_ADD = common dso_local global i32 0, align 4
@DIF_OP_SUB = common dso_local global i32 0, align 4
@DIF_OP_MUL = common dso_local global i32 0, align 4
@DT_NF_SIGNED = common dso_local global i32 0, align 4
@DIF_OP_SDIV = common dso_local global i32 0, align 4
@DIF_OP_UDIV = common dso_local global i32 0, align 4
@DIF_OP_SREM = common dso_local global i32 0, align 4
@DIF_OP_UREM = common dso_local global i32 0, align 4
@DIF_OP_AND = common dso_local global i32 0, align 4
@DIF_OP_XOR = common dso_local global i32 0, align 4
@DIF_OP_OR = common dso_local global i32 0, align 4
@DIF_OP_SLL = common dso_local global i32 0, align 4
@DIF_OP_SRA = common dso_local global i32 0, align 4
@DIF_OP_SRL = common dso_local global i32 0, align 4
@DIF_OP_BE = common dso_local global i32 0, align 4
@DIF_OP_BNE = common dso_local global i32 0, align 4
@DIF_OP_BL = common dso_local global i32 0, align 4
@DIF_OP_BLU = common dso_local global i32 0, align 4
@DIF_OP_BLE = common dso_local global i32 0, align 4
@DIF_OP_BLEU = common dso_local global i32 0, align 4
@DIF_OP_BG = common dso_local global i32 0, align 4
@DIF_OP_BGU = common dso_local global i32 0, align 4
@DIF_OP_BGE = common dso_local global i32 0, align 4
@DIF_OP_BGEU = common dso_local global i32 0, align 4
@DT_LBL_NONE = common dso_local global i32 0, align 4
@DIF_REG_R0 = common dso_local global i32 0, align 4
@DT_IDENT_XLPTR = common dso_local global i32 0, align 4
@DT_NF_REF = common dso_local global i32 0, align 4
@DT_NF_USERLAND = common dso_local global i32 0, align 4
@DT_NODE_XLATOR = common dso_local global i32 0, align 4
@DT_IDFLG_CGREG = common dso_local global i32 0, align 4
@DIF_OP_XLATE = common dso_local global i32 0, align 4
@DIF_OP_XLARG = common dso_local global i32 0, align 4
@DT_NODE_OP2 = common dso_local global i32 0, align 4
@DT_NODE_IDENT = common dso_local global i32 0, align 4
@DT_IDENT_XLSOU = common dso_local global i32 0, align 4
@yypcb = common dso_local global %struct.TYPE_70__* null, align 8
@EDT_CTF = common dso_local global i32 0, align 4
@NBBY = common dso_local global i64 0, align 8
@DT_NF_BITFIELD = common dso_local global i32 0, align 4
@DT_NODE_STRING = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@DIF_STROFF_MAX = common dso_local global i64 0, align 8
@EDT_STR2BIG = common dso_local global i32 0, align 4
@DT_IDFLG_INLINE = common dso_local global i32 0, align 4
@DT_IDENT_FUNC = common dso_local global i32 0, align 4
@D_CG_EXPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"%s %s( ) may not be called from a D expression (D program context required)\0A\00", align 1
@DIF_VAR_ARGS = common dso_local global i32 0, align 4
@DT_IDENT_ARRAY = common dso_local global i32 0, align 4
@DIF_VAR_ARRAY_MAX = common dso_local global i32 0, align 4
@DT_IDFLG_LOCAL = common dso_local global i32 0, align 4
@DIF_OP_LDLS = common dso_local global i32 0, align 4
@DT_IDFLG_TLS = common dso_local global i32 0, align 4
@DIF_OP_LDTS = common dso_local global i32 0, align 4
@DIF_OP_LDGS = common dso_local global i32 0, align 4
@DT_IDFLG_DIFR = common dso_local global i32 0, align 4
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cg failed for symbol %s`%s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"internal error -- node type %u is not valid for an identifier\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"internal error -- token type %u is not a valid D compilation token\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_75__*, %struct.TYPE_76__*, i32*)* @dt_cg_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_node(%struct.TYPE_75__* %0, %struct.TYPE_76__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_75__*, align 8
  %5 = alloca %struct.TYPE_76__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_78__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_77__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_73__*, align 8
  %20 = alloca %struct.TYPE_73__*, align 8
  %21 = alloca %struct.TYPE_75__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_74__*, align 8
  %25 = alloca %struct.TYPE_73__*, align 8
  %26 = alloca %struct.TYPE_69__, align 4
  store %struct.TYPE_75__* %0, %struct.TYPE_75__** %4, align 8
  store %struct.TYPE_76__* %1, %struct.TYPE_76__** %5, align 8
  store i32* %2, i32** %6, align 8
  %27 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %27, i32 0, i32 11
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  %30 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %1391 [
    i32 170, label %33
    i32 174, label %58
    i32 176, label %75
    i32 131, label %85
    i32 146, label %95
    i32 167, label %105
    i32 148, label %126
    i32 175, label %147
    i32 128, label %157
    i32 144, label %167
    i32 152, label %177
    i32 136, label %187
    i32 138, label %208
    i32 155, label %213
    i32 150, label %218
    i32 158, label %223
    i32 171, label %228
    i32 129, label %234
    i32 173, label %240
    i32 165, label %246
    i32 145, label %252
    i32 151, label %258
    i32 157, label %272
    i32 163, label %286
    i32 164, label %300
    i32 153, label %314
    i32 137, label %320
    i32 178, label %337
    i32 132, label %343
    i32 147, label %349
    i32 168, label %355
    i32 149, label %372
    i32 156, label %389
    i32 172, label %394
    i32 140, label %419
    i32 142, label %425
    i32 141, label %431
    i32 143, label %437
    i32 159, label %443
    i32 161, label %456
    i32 169, label %483
    i32 177, label %581
    i32 135, label %623
    i32 133, label %643
    i32 130, label %656
    i32 154, label %747
    i32 139, label %767
    i32 166, label %767
    i32 134, label %1031
    i32 162, label %1081
    i32 160, label %1377
  ]

33:                                               ; preds = %3
  %34 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %34, i32 0, i32 9
  %36 = load %struct.TYPE_75__*, %struct.TYPE_75__** %35, align 8
  %37 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %38 = load i32*, i32** %6, align 8
  call void @dt_cg_node(%struct.TYPE_75__* %36, %struct.TYPE_76__* %37, i32* %38)
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %40, i32 0, i32 9
  %42 = load %struct.TYPE_75__*, %struct.TYPE_75__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dt_regset_free(i32* %39, i32 %44)
  %46 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %46, i32 0, i32 10
  %48 = load %struct.TYPE_75__*, %struct.TYPE_75__** %47, align 8
  %49 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %50 = load i32*, i32** %6, align 8
  call void @dt_cg_node(%struct.TYPE_75__* %48, %struct.TYPE_76__* %49, i32* %50)
  %51 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %51, i32 0, i32 10
  %53 = load %struct.TYPE_75__*, %struct.TYPE_75__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %1397

58:                                               ; preds = %3
  %59 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %59, i32 0, i32 10
  %61 = load %struct.TYPE_75__*, %struct.TYPE_75__** %60, align 8
  %62 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %63 = load i32*, i32** %6, align 8
  call void @dt_cg_node(%struct.TYPE_75__* %61, %struct.TYPE_76__* %62, i32* %63)
  %64 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %64, i32 0, i32 10
  %66 = load %struct.TYPE_75__*, %struct.TYPE_75__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %72 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @dt_cg_asgn_op(%struct.TYPE_75__* %71, %struct.TYPE_76__* %72, i32* %73)
  br label %1397

75:                                               ; preds = %3
  %76 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %77 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @DIF_OP_ADD, align 4
  %80 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %76, %struct.TYPE_76__* %77, i32* %78, i32 %79)
  %81 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %82 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @dt_cg_asgn_op(%struct.TYPE_75__* %81, %struct.TYPE_76__* %82, i32* %83)
  br label %1397

85:                                               ; preds = %3
  %86 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %87 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* @DIF_OP_SUB, align 4
  %90 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %86, %struct.TYPE_76__* %87, i32* %88, i32 %89)
  %91 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %92 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @dt_cg_asgn_op(%struct.TYPE_75__* %91, %struct.TYPE_76__* %92, i32* %93)
  br label %1397

95:                                               ; preds = %3
  %96 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %97 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* @DIF_OP_MUL, align 4
  %100 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %96, %struct.TYPE_76__* %97, i32* %98, i32 %99)
  %101 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %102 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @dt_cg_asgn_op(%struct.TYPE_75__* %101, %struct.TYPE_76__* %102, i32* %103)
  br label %1397

105:                                              ; preds = %3
  %106 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %107 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @DT_NF_SIGNED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* @DIF_OP_SDIV, align 4
  br label %119

117:                                              ; preds = %105
  %118 = load i32, i32* @DIF_OP_UDIV, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %106, %struct.TYPE_76__* %107, i32* %108, i32 %120)
  %122 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %123 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @dt_cg_asgn_op(%struct.TYPE_75__* %122, %struct.TYPE_76__* %123, i32* %124)
  br label %1397

126:                                              ; preds = %3
  %127 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %128 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @DT_NF_SIGNED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load i32, i32* @DIF_OP_SREM, align 4
  br label %140

138:                                              ; preds = %126
  %139 = load i32, i32* @DIF_OP_UREM, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  %142 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %127, %struct.TYPE_76__* %128, i32* %129, i32 %141)
  %143 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %144 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @dt_cg_asgn_op(%struct.TYPE_75__* %143, %struct.TYPE_76__* %144, i32* %145)
  br label %1397

147:                                              ; preds = %3
  %148 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %149 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* @DIF_OP_AND, align 4
  %152 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %148, %struct.TYPE_76__* %149, i32* %150, i32 %151)
  %153 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %154 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @dt_cg_asgn_op(%struct.TYPE_75__* %153, %struct.TYPE_76__* %154, i32* %155)
  br label %1397

157:                                              ; preds = %3
  %158 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %159 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* @DIF_OP_XOR, align 4
  %162 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %158, %struct.TYPE_76__* %159, i32* %160, i32 %161)
  %163 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %164 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @dt_cg_asgn_op(%struct.TYPE_75__* %163, %struct.TYPE_76__* %164, i32* %165)
  br label %1397

167:                                              ; preds = %3
  %168 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %169 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* @DIF_OP_OR, align 4
  %172 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %168, %struct.TYPE_76__* %169, i32* %170, i32 %171)
  %173 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %174 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %175 = load i32*, i32** %6, align 8
  %176 = call i32 @dt_cg_asgn_op(%struct.TYPE_75__* %173, %struct.TYPE_76__* %174, i32* %175)
  br label %1397

177:                                              ; preds = %3
  %178 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %179 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %180 = load i32*, i32** %6, align 8
  %181 = load i32, i32* @DIF_OP_SLL, align 4
  %182 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %178, %struct.TYPE_76__* %179, i32* %180, i32 %181)
  %183 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %184 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = call i32 @dt_cg_asgn_op(%struct.TYPE_75__* %183, %struct.TYPE_76__* %184, i32* %185)
  br label %1397

187:                                              ; preds = %3
  %188 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %189 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %190 = load i32*, i32** %6, align 8
  %191 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @DT_NF_SIGNED, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %187
  %198 = load i32, i32* @DIF_OP_SRA, align 4
  br label %201

199:                                              ; preds = %187
  %200 = load i32, i32* @DIF_OP_SRL, align 4
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i32 [ %198, %197 ], [ %200, %199 ]
  %203 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %188, %struct.TYPE_76__* %189, i32* %190, i32 %202)
  %204 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %205 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %206 = load i32*, i32** %6, align 8
  %207 = call i32 @dt_cg_asgn_op(%struct.TYPE_75__* %204, %struct.TYPE_76__* %205, i32* %206)
  br label %1397

208:                                              ; preds = %3
  %209 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %210 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %211 = load i32*, i32** %6, align 8
  %212 = call i32 @dt_cg_ternary_op(%struct.TYPE_75__* %209, %struct.TYPE_76__* %210, i32* %211)
  br label %1397

213:                                              ; preds = %3
  %214 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %215 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %216 = load i32*, i32** %6, align 8
  %217 = call i32 @dt_cg_logical_or(%struct.TYPE_75__* %214, %struct.TYPE_76__* %215, i32* %216)
  br label %1397

218:                                              ; preds = %3
  %219 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %220 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %221 = load i32*, i32** %6, align 8
  %222 = call i32 @dt_cg_logical_xor(%struct.TYPE_75__* %219, %struct.TYPE_76__* %220, i32* %221)
  br label %1397

223:                                              ; preds = %3
  %224 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %225 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %226 = load i32*, i32** %6, align 8
  %227 = call i32 @dt_cg_logical_and(%struct.TYPE_75__* %224, %struct.TYPE_76__* %225, i32* %226)
  br label %1397

228:                                              ; preds = %3
  %229 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %230 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %231 = load i32*, i32** %6, align 8
  %232 = load i32, i32* @DIF_OP_OR, align 4
  %233 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %229, %struct.TYPE_76__* %230, i32* %231, i32 %232)
  br label %1397

234:                                              ; preds = %3
  %235 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %236 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* @DIF_OP_XOR, align 4
  %239 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %235, %struct.TYPE_76__* %236, i32* %237, i32 %238)
  br label %1397

240:                                              ; preds = %3
  %241 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %242 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %243 = load i32*, i32** %6, align 8
  %244 = load i32, i32* @DIF_OP_AND, align 4
  %245 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %241, %struct.TYPE_76__* %242, i32* %243, i32 %244)
  br label %1397

246:                                              ; preds = %3
  %247 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %248 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %249 = load i32*, i32** %6, align 8
  %250 = load i32, i32* @DIF_OP_BE, align 4
  %251 = call i32 @dt_cg_compare_op(%struct.TYPE_75__* %247, %struct.TYPE_76__* %248, i32* %249, i32 %250)
  br label %1397

252:                                              ; preds = %3
  %253 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %254 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %255 = load i32*, i32** %6, align 8
  %256 = load i32, i32* @DIF_OP_BNE, align 4
  %257 = call i32 @dt_cg_compare_op(%struct.TYPE_75__* %253, %struct.TYPE_76__* %254, i32* %255, i32 %256)
  br label %1397

258:                                              ; preds = %3
  %259 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %260 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %261 = load i32*, i32** %6, align 8
  %262 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %263 = call i32 @dt_cg_compare_signed(%struct.TYPE_75__* %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %258
  %266 = load i32, i32* @DIF_OP_BL, align 4
  br label %269

267:                                              ; preds = %258
  %268 = load i32, i32* @DIF_OP_BLU, align 4
  br label %269

269:                                              ; preds = %267, %265
  %270 = phi i32 [ %266, %265 ], [ %268, %267 ]
  %271 = call i32 @dt_cg_compare_op(%struct.TYPE_75__* %259, %struct.TYPE_76__* %260, i32* %261, i32 %270)
  br label %1397

272:                                              ; preds = %3
  %273 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %274 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %275 = load i32*, i32** %6, align 8
  %276 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %277 = call i32 @dt_cg_compare_signed(%struct.TYPE_75__* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %272
  %280 = load i32, i32* @DIF_OP_BLE, align 4
  br label %283

281:                                              ; preds = %272
  %282 = load i32, i32* @DIF_OP_BLEU, align 4
  br label %283

283:                                              ; preds = %281, %279
  %284 = phi i32 [ %280, %279 ], [ %282, %281 ]
  %285 = call i32 @dt_cg_compare_op(%struct.TYPE_75__* %273, %struct.TYPE_76__* %274, i32* %275, i32 %284)
  br label %1397

286:                                              ; preds = %3
  %287 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %288 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %289 = load i32*, i32** %6, align 8
  %290 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %291 = call i32 @dt_cg_compare_signed(%struct.TYPE_75__* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %286
  %294 = load i32, i32* @DIF_OP_BG, align 4
  br label %297

295:                                              ; preds = %286
  %296 = load i32, i32* @DIF_OP_BGU, align 4
  br label %297

297:                                              ; preds = %295, %293
  %298 = phi i32 [ %294, %293 ], [ %296, %295 ]
  %299 = call i32 @dt_cg_compare_op(%struct.TYPE_75__* %287, %struct.TYPE_76__* %288, i32* %289, i32 %298)
  br label %1397

300:                                              ; preds = %3
  %301 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %302 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %303 = load i32*, i32** %6, align 8
  %304 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %305 = call i32 @dt_cg_compare_signed(%struct.TYPE_75__* %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %300
  %308 = load i32, i32* @DIF_OP_BGE, align 4
  br label %311

309:                                              ; preds = %300
  %310 = load i32, i32* @DIF_OP_BGEU, align 4
  br label %311

311:                                              ; preds = %309, %307
  %312 = phi i32 [ %308, %307 ], [ %310, %309 ]
  %313 = call i32 @dt_cg_compare_op(%struct.TYPE_75__* %301, %struct.TYPE_76__* %302, i32* %303, i32 %312)
  br label %1397

314:                                              ; preds = %3
  %315 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %316 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %317 = load i32*, i32** %6, align 8
  %318 = load i32, i32* @DIF_OP_SLL, align 4
  %319 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %315, %struct.TYPE_76__* %316, i32* %317, i32 %318)
  br label %1397

320:                                              ; preds = %3
  %321 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %322 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %323 = load i32*, i32** %6, align 8
  %324 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @DT_NF_SIGNED, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %320
  %331 = load i32, i32* @DIF_OP_SRA, align 4
  br label %334

332:                                              ; preds = %320
  %333 = load i32, i32* @DIF_OP_SRL, align 4
  br label %334

334:                                              ; preds = %332, %330
  %335 = phi i32 [ %331, %330 ], [ %333, %332 ]
  %336 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %321, %struct.TYPE_76__* %322, i32* %323, i32 %335)
  br label %1397

337:                                              ; preds = %3
  %338 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %339 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %340 = load i32*, i32** %6, align 8
  %341 = load i32, i32* @DIF_OP_ADD, align 4
  %342 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %338, %struct.TYPE_76__* %339, i32* %340, i32 %341)
  br label %1397

343:                                              ; preds = %3
  %344 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %345 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %346 = load i32*, i32** %6, align 8
  %347 = load i32, i32* @DIF_OP_SUB, align 4
  %348 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %344, %struct.TYPE_76__* %345, i32* %346, i32 %347)
  br label %1397

349:                                              ; preds = %3
  %350 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %351 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %352 = load i32*, i32** %6, align 8
  %353 = load i32, i32* @DIF_OP_MUL, align 4
  %354 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %350, %struct.TYPE_76__* %351, i32* %352, i32 %353)
  br label %1397

355:                                              ; preds = %3
  %356 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %357 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %358 = load i32*, i32** %6, align 8
  %359 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @DT_NF_SIGNED, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %355
  %366 = load i32, i32* @DIF_OP_SDIV, align 4
  br label %369

367:                                              ; preds = %355
  %368 = load i32, i32* @DIF_OP_UDIV, align 4
  br label %369

369:                                              ; preds = %367, %365
  %370 = phi i32 [ %366, %365 ], [ %368, %367 ]
  %371 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %356, %struct.TYPE_76__* %357, i32* %358, i32 %370)
  br label %1397

372:                                              ; preds = %3
  %373 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %374 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %375 = load i32*, i32** %6, align 8
  %376 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @DT_NF_SIGNED, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %372
  %383 = load i32, i32* @DIF_OP_SREM, align 4
  br label %386

384:                                              ; preds = %372
  %385 = load i32, i32* @DIF_OP_UREM, align 4
  br label %386

386:                                              ; preds = %384, %382
  %387 = phi i32 [ %383, %382 ], [ %385, %384 ]
  %388 = call i32 @dt_cg_arithmetic_op(%struct.TYPE_75__* %373, %struct.TYPE_76__* %374, i32* %375, i32 %387)
  br label %1397

389:                                              ; preds = %3
  %390 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %391 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %392 = load i32*, i32** %6, align 8
  %393 = call i32 @dt_cg_logical_neg(%struct.TYPE_75__* %390, %struct.TYPE_76__* %391, i32* %392)
  br label %1397

394:                                              ; preds = %3
  %395 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %395, i32 0, i32 15
  %397 = load %struct.TYPE_75__*, %struct.TYPE_75__** %396, align 8
  %398 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %399 = load i32*, i32** %6, align 8
  call void @dt_cg_node(%struct.TYPE_75__* %397, %struct.TYPE_76__* %398, i32* %399)
  %400 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %400, i32 0, i32 15
  %402 = load %struct.TYPE_75__*, %struct.TYPE_75__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %406 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %405, i32 0, i32 1
  store i32 %404, i32* %406, align 4
  %407 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @DIF_INSTR_NOT(i32 %409, i32 %412)
  store i32 %413, i32* %11, align 4
  %414 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %415 = load i32, i32* @DT_LBL_NONE, align 4
  %416 = load i32, i32* %11, align 4
  %417 = call i32 @dt_cg_node_alloc(i32 %415, i32 %416)
  %418 = call i32 @dt_irlist_append(%struct.TYPE_76__* %414, i32 %417)
  br label %1397

419:                                              ; preds = %3
  %420 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %421 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %422 = load i32*, i32** %6, align 8
  %423 = load i32, i32* @DIF_OP_ADD, align 4
  %424 = call i32 @dt_cg_prearith_op(%struct.TYPE_75__* %420, %struct.TYPE_76__* %421, i32* %422, i32 %423)
  br label %1397

425:                                              ; preds = %3
  %426 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %427 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %428 = load i32*, i32** %6, align 8
  %429 = load i32, i32* @DIF_OP_ADD, align 4
  %430 = call i32 @dt_cg_postarith_op(%struct.TYPE_75__* %426, %struct.TYPE_76__* %427, i32* %428, i32 %429)
  br label %1397

431:                                              ; preds = %3
  %432 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %433 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %434 = load i32*, i32** %6, align 8
  %435 = load i32, i32* @DIF_OP_SUB, align 4
  %436 = call i32 @dt_cg_prearith_op(%struct.TYPE_75__* %432, %struct.TYPE_76__* %433, i32* %434, i32 %435)
  br label %1397

437:                                              ; preds = %3
  %438 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %439 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %440 = load i32*, i32** %6, align 8
  %441 = load i32, i32* @DIF_OP_SUB, align 4
  %442 = call i32 @dt_cg_postarith_op(%struct.TYPE_75__* %438, %struct.TYPE_76__* %439, i32* %440, i32 %441)
  br label %1397

443:                                              ; preds = %3
  %444 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %444, i32 0, i32 15
  %446 = load %struct.TYPE_75__*, %struct.TYPE_75__** %445, align 8
  %447 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %448 = load i32*, i32** %6, align 8
  call void @dt_cg_node(%struct.TYPE_75__* %446, %struct.TYPE_76__* %447, i32* %448)
  %449 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %449, i32 0, i32 15
  %451 = load %struct.TYPE_75__*, %struct.TYPE_75__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %454, i32 0, i32 1
  store i32 %453, i32* %455, align 4
  br label %1397

456:                                              ; preds = %3
  %457 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %457, i32 0, i32 15
  %459 = load %struct.TYPE_75__*, %struct.TYPE_75__** %458, align 8
  %460 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %461 = load i32*, i32** %6, align 8
  call void @dt_cg_node(%struct.TYPE_75__* %459, %struct.TYPE_76__* %460, i32* %461)
  %462 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %463 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %462, i32 0, i32 15
  %464 = load %struct.TYPE_75__*, %struct.TYPE_75__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %467, i32 0, i32 1
  store i32 %466, i32* %468, align 4
  %469 = load i32, i32* @DIF_OP_SUB, align 4
  %470 = load i32, i32* @DIF_REG_R0, align 4
  %471 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %472 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %475 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @DIF_INSTR_FMT(i32 %469, i32 %470, i32 %473, i32 %476)
  store i32 %477, i32* %11, align 4
  %478 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %479 = load i32, i32* @DT_LBL_NONE, align 4
  %480 = load i32, i32* %11, align 4
  %481 = call i32 @dt_cg_node_alloc(i32 %479, i32 %480)
  %482 = call i32 @dt_irlist_append(%struct.TYPE_76__* %478, i32 %481)
  br label %1397

483:                                              ; preds = %3
  %484 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %484, i32 0, i32 15
  %486 = load %struct.TYPE_75__*, %struct.TYPE_75__** %485, align 8
  %487 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %488 = load i32*, i32** %6, align 8
  call void @dt_cg_node(%struct.TYPE_75__* %486, %struct.TYPE_76__* %487, i32* %488)
  %489 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %490 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %489, i32 0, i32 15
  %491 = load %struct.TYPE_75__*, %struct.TYPE_75__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %495 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %494, i32 0, i32 1
  store i32 %493, i32* %495, align 4
  %496 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %496, i32 0, i32 15
  %498 = load %struct.TYPE_75__*, %struct.TYPE_75__** %497, align 8
  %499 = call i32 @dt_node_is_dynamic(%struct.TYPE_75__* %498)
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %526

501:                                              ; preds = %483
  %502 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %502, i32 0, i32 15
  %504 = load %struct.TYPE_75__*, %struct.TYPE_75__** %503, align 8
  %505 = load i32, i32* @DT_IDENT_XLPTR, align 4
  %506 = call %struct.TYPE_77__* @dt_node_resolve(%struct.TYPE_75__* %504, i32 %505)
  store %struct.TYPE_77__* %506, %struct.TYPE_77__** %12, align 8
  %507 = load %struct.TYPE_77__*, %struct.TYPE_77__** %12, align 8
  %508 = icmp ne %struct.TYPE_77__* %507, null
  %509 = zext i1 %508 to i32
  %510 = call i32 @assert(i32 %509)
  %511 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %512 = load %struct.TYPE_77__*, %struct.TYPE_77__** %12, align 8
  %513 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %514 = load i32*, i32** %6, align 8
  %515 = call i32 @dt_cg_xlate_expand(%struct.TYPE_75__* %511, %struct.TYPE_77__* %512, %struct.TYPE_76__* %513, i32* %514)
  store i32 %515, i32* %15, align 4
  %516 = load i32*, i32** %6, align 8
  %517 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %518 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %517, i32 0, i32 15
  %519 = load %struct.TYPE_75__*, %struct.TYPE_75__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = call i32 @dt_regset_free(i32* %516, i32 %521)
  %523 = load i32, i32* %15, align 4
  %524 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %525 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %524, i32 0, i32 1
  store i32 %523, i32* %525, align 4
  br label %580

526:                                              ; preds = %483
  %527 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %528 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %527, i32 0, i32 2
  %529 = load i32, i32* %528, align 8
  %530 = load i32, i32* @DT_NF_REF, align 4
  %531 = and i32 %529, %530
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %579, label %533

533:                                              ; preds = %526
  %534 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %535 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %534, i32 0, i32 2
  %536 = load i32, i32* %535, align 8
  %537 = load i32, i32* @DT_NF_USERLAND, align 4
  %538 = and i32 %536, %537
  store i32 %538, i32* %16, align 4
  %539 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %540 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %539, i32 0, i32 15
  %541 = load %struct.TYPE_75__*, %struct.TYPE_75__** %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 8
  %544 = load i32, i32* @DT_NF_USERLAND, align 4
  %545 = and i32 %543, %544
  %546 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %547 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %546, i32 0, i32 2
  %548 = load i32, i32* %547, align 8
  %549 = or i32 %548, %545
  store i32 %549, i32* %547, align 8
  %550 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %551 = load i32*, i32** %7, align 8
  %552 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %553 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %552, i32 0, i32 5
  %554 = load i32, i32* %553, align 8
  %555 = call i32 @dt_cg_load(%struct.TYPE_75__* %550, i32* %551, i32 %554)
  %556 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %557 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 4
  %559 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %560 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = call i32 @DIF_INSTR_LOAD(i32 %555, i32 %558, i32 %561)
  store i32 %562, i32* %11, align 4
  %563 = load i32, i32* @DT_NF_USERLAND, align 4
  %564 = xor i32 %563, -1
  %565 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %566 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %565, i32 0, i32 2
  %567 = load i32, i32* %566, align 8
  %568 = and i32 %567, %564
  store i32 %568, i32* %566, align 8
  %569 = load i32, i32* %16, align 4
  %570 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %571 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %570, i32 0, i32 2
  %572 = load i32, i32* %571, align 8
  %573 = or i32 %572, %569
  store i32 %573, i32* %571, align 8
  %574 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %575 = load i32, i32* @DT_LBL_NONE, align 4
  %576 = load i32, i32* %11, align 4
  %577 = call i32 @dt_cg_node_alloc(i32 %575, i32 %576)
  %578 = call i32 @dt_irlist_append(%struct.TYPE_76__* %574, i32 %577)
  br label %579

579:                                              ; preds = %533, %526
  br label %580

580:                                              ; preds = %579, %501
  br label %1397

581:                                              ; preds = %3
  %582 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %583 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %582, i32 0, i32 15
  %584 = load %struct.TYPE_75__*, %struct.TYPE_75__** %583, align 8
  %585 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %584, i32 0, i32 2
  %586 = load i32, i32* %585, align 8
  %587 = load i32, i32* @DT_NF_REF, align 4
  %588 = and i32 %586, %587
  store i32 %588, i32* %17, align 4
  %589 = load i32, i32* @DT_NF_REF, align 4
  %590 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %591 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %590, i32 0, i32 15
  %592 = load %struct.TYPE_75__*, %struct.TYPE_75__** %591, align 8
  %593 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %592, i32 0, i32 2
  %594 = load i32, i32* %593, align 8
  %595 = or i32 %594, %589
  store i32 %595, i32* %593, align 8
  %596 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %597 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %596, i32 0, i32 15
  %598 = load %struct.TYPE_75__*, %struct.TYPE_75__** %597, align 8
  %599 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %600 = load i32*, i32** %6, align 8
  call void @dt_cg_node(%struct.TYPE_75__* %598, %struct.TYPE_76__* %599, i32* %600)
  %601 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %602 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %601, i32 0, i32 15
  %603 = load %struct.TYPE_75__*, %struct.TYPE_75__** %602, align 8
  %604 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %603, i32 0, i32 1
  %605 = load i32, i32* %604, align 4
  %606 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %607 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %606, i32 0, i32 1
  store i32 %605, i32* %607, align 4
  %608 = load i32, i32* @DT_NF_REF, align 4
  %609 = xor i32 %608, -1
  %610 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %611 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %610, i32 0, i32 15
  %612 = load %struct.TYPE_75__*, %struct.TYPE_75__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %612, i32 0, i32 2
  %614 = load i32, i32* %613, align 8
  %615 = and i32 %614, %609
  store i32 %615, i32* %613, align 8
  %616 = load i32, i32* %17, align 4
  %617 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %618 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %617, i32 0, i32 15
  %619 = load %struct.TYPE_75__*, %struct.TYPE_75__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %619, i32 0, i32 2
  %621 = load i32, i32* %620, align 8
  %622 = or i32 %621, %616
  store i32 %622, i32* %620, align 8
  br label %1397

623:                                              ; preds = %3
  %624 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %625 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %624, i32 0, i32 15
  %626 = load %struct.TYPE_75__*, %struct.TYPE_75__** %625, align 8
  %627 = call i64 @dt_node_sizeof(%struct.TYPE_75__* %626)
  store i64 %627, i64* %18, align 8
  %628 = load i32*, i32** %6, align 8
  %629 = call i8* @dt_regset_alloc(i32* %628)
  %630 = ptrtoint i8* %629 to i32
  %631 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %632 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %631, i32 0, i32 1
  store i32 %630, i32* %632, align 4
  %633 = load i64, i64* %18, align 8
  %634 = icmp ne i64 %633, 0
  %635 = zext i1 %634 to i32
  %636 = call i32 @assert(i32 %635)
  %637 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %638 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %639 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %638, i32 0, i32 1
  %640 = load i32, i32* %639, align 4
  %641 = load i64, i64* %18, align 8
  %642 = call i32 @dt_cg_setx(%struct.TYPE_76__* %637, i32 %640, i64 %641)
  br label %1397

643:                                              ; preds = %3
  %644 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %645 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %644, i32 0, i32 15
  %646 = load %struct.TYPE_75__*, %struct.TYPE_75__** %645, align 8
  %647 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %648 = load i32*, i32** %6, align 8
  call void @dt_cg_node(%struct.TYPE_75__* %646, %struct.TYPE_76__* %647, i32* %648)
  %649 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %650 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %649, i32 0, i32 15
  %651 = load %struct.TYPE_75__*, %struct.TYPE_75__** %650, align 8
  %652 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %651, i32 0, i32 1
  %653 = load i32, i32* %652, align 4
  %654 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %655 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %654, i32 0, i32 1
  store i32 %653, i32* %655, align 4
  br label %1397

656:                                              ; preds = %3
  %657 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %658 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %657, i32 0, i32 3
  %659 = load i32, i32* %658, align 4
  %660 = load i32, i32* @DT_NODE_XLATOR, align 4
  %661 = icmp eq i32 %659, %660
  br i1 %661, label %662, label %727

662:                                              ; preds = %656
  %663 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %664 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %663, i32 0, i32 14
  %665 = load %struct.TYPE_73__*, %struct.TYPE_73__** %664, align 8
  store %struct.TYPE_73__* %665, %struct.TYPE_73__** %19, align 8
  %666 = load %struct.TYPE_73__*, %struct.TYPE_73__** %19, align 8
  %667 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %666, i32 0, i32 3
  %668 = load %struct.TYPE_72__*, %struct.TYPE_72__** %667, align 8
  %669 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 4
  %671 = load i32, i32* @DT_IDFLG_CGREG, align 4
  %672 = and i32 %670, %671
  %673 = call i32 @assert(i32 %672)
  %674 = load %struct.TYPE_73__*, %struct.TYPE_73__** %19, align 8
  %675 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %674, i32 0, i32 3
  %676 = load %struct.TYPE_72__*, %struct.TYPE_72__** %675, align 8
  %677 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %676, i32 0, i32 1
  %678 = load i32, i32* %677, align 4
  %679 = icmp ne i32 %678, 0
  %680 = zext i1 %679 to i32
  %681 = call i32 @assert(i32 %680)
  %682 = load i32*, i32** %6, align 8
  %683 = call i8* @dt_regset_alloc(i32* %682)
  %684 = ptrtoint i8* %683 to i32
  %685 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %686 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %685, i32 0, i32 1
  store i32 %684, i32* %686, align 4
  %687 = load %struct.TYPE_73__*, %struct.TYPE_73__** %19, align 8
  %688 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %687, i32 0, i32 0
  %689 = load i32, i32* %688, align 8
  %690 = icmp eq i32 %689, -1
  br i1 %690, label %691, label %707

691:                                              ; preds = %662
  %692 = load %struct.TYPE_73__*, %struct.TYPE_73__** %19, align 8
  %693 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %692, i32 0, i32 3
  %694 = load %struct.TYPE_72__*, %struct.TYPE_72__** %693, align 8
  %695 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %694, i32 0, i32 1
  %696 = load i32, i32* %695, align 4
  %697 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %698 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %697, i32 0, i32 1
  %699 = load i32, i32* %698, align 4
  %700 = call i32 @DIF_INSTR_MOV(i32 %696, i32 %699)
  store i32 %700, i32* %11, align 4
  %701 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %702 = load i32, i32* @DT_LBL_NONE, align 4
  %703 = load i32, i32* %11, align 4
  %704 = call i32 @dt_cg_node_alloc(i32 %702, i32 %703)
  %705 = call i32 @dt_irlist_append(%struct.TYPE_76__* %701, i32 %704)
  %706 = load i32, i32* @DIF_OP_XLATE, align 4
  store i32 %706, i32* %14, align 4
  br label %709

707:                                              ; preds = %662
  %708 = load i32, i32* @DIF_OP_XLARG, align 4
  store i32 %708, i32* %14, align 4
  br label %709

709:                                              ; preds = %707, %691
  %710 = load i32, i32* %14, align 4
  %711 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %712 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %711, i32 0, i32 1
  %713 = load i32, i32* %712, align 4
  %714 = call i32 @DIF_INSTR_XLATE(i32 %710, i32 0, i32 %713)
  store i32 %714, i32* %11, align 4
  %715 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %716 = load i32, i32* @DT_LBL_NONE, align 4
  %717 = load i32, i32* %11, align 4
  %718 = call i32 @dt_cg_node_alloc(i32 %716, i32 %717)
  %719 = call i32 @dt_irlist_append(%struct.TYPE_76__* %715, i32 %718)
  %720 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %721 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %720, i32 0, i32 13
  %722 = load i32, i32* %721, align 8
  %723 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %724 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %723, i32 0, i32 0
  %725 = load %struct.TYPE_71__*, %struct.TYPE_71__** %724, align 8
  %726 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %725, i32 0, i32 0
  store i32 %722, i32* %726, align 4
  br label %1397

727:                                              ; preds = %656
  %728 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %729 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %728, i32 0, i32 3
  %730 = load i32, i32* %729, align 4
  %731 = load i32, i32* @DT_NODE_OP2, align 4
  %732 = icmp eq i32 %730, %731
  %733 = zext i1 %732 to i32
  %734 = call i32 @assert(i32 %733)
  %735 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %736 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %735, i32 0, i32 10
  %737 = load %struct.TYPE_75__*, %struct.TYPE_75__** %736, align 8
  %738 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %739 = load i32*, i32** %6, align 8
  call void @dt_cg_node(%struct.TYPE_75__* %737, %struct.TYPE_76__* %738, i32* %739)
  %740 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %741 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %740, i32 0, i32 10
  %742 = load %struct.TYPE_75__*, %struct.TYPE_75__** %741, align 8
  %743 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %742, i32 0, i32 1
  %744 = load i32, i32* %743, align 4
  %745 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %746 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %745, i32 0, i32 1
  store i32 %744, i32* %746, align 4
  br label %1397

747:                                              ; preds = %3
  %748 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %749 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %748, i32 0, i32 10
  %750 = load %struct.TYPE_75__*, %struct.TYPE_75__** %749, align 8
  %751 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %752 = load i32*, i32** %6, align 8
  call void @dt_cg_node(%struct.TYPE_75__* %750, %struct.TYPE_76__* %751, i32* %752)
  %753 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %754 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %753, i32 0, i32 10
  %755 = load %struct.TYPE_75__*, %struct.TYPE_75__** %754, align 8
  %756 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %755, i32 0, i32 1
  %757 = load i32, i32* %756, align 4
  %758 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %759 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %758, i32 0, i32 1
  store i32 %757, i32* %759, align 4
  %760 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %761 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %760, i32 0, i32 10
  %762 = load %struct.TYPE_75__*, %struct.TYPE_75__** %761, align 8
  %763 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %764 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %765 = load i32*, i32** %6, align 8
  %766 = call i32 @dt_cg_typecast(%struct.TYPE_75__* %762, %struct.TYPE_75__* %763, %struct.TYPE_76__* %764, i32* %765)
  br label %1397

767:                                              ; preds = %3, %3
  %768 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %769 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %768, i32 0, i32 10
  %770 = load %struct.TYPE_75__*, %struct.TYPE_75__** %769, align 8
  %771 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %770, i32 0, i32 3
  %772 = load i32, i32* %771, align 4
  %773 = load i32, i32* @DT_NODE_IDENT, align 4
  %774 = icmp eq i32 %772, %773
  %775 = zext i1 %774 to i32
  %776 = call i32 @assert(i32 %775)
  %777 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %778 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %777, i32 0, i32 9
  %779 = load %struct.TYPE_75__*, %struct.TYPE_75__** %778, align 8
  %780 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %781 = load i32*, i32** %6, align 8
  call void @dt_cg_node(%struct.TYPE_75__* %779, %struct.TYPE_76__* %780, i32* %781)
  %782 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %783 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %782, i32 0, i32 9
  %784 = load %struct.TYPE_75__*, %struct.TYPE_75__** %783, align 8
  %785 = load i32, i32* @DT_IDENT_XLSOU, align 4
  %786 = call %struct.TYPE_77__* @dt_node_resolve(%struct.TYPE_75__* %784, i32 %785)
  store %struct.TYPE_77__* %786, %struct.TYPE_77__** %12, align 8
  %787 = icmp ne %struct.TYPE_77__* %786, null
  br i1 %787, label %795, label %788

788:                                              ; preds = %767
  %789 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %790 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %789, i32 0, i32 9
  %791 = load %struct.TYPE_75__*, %struct.TYPE_75__** %790, align 8
  %792 = load i32, i32* @DT_IDENT_XLPTR, align 4
  %793 = call %struct.TYPE_77__* @dt_node_resolve(%struct.TYPE_75__* %791, i32 %792)
  store %struct.TYPE_77__* %793, %struct.TYPE_77__** %12, align 8
  %794 = icmp ne %struct.TYPE_77__* %793, null
  br i1 %794, label %795, label %872

795:                                              ; preds = %788, %767
  %796 = load %struct.TYPE_77__*, %struct.TYPE_77__** %12, align 8
  %797 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %796, i32 0, i32 2
  %798 = load %struct.TYPE_73__*, %struct.TYPE_73__** %797, align 8
  store %struct.TYPE_73__* %798, %struct.TYPE_73__** %20, align 8
  %799 = load %struct.TYPE_73__*, %struct.TYPE_73__** %20, align 8
  %800 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %801 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %800, i32 0, i32 10
  %802 = load %struct.TYPE_75__*, %struct.TYPE_75__** %801, align 8
  %803 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %802, i32 0, i32 8
  %804 = load i32, i32* %803, align 4
  %805 = call %struct.TYPE_75__* @dt_xlator_member(%struct.TYPE_73__* %799, i32 %804)
  store %struct.TYPE_75__* %805, %struct.TYPE_75__** %21, align 8
  %806 = load %struct.TYPE_75__*, %struct.TYPE_75__** %21, align 8
  %807 = icmp ne %struct.TYPE_75__* %806, null
  %808 = zext i1 %807 to i32
  %809 = call i32 @assert(i32 %808)
  %810 = load i32, i32* @DT_IDFLG_CGREG, align 4
  %811 = load %struct.TYPE_73__*, %struct.TYPE_73__** %20, align 8
  %812 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %811, i32 0, i32 3
  %813 = load %struct.TYPE_72__*, %struct.TYPE_72__** %812, align 8
  %814 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %813, i32 0, i32 0
  %815 = load i32, i32* %814, align 4
  %816 = or i32 %815, %810
  store i32 %816, i32* %814, align 4
  %817 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %818 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %817, i32 0, i32 9
  %819 = load %struct.TYPE_75__*, %struct.TYPE_75__** %818, align 8
  %820 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %819, i32 0, i32 1
  %821 = load i32, i32* %820, align 4
  %822 = load %struct.TYPE_73__*, %struct.TYPE_73__** %20, align 8
  %823 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %822, i32 0, i32 3
  %824 = load %struct.TYPE_72__*, %struct.TYPE_72__** %823, align 8
  %825 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %824, i32 0, i32 1
  store i32 %821, i32* %825, align 4
  %826 = load %struct.TYPE_75__*, %struct.TYPE_75__** %21, align 8
  %827 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %826, i32 0, i32 12
  %828 = load %struct.TYPE_75__*, %struct.TYPE_75__** %827, align 8
  %829 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %830 = load i32*, i32** %6, align 8
  call void @dt_cg_node(%struct.TYPE_75__* %828, %struct.TYPE_76__* %829, i32* %830)
  %831 = load %struct.TYPE_75__*, %struct.TYPE_75__** %21, align 8
  %832 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %831, i32 0, i32 12
  %833 = load %struct.TYPE_75__*, %struct.TYPE_75__** %832, align 8
  %834 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %833, i32 0, i32 1
  %835 = load i32, i32* %834, align 4
  %836 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %837 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %836, i32 0, i32 1
  store i32 %835, i32* %837, align 4
  %838 = load %struct.TYPE_75__*, %struct.TYPE_75__** %21, align 8
  %839 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %838, i32 0, i32 12
  %840 = load %struct.TYPE_75__*, %struct.TYPE_75__** %839, align 8
  %841 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %842 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %843 = load i32*, i32** %6, align 8
  %844 = call i32 @dt_cg_typecast(%struct.TYPE_75__* %840, %struct.TYPE_75__* %841, %struct.TYPE_76__* %842, i32* %843)
  %845 = load i32, i32* @DT_IDFLG_CGREG, align 4
  %846 = xor i32 %845, -1
  %847 = load %struct.TYPE_73__*, %struct.TYPE_73__** %20, align 8
  %848 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %847, i32 0, i32 3
  %849 = load %struct.TYPE_72__*, %struct.TYPE_72__** %848, align 8
  %850 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %849, i32 0, i32 0
  %851 = load i32, i32* %850, align 4
  %852 = and i32 %851, %846
  store i32 %852, i32* %850, align 4
  %853 = load %struct.TYPE_73__*, %struct.TYPE_73__** %20, align 8
  %854 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %853, i32 0, i32 3
  %855 = load %struct.TYPE_72__*, %struct.TYPE_72__** %854, align 8
  %856 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %855, i32 0, i32 1
  store i32 0, i32* %856, align 4
  %857 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %858 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %857, i32 0, i32 9
  %859 = load %struct.TYPE_75__*, %struct.TYPE_75__** %858, align 8
  %860 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %859, i32 0, i32 1
  %861 = load i32, i32* %860, align 4
  %862 = icmp ne i32 %861, -1
  br i1 %862, label %863, label %871

863:                                              ; preds = %795
  %864 = load i32*, i32** %6, align 8
  %865 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %866 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %865, i32 0, i32 9
  %867 = load %struct.TYPE_75__*, %struct.TYPE_75__** %866, align 8
  %868 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %867, i32 0, i32 1
  %869 = load i32, i32* %868, align 4
  %870 = call i32 @dt_regset_free(i32* %864, i32 %869)
  br label %871

871:                                              ; preds = %863, %795
  br label %1397

872:                                              ; preds = %788
  %873 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %874 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %873, i32 0, i32 9
  %875 = load %struct.TYPE_75__*, %struct.TYPE_75__** %874, align 8
  %876 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %875, i32 0, i32 11
  %877 = load i32*, i32** %876, align 8
  store i32* %877, i32** %7, align 8
  %878 = load i32*, i32** %7, align 8
  %879 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %880 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %879, i32 0, i32 9
  %881 = load %struct.TYPE_75__*, %struct.TYPE_75__** %880, align 8
  %882 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %881, i32 0, i32 5
  %883 = load i32, i32* %882, align 8
  %884 = call i32 @ctf_type_resolve(i32* %878, i32 %883)
  store i32 %884, i32* %10, align 4
  %885 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %886 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %885, i32 0, i32 0
  %887 = load i32, i32* %886, align 8
  %888 = icmp eq i32 %887, 139
  br i1 %888, label %889, label %896

889:                                              ; preds = %872
  %890 = load i32*, i32** %7, align 8
  %891 = load i32, i32* %10, align 4
  %892 = call i32 @ctf_type_reference(i32* %890, i32 %891)
  store i32 %892, i32* %10, align 4
  %893 = load i32*, i32** %7, align 8
  %894 = load i32, i32* %10, align 4
  %895 = call i32 @ctf_type_resolve(i32* %893, i32 %894)
  store i32 %895, i32* %10, align 4
  br label %896

896:                                              ; preds = %889, %872
  %897 = load i32*, i32** %7, align 8
  store i32* %897, i32** %8, align 8
  %898 = load i32, i32* %10, align 4
  %899 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %900 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %899, i32 0, i32 10
  %901 = load %struct.TYPE_75__*, %struct.TYPE_75__** %900, align 8
  %902 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %901, i32 0, i32 8
  %903 = load i32, i32* %902, align 4
  %904 = call i32* @dt_cg_membinfo(i32* %897, i32 %898, i32 %903, %struct.TYPE_78__* %9)
  store i32* %904, i32** %7, align 8
  %905 = icmp eq i32* %904, null
  br i1 %905, label %906, label %918

906:                                              ; preds = %896
  %907 = load i32*, i32** %8, align 8
  %908 = call i32 @ctf_errno(i32* %907)
  %909 = load %struct.TYPE_70__*, %struct.TYPE_70__** @yypcb, align 8
  %910 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %909, i32 0, i32 0
  %911 = load %struct.TYPE_74__*, %struct.TYPE_74__** %910, align 8
  %912 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %911, i32 0, i32 0
  store i32 %908, i32* %912, align 4
  %913 = load %struct.TYPE_70__*, %struct.TYPE_70__** @yypcb, align 8
  %914 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %913, i32 0, i32 1
  %915 = load i32, i32* %914, align 8
  %916 = load i32, i32* @EDT_CTF, align 4
  %917 = call i32 @longjmp(i32 %915, i32 %916)
  br label %918

918:                                              ; preds = %906, %896
  %919 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %9, i32 0, i32 0
  %920 = load i64, i64* %919, align 8
  %921 = icmp ne i64 %920, 0
  br i1 %921, label %922, label %954

922:                                              ; preds = %918
  %923 = load i32*, i32** %6, align 8
  %924 = call i8* @dt_regset_alloc(i32* %923)
  %925 = ptrtoint i8* %924 to i32
  store i32 %925, i32* %22, align 4
  %926 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %927 = load i32, i32* %22, align 4
  %928 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %9, i32 0, i32 0
  %929 = load i64, i64* %928, align 8
  %930 = load i64, i64* @NBBY, align 8
  %931 = udiv i64 %929, %930
  %932 = call i32 @dt_cg_setx(%struct.TYPE_76__* %926, i32 %927, i64 %931)
  %933 = load i32, i32* @DIF_OP_ADD, align 4
  %934 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %935 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %934, i32 0, i32 9
  %936 = load %struct.TYPE_75__*, %struct.TYPE_75__** %935, align 8
  %937 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %936, i32 0, i32 1
  %938 = load i32, i32* %937, align 4
  %939 = load i32, i32* %22, align 4
  %940 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %941 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %940, i32 0, i32 9
  %942 = load %struct.TYPE_75__*, %struct.TYPE_75__** %941, align 8
  %943 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %942, i32 0, i32 1
  %944 = load i32, i32* %943, align 4
  %945 = call i32 @DIF_INSTR_FMT(i32 %933, i32 %938, i32 %939, i32 %944)
  store i32 %945, i32* %11, align 4
  %946 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %947 = load i32, i32* @DT_LBL_NONE, align 4
  %948 = load i32, i32* %11, align 4
  %949 = call i32 @dt_cg_node_alloc(i32 %947, i32 %948)
  %950 = call i32 @dt_irlist_append(%struct.TYPE_76__* %946, i32 %949)
  %951 = load i32*, i32** %6, align 8
  %952 = load i32, i32* %22, align 4
  %953 = call i32 @dt_regset_free(i32* %951, i32 %952)
  br label %954

954:                                              ; preds = %922, %918
  %955 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %956 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %955, i32 0, i32 2
  %957 = load i32, i32* %956, align 8
  %958 = load i32, i32* @DT_NF_REF, align 4
  %959 = and i32 %957, %958
  %960 = icmp ne i32 %959, 0
  br i1 %960, label %1023, label %961

961:                                              ; preds = %954
  %962 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %963 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %962, i32 0, i32 2
  %964 = load i32, i32* %963, align 8
  %965 = load i32, i32* @DT_NF_USERLAND, align 4
  %966 = and i32 %964, %965
  store i32 %966, i32* %23, align 4
  %967 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %968 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %967, i32 0, i32 9
  %969 = load %struct.TYPE_75__*, %struct.TYPE_75__** %968, align 8
  %970 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %969, i32 0, i32 2
  %971 = load i32, i32* %970, align 8
  %972 = load i32, i32* @DT_NF_USERLAND, align 4
  %973 = and i32 %971, %972
  %974 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %975 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %974, i32 0, i32 2
  %976 = load i32, i32* %975, align 8
  %977 = or i32 %976, %973
  store i32 %977, i32* %975, align 8
  %978 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %979 = load i32*, i32** %7, align 8
  %980 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %9, i32 0, i32 1
  %981 = load i32, i32* %980, align 8
  %982 = call i32 @dt_cg_load(%struct.TYPE_75__* %978, i32* %979, i32 %981)
  %983 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %984 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %983, i32 0, i32 9
  %985 = load %struct.TYPE_75__*, %struct.TYPE_75__** %984, align 8
  %986 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %985, i32 0, i32 1
  %987 = load i32, i32* %986, align 4
  %988 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %989 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %988, i32 0, i32 9
  %990 = load %struct.TYPE_75__*, %struct.TYPE_75__** %989, align 8
  %991 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %990, i32 0, i32 1
  %992 = load i32, i32* %991, align 4
  %993 = call i32 @DIF_INSTR_LOAD(i32 %982, i32 %987, i32 %992)
  store i32 %993, i32* %11, align 4
  %994 = load i32, i32* @DT_NF_USERLAND, align 4
  %995 = xor i32 %994, -1
  %996 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %997 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %996, i32 0, i32 2
  %998 = load i32, i32* %997, align 8
  %999 = and i32 %998, %995
  store i32 %999, i32* %997, align 8
  %1000 = load i32, i32* %23, align 4
  %1001 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1002 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1001, i32 0, i32 2
  %1003 = load i32, i32* %1002, align 8
  %1004 = or i32 %1003, %1000
  store i32 %1004, i32* %1002, align 8
  %1005 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1006 = load i32, i32* @DT_LBL_NONE, align 4
  %1007 = load i32, i32* %11, align 4
  %1008 = call i32 @dt_cg_node_alloc(i32 %1006, i32 %1007)
  %1009 = call i32 @dt_irlist_append(%struct.TYPE_76__* %1005, i32 %1008)
  %1010 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1011 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1010, i32 0, i32 2
  %1012 = load i32, i32* %1011, align 8
  %1013 = load i32, i32* @DT_NF_BITFIELD, align 4
  %1014 = and i32 %1012, %1013
  %1015 = icmp ne i32 %1014, 0
  br i1 %1015, label %1016, label %1022

1016:                                             ; preds = %961
  %1017 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1018 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1019 = load i32*, i32** %6, align 8
  %1020 = load i32*, i32** %7, align 8
  %1021 = call i32 @dt_cg_field_get(%struct.TYPE_75__* %1017, %struct.TYPE_76__* %1018, i32* %1019, i32* %1020, %struct.TYPE_78__* %9)
  br label %1022

1022:                                             ; preds = %1016, %961
  br label %1023

1023:                                             ; preds = %1022, %954
  %1024 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1025 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1024, i32 0, i32 9
  %1026 = load %struct.TYPE_75__*, %struct.TYPE_75__** %1025, align 8
  %1027 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1026, i32 0, i32 1
  %1028 = load i32, i32* %1027, align 4
  %1029 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1030 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1029, i32 0, i32 1
  store i32 %1028, i32* %1030, align 4
  br label %1397

1031:                                             ; preds = %3
  %1032 = load i32*, i32** %6, align 8
  %1033 = call i8* @dt_regset_alloc(i32* %1032)
  %1034 = ptrtoint i8* %1033 to i32
  %1035 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1036 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1035, i32 0, i32 1
  store i32 %1034, i32* %1036, align 4
  %1037 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1038 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1037, i32 0, i32 3
  %1039 = load i32, i32* %1038, align 4
  %1040 = load i32, i32* @DT_NODE_STRING, align 4
  %1041 = icmp eq i32 %1039, %1040
  %1042 = zext i1 %1041 to i32
  %1043 = call i32 @assert(i32 %1042)
  %1044 = load %struct.TYPE_70__*, %struct.TYPE_70__** @yypcb, align 8
  %1045 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1044, i32 0, i32 2
  %1046 = load i32, i32* %1045, align 4
  %1047 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1048 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1047, i32 0, i32 8
  %1049 = load i32, i32* %1048, align 4
  %1050 = call i64 @dt_strtab_insert(i32 %1046, i32 %1049)
  store i64 %1050, i64* %13, align 8
  %1051 = load i64, i64* %13, align 8
  %1052 = icmp eq i64 %1051, -1
  br i1 %1052, label %1053, label %1059

1053:                                             ; preds = %1031
  %1054 = load %struct.TYPE_70__*, %struct.TYPE_70__** @yypcb, align 8
  %1055 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1054, i32 0, i32 1
  %1056 = load i32, i32* %1055, align 8
  %1057 = load i32, i32* @EDT_NOMEM, align 4
  %1058 = call i32 @longjmp(i32 %1056, i32 %1057)
  br label %1059

1059:                                             ; preds = %1053, %1031
  %1060 = load i64, i64* %13, align 8
  %1061 = load i64, i64* @DIF_STROFF_MAX, align 8
  %1062 = icmp sgt i64 %1060, %1061
  br i1 %1062, label %1063, label %1069

1063:                                             ; preds = %1059
  %1064 = load %struct.TYPE_70__*, %struct.TYPE_70__** @yypcb, align 8
  %1065 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1064, i32 0, i32 1
  %1066 = load i32, i32* %1065, align 8
  %1067 = load i32, i32* @EDT_STR2BIG, align 4
  %1068 = call i32 @longjmp(i32 %1066, i32 %1067)
  br label %1069

1069:                                             ; preds = %1063, %1059
  %1070 = load i64, i64* %13, align 8
  %1071 = trunc i64 %1070 to i32
  %1072 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1073 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1072, i32 0, i32 1
  %1074 = load i32, i32* %1073, align 4
  %1075 = call i32 @DIF_INSTR_SETS(i32 %1071, i32 %1074)
  store i32 %1075, i32* %11, align 4
  %1076 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1077 = load i32, i32* @DT_LBL_NONE, align 4
  %1078 = load i32, i32* %11, align 4
  %1079 = call i32 @dt_cg_node_alloc(i32 %1077, i32 %1078)
  %1080 = call i32 @dt_irlist_append(%struct.TYPE_76__* %1076, i32 %1079)
  br label %1397

1081:                                             ; preds = %3
  %1082 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1083 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1082, i32 0, i32 3
  %1084 = load i32, i32* %1083, align 4
  %1085 = icmp eq i32 %1084, 179
  br i1 %1085, label %1086, label %1115

1086:                                             ; preds = %1081
  %1087 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1088 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1087, i32 0, i32 6
  %1089 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1088, align 8
  %1090 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1089, i32 0, i32 0
  %1091 = load i32, i32* %1090, align 8
  %1092 = load i32, i32* @DT_IDFLG_CGREG, align 4
  %1093 = and i32 %1091, %1092
  %1094 = icmp ne i32 %1093, 0
  br i1 %1094, label %1095, label %1115

1095:                                             ; preds = %1086
  %1096 = load i32*, i32** %6, align 8
  %1097 = call i8* @dt_regset_alloc(i32* %1096)
  %1098 = ptrtoint i8* %1097 to i32
  %1099 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1100 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1099, i32 0, i32 1
  store i32 %1098, i32* %1100, align 4
  %1101 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1102 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1101, i32 0, i32 6
  %1103 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1102, align 8
  %1104 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1103, i32 0, i32 1
  %1105 = load i32, i32* %1104, align 4
  %1106 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1107 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1106, i32 0, i32 1
  %1108 = load i32, i32* %1107, align 4
  %1109 = call i32 @DIF_INSTR_MOV(i32 %1105, i32 %1108)
  store i32 %1109, i32* %11, align 4
  %1110 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1111 = load i32, i32* @DT_LBL_NONE, align 4
  %1112 = load i32, i32* %11, align 4
  %1113 = call i32 @dt_cg_node_alloc(i32 %1111, i32 %1112)
  %1114 = call i32 @dt_irlist_append(%struct.TYPE_76__* %1110, i32 %1113)
  br label %1397

1115:                                             ; preds = %1086, %1081
  %1116 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1117 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1116, i32 0, i32 3
  %1118 = load i32, i32* %1117, align 4
  %1119 = icmp eq i32 %1118, 179
  br i1 %1119, label %1120, label %1134

1120:                                             ; preds = %1115
  %1121 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1122 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1121, i32 0, i32 6
  %1123 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1122, align 8
  %1124 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1123, i32 0, i32 0
  %1125 = load i32, i32* %1124, align 8
  %1126 = load i32, i32* @DT_IDFLG_INLINE, align 4
  %1127 = and i32 %1125, %1126
  %1128 = icmp ne i32 %1127, 0
  br i1 %1128, label %1129, label %1134

1129:                                             ; preds = %1120
  %1130 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1131 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1132 = load i32*, i32** %6, align 8
  %1133 = call i32 @dt_cg_inline(%struct.TYPE_75__* %1130, %struct.TYPE_76__* %1131, i32* %1132)
  br label %1397

1134:                                             ; preds = %1120, %1115
  %1135 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1136 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1135, i32 0, i32 3
  %1137 = load i32, i32* %1136, align 4
  switch i32 %1137, label %1370 [
    i32 181, label %1138
    i32 179, label %1186
    i32 180, label %1296
  ]

1138:                                             ; preds = %1134
  %1139 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1140 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1139, i32 0, i32 6
  %1141 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1140, align 8
  store %struct.TYPE_77__* %1141, %struct.TYPE_77__** %12, align 8
  %1142 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1141, i32 0, i32 3
  %1143 = load i32, i32* %1142, align 8
  %1144 = load i32, i32* @DT_IDENT_FUNC, align 4
  %1145 = icmp ne i32 %1143, %1144
  br i1 %1145, label %1146, label %1157

1146:                                             ; preds = %1138
  %1147 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1148 = load i32, i32* @D_CG_EXPR, align 4
  %1149 = load %struct.TYPE_77__*, %struct.TYPE_77__** %12, align 8
  %1150 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1149, i32 0, i32 3
  %1151 = load i32, i32* %1150, align 8
  %1152 = call i32 @dt_idkind_name(i32 %1151)
  %1153 = load %struct.TYPE_77__*, %struct.TYPE_77__** %12, align 8
  %1154 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1153, i32 0, i32 4
  %1155 = load i32, i32* %1154, align 4
  %1156 = call i32 @dnerror(%struct.TYPE_75__* %1147, i32 %1148, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %1152, i32 %1155)
  br label %1157

1157:                                             ; preds = %1146, %1138
  %1158 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1159 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1158, i32 0, i32 6
  %1160 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1159, align 8
  %1161 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1162 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1161, i32 0, i32 7
  %1163 = load i32, i32* %1162, align 8
  %1164 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1165 = load i32*, i32** %6, align 8
  %1166 = call i32 @dt_cg_arglist(%struct.TYPE_77__* %1160, i32 %1163, %struct.TYPE_76__* %1164, i32* %1165)
  %1167 = load i32*, i32** %6, align 8
  %1168 = call i8* @dt_regset_alloc(i32* %1167)
  %1169 = ptrtoint i8* %1168 to i32
  %1170 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1171 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1170, i32 0, i32 1
  store i32 %1169, i32* %1171, align 4
  %1172 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1173 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1172, i32 0, i32 6
  %1174 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1173, align 8
  %1175 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1174, i32 0, i32 1
  %1176 = load i32, i32* %1175, align 4
  %1177 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1178 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1177, i32 0, i32 1
  %1179 = load i32, i32* %1178, align 4
  %1180 = call i32 @DIF_INSTR_CALL(i32 %1176, i32 %1179)
  store i32 %1180, i32* %11, align 4
  %1181 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1182 = load i32, i32* @DT_LBL_NONE, align 4
  %1183 = load i32, i32* %11, align 4
  %1184 = call i32 @dt_cg_node_alloc(i32 %1182, i32 %1183)
  %1185 = call i32 @dt_irlist_append(%struct.TYPE_76__* %1181, i32 %1184)
  br label %1376

1186:                                             ; preds = %1134
  %1187 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1188 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1187, i32 0, i32 6
  %1189 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1188, align 8
  %1190 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1189, i32 0, i32 3
  %1191 = load i32, i32* %1190, align 8
  %1192 = load i32, i32* @DT_IDENT_XLSOU, align 4
  %1193 = icmp eq i32 %1191, %1192
  br i1 %1193, label %1202, label %1194

1194:                                             ; preds = %1186
  %1195 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1196 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1195, i32 0, i32 6
  %1197 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1196, align 8
  %1198 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1197, i32 0, i32 3
  %1199 = load i32, i32* %1198, align 8
  %1200 = load i32, i32* @DT_IDENT_XLPTR, align 4
  %1201 = icmp eq i32 %1199, %1200
  br i1 %1201, label %1202, label %1216

1202:                                             ; preds = %1194, %1186
  %1203 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1204 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1203, i32 0, i32 6
  %1205 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1204, align 8
  %1206 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1205, i32 0, i32 1
  %1207 = load i32, i32* %1206, align 4
  %1208 = load i32, i32* @DIF_VAR_ARGS, align 4
  %1209 = icmp eq i32 %1207, %1208
  %1210 = zext i1 %1209 to i32
  %1211 = call i32 @assert(i32 %1210)
  %1212 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1213 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1214 = load i32*, i32** %6, align 8
  %1215 = call i32 @dt_cg_array_op(%struct.TYPE_75__* %1212, %struct.TYPE_76__* %1213, i32* %1214)
  br label %1376

1216:                                             ; preds = %1194
  %1217 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1218 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1217, i32 0, i32 6
  %1219 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1218, align 8
  %1220 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1219, i32 0, i32 3
  %1221 = load i32, i32* %1220, align 8
  %1222 = load i32, i32* @DT_IDENT_ARRAY, align 4
  %1223 = icmp eq i32 %1221, %1222
  br i1 %1223, label %1224, label %1243

1224:                                             ; preds = %1216
  %1225 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1226 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1225, i32 0, i32 6
  %1227 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1226, align 8
  %1228 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1227, i32 0, i32 1
  %1229 = load i32, i32* %1228, align 4
  %1230 = load i32, i32* @DIF_VAR_ARRAY_MAX, align 4
  %1231 = icmp sgt i32 %1229, %1230
  br i1 %1231, label %1232, label %1237

1232:                                             ; preds = %1224
  %1233 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1234 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1235 = load i32*, i32** %6, align 8
  %1236 = call i32 @dt_cg_assoc_op(%struct.TYPE_75__* %1233, %struct.TYPE_76__* %1234, i32* %1235)
  br label %1242

1237:                                             ; preds = %1224
  %1238 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1239 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1240 = load i32*, i32** %6, align 8
  %1241 = call i32 @dt_cg_array_op(%struct.TYPE_75__* %1238, %struct.TYPE_76__* %1239, i32* %1240)
  br label %1242

1242:                                             ; preds = %1237, %1232
  br label %1376

1243:                                             ; preds = %1216
  %1244 = load i32*, i32** %6, align 8
  %1245 = call i8* @dt_regset_alloc(i32* %1244)
  %1246 = ptrtoint i8* %1245 to i32
  %1247 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1248 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1247, i32 0, i32 1
  store i32 %1246, i32* %1248, align 4
  %1249 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1250 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1249, i32 0, i32 6
  %1251 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1250, align 8
  %1252 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1251, i32 0, i32 0
  %1253 = load i32, i32* %1252, align 8
  %1254 = load i32, i32* @DT_IDFLG_LOCAL, align 4
  %1255 = and i32 %1253, %1254
  %1256 = icmp ne i32 %1255, 0
  br i1 %1256, label %1257, label %1259

1257:                                             ; preds = %1243
  %1258 = load i32, i32* @DIF_OP_LDLS, align 4
  store i32 %1258, i32* %14, align 4
  br label %1273

1259:                                             ; preds = %1243
  %1260 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1261 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1260, i32 0, i32 6
  %1262 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1261, align 8
  %1263 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1262, i32 0, i32 0
  %1264 = load i32, i32* %1263, align 8
  %1265 = load i32, i32* @DT_IDFLG_TLS, align 4
  %1266 = and i32 %1264, %1265
  %1267 = icmp ne i32 %1266, 0
  br i1 %1267, label %1268, label %1270

1268:                                             ; preds = %1259
  %1269 = load i32, i32* @DIF_OP_LDTS, align 4
  store i32 %1269, i32* %14, align 4
  br label %1272

1270:                                             ; preds = %1259
  %1271 = load i32, i32* @DIF_OP_LDGS, align 4
  store i32 %1271, i32* %14, align 4
  br label %1272

1272:                                             ; preds = %1270, %1268
  br label %1273

1273:                                             ; preds = %1272, %1257
  %1274 = load i32, i32* @DT_IDFLG_DIFR, align 4
  %1275 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1276 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1275, i32 0, i32 6
  %1277 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1276, align 8
  %1278 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1277, i32 0, i32 0
  %1279 = load i32, i32* %1278, align 8
  %1280 = or i32 %1279, %1274
  store i32 %1280, i32* %1278, align 8
  %1281 = load i32, i32* %14, align 4
  %1282 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1283 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1282, i32 0, i32 6
  %1284 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1283, align 8
  %1285 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1284, i32 0, i32 1
  %1286 = load i32, i32* %1285, align 4
  %1287 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1288 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1287, i32 0, i32 1
  %1289 = load i32, i32* %1288, align 4
  %1290 = call i32 @DIF_INSTR_LDV(i32 %1281, i32 %1286, i32 %1289)
  store i32 %1290, i32* %11, align 4
  %1291 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1292 = load i32, i32* @DT_LBL_NONE, align 4
  %1293 = load i32, i32* %11, align 4
  %1294 = call i32 @dt_cg_node_alloc(i32 %1292, i32 %1293)
  %1295 = call i32 @dt_irlist_append(%struct.TYPE_76__* %1291, i32 %1294)
  br label %1376

1296:                                             ; preds = %1134
  %1297 = load %struct.TYPE_70__*, %struct.TYPE_70__** @yypcb, align 8
  %1298 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1297, i32 0, i32 0
  %1299 = load %struct.TYPE_74__*, %struct.TYPE_74__** %1298, align 8
  store %struct.TYPE_74__* %1299, %struct.TYPE_74__** %24, align 8
  %1300 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1301 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1300, i32 0, i32 6
  %1302 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1301, align 8
  %1303 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1302, i32 0, i32 2
  %1304 = load %struct.TYPE_73__*, %struct.TYPE_73__** %1303, align 8
  store %struct.TYPE_73__* %1304, %struct.TYPE_73__** %25, align 8
  %1305 = load %struct.TYPE_74__*, %struct.TYPE_74__** %24, align 8
  %1306 = load %struct.TYPE_73__*, %struct.TYPE_73__** %25, align 8
  %1307 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1306, i32 0, i32 2
  %1308 = load i32, i32* %1307, align 8
  %1309 = load %struct.TYPE_73__*, %struct.TYPE_73__** %25, align 8
  %1310 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1309, i32 0, i32 1
  %1311 = load i32, i32* %1310, align 4
  %1312 = call i32 @dtrace_lookup_by_name(%struct.TYPE_74__* %1305, i32 %1308, i32 %1311, %struct.TYPE_69__* %26, i32* null)
  %1313 = icmp eq i32 %1312, -1
  br i1 %1313, label %1314, label %1327

1314:                                             ; preds = %1296
  %1315 = load i32, i32* @D_UNKNOWN, align 4
  %1316 = load %struct.TYPE_73__*, %struct.TYPE_73__** %25, align 8
  %1317 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1316, i32 0, i32 2
  %1318 = load i32, i32* %1317, align 8
  %1319 = load %struct.TYPE_73__*, %struct.TYPE_73__** %25, align 8
  %1320 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1319, i32 0, i32 1
  %1321 = load i32, i32* %1320, align 4
  %1322 = load %struct.TYPE_74__*, %struct.TYPE_74__** %24, align 8
  %1323 = load %struct.TYPE_74__*, %struct.TYPE_74__** %24, align 8
  %1324 = call i32 @dtrace_errno(%struct.TYPE_74__* %1323)
  %1325 = call i32 @dtrace_errmsg(%struct.TYPE_74__* %1322, i32 %1324)
  %1326 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %1315, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %1318, i32 %1321, i32 %1325)
  br label %1327

1327:                                             ; preds = %1314, %1296
  %1328 = load i32*, i32** %6, align 8
  %1329 = call i8* @dt_regset_alloc(i32* %1328)
  %1330 = ptrtoint i8* %1329 to i32
  %1331 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1332 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1331, i32 0, i32 1
  store i32 %1330, i32* %1332, align 4
  %1333 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1334 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1335 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1334, i32 0, i32 6
  %1336 = load %struct.TYPE_77__*, %struct.TYPE_77__** %1335, align 8
  %1337 = load i32, i32* @DT_LBL_NONE, align 4
  %1338 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1339 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1338, i32 0, i32 1
  %1340 = load i32, i32* %1339, align 4
  %1341 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %26, i32 0, i32 0
  %1342 = load i32, i32* %1341, align 4
  %1343 = call i32 @dt_cg_xsetx(%struct.TYPE_76__* %1333, %struct.TYPE_77__* %1336, i32 %1337, i32 %1340, i32 %1342)
  %1344 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1345 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1344, i32 0, i32 2
  %1346 = load i32, i32* %1345, align 8
  %1347 = load i32, i32* @DT_NF_REF, align 4
  %1348 = and i32 %1346, %1347
  %1349 = icmp ne i32 %1348, 0
  br i1 %1349, label %1369, label %1350

1350:                                             ; preds = %1327
  %1351 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1352 = load i32*, i32** %7, align 8
  %1353 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1354 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1353, i32 0, i32 5
  %1355 = load i32, i32* %1354, align 8
  %1356 = call i32 @dt_cg_load(%struct.TYPE_75__* %1351, i32* %1352, i32 %1355)
  %1357 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1358 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1357, i32 0, i32 1
  %1359 = load i32, i32* %1358, align 4
  %1360 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1361 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1360, i32 0, i32 1
  %1362 = load i32, i32* %1361, align 4
  %1363 = call i32 @DIF_INSTR_LOAD(i32 %1356, i32 %1359, i32 %1362)
  store i32 %1363, i32* %11, align 4
  %1364 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1365 = load i32, i32* @DT_LBL_NONE, align 4
  %1366 = load i32, i32* %11, align 4
  %1367 = call i32 @dt_cg_node_alloc(i32 %1365, i32 %1366)
  %1368 = call i32 @dt_irlist_append(%struct.TYPE_76__* %1364, i32 %1367)
  br label %1369

1369:                                             ; preds = %1350, %1327
  br label %1376

1370:                                             ; preds = %1134
  %1371 = load i32, i32* @D_UNKNOWN, align 4
  %1372 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1373 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1372, i32 0, i32 3
  %1374 = load i32, i32* %1373, align 4
  %1375 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %1371, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %1374)
  br label %1376

1376:                                             ; preds = %1370, %1369, %1273, %1242, %1202, %1157
  br label %1397

1377:                                             ; preds = %3
  %1378 = load i32*, i32** %6, align 8
  %1379 = call i8* @dt_regset_alloc(i32* %1378)
  %1380 = ptrtoint i8* %1379 to i32
  %1381 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1382 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1381, i32 0, i32 1
  store i32 %1380, i32* %1382, align 4
  %1383 = load %struct.TYPE_76__*, %struct.TYPE_76__** %5, align 8
  %1384 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1385 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1384, i32 0, i32 1
  %1386 = load i32, i32* %1385, align 4
  %1387 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1388 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1387, i32 0, i32 4
  %1389 = load i64, i64* %1388, align 8
  %1390 = call i32 @dt_cg_setx(%struct.TYPE_76__* %1383, i32 %1386, i64 %1389)
  br label %1397

1391:                                             ; preds = %3
  %1392 = load i32, i32* @D_UNKNOWN, align 4
  %1393 = load %struct.TYPE_75__*, %struct.TYPE_75__** %4, align 8
  %1394 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1393, i32 0, i32 0
  %1395 = load i32, i32* %1394, align 8
  %1396 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %1392, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %1395)
  br label %1397

1397:                                             ; preds = %1391, %1377, %1376, %1129, %1095, %1069, %1023, %871, %747, %727, %709, %643, %623, %581, %580, %456, %443, %437, %431, %425, %419, %394, %389, %386, %369, %349, %343, %337, %334, %314, %311, %297, %283, %269, %252, %246, %240, %234, %228, %223, %218, %213, %208, %201, %177, %167, %157, %147, %140, %119, %95, %85, %75, %58, %33
  ret void
}

declare dso_local i32 @dt_regset_free(i32*, i32) #1

declare dso_local i32 @dt_cg_asgn_op(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*) #1

declare dso_local i32 @dt_cg_arithmetic_op(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*, i32) #1

declare dso_local i32 @dt_cg_ternary_op(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*) #1

declare dso_local i32 @dt_cg_logical_or(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*) #1

declare dso_local i32 @dt_cg_logical_xor(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*) #1

declare dso_local i32 @dt_cg_logical_and(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*) #1

declare dso_local i32 @dt_cg_compare_op(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*, i32) #1

declare dso_local i32 @dt_cg_compare_signed(%struct.TYPE_75__*) #1

declare dso_local i32 @dt_cg_logical_neg(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*) #1

declare dso_local i32 @DIF_INSTR_NOT(i32, i32) #1

declare dso_local i32 @dt_irlist_append(%struct.TYPE_76__*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_cg_prearith_op(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*, i32) #1

declare dso_local i32 @dt_cg_postarith_op(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*, i32) #1

declare dso_local i32 @DIF_INSTR_FMT(i32, i32, i32, i32) #1

declare dso_local i32 @dt_node_is_dynamic(%struct.TYPE_75__*) #1

declare dso_local %struct.TYPE_77__* @dt_node_resolve(%struct.TYPE_75__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dt_cg_xlate_expand(%struct.TYPE_75__*, %struct.TYPE_77__*, %struct.TYPE_76__*, i32*) #1

declare dso_local i32 @DIF_INSTR_LOAD(i32, i32, i32) #1

declare dso_local i32 @dt_cg_load(%struct.TYPE_75__*, i32*, i32) #1

declare dso_local i64 @dt_node_sizeof(%struct.TYPE_75__*) #1

declare dso_local i8* @dt_regset_alloc(i32*) #1

declare dso_local i32 @dt_cg_setx(%struct.TYPE_76__*, i32, i64) #1

declare dso_local i32 @DIF_INSTR_MOV(i32, i32) #1

declare dso_local i32 @DIF_INSTR_XLATE(i32, i32, i32) #1

declare dso_local i32 @dt_cg_typecast(%struct.TYPE_75__*, %struct.TYPE_75__*, %struct.TYPE_76__*, i32*) #1

declare dso_local %struct.TYPE_75__* @dt_xlator_member(%struct.TYPE_73__*, i32) #1

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local i32 @ctf_type_reference(i32*, i32) #1

declare dso_local i32* @dt_cg_membinfo(i32*, i32, i32, %struct.TYPE_78__*) #1

declare dso_local i32 @ctf_errno(i32*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @dt_cg_field_get(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*, i32*, %struct.TYPE_78__*) #1

declare dso_local i64 @dt_strtab_insert(i32, i32) #1

declare dso_local i32 @DIF_INSTR_SETS(i32, i32) #1

declare dso_local i32 @dt_cg_inline(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*) #1

declare dso_local i32 @dnerror(%struct.TYPE_75__*, i32, i8*, i32, i32) #1

declare dso_local i32 @dt_idkind_name(i32) #1

declare dso_local i32 @dt_cg_arglist(%struct.TYPE_77__*, i32, %struct.TYPE_76__*, i32*) #1

declare dso_local i32 @DIF_INSTR_CALL(i32, i32) #1

declare dso_local i32 @dt_cg_array_op(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*) #1

declare dso_local i32 @dt_cg_assoc_op(%struct.TYPE_75__*, %struct.TYPE_76__*, i32*) #1

declare dso_local i32 @DIF_INSTR_LDV(i32, i32, i32) #1

declare dso_local i32 @dtrace_lookup_by_name(%struct.TYPE_74__*, i32, i32, %struct.TYPE_69__*, i32*) #1

declare dso_local i32 @xyerror(i32, i8*, i32, ...) #1

declare dso_local i32 @dtrace_errmsg(%struct.TYPE_74__*, i32) #1

declare dso_local i32 @dtrace_errno(%struct.TYPE_74__*) #1

declare dso_local i32 @dt_cg_xsetx(%struct.TYPE_76__*, %struct.TYPE_77__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

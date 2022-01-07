; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_asgn_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_asgn_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i64, i32, i32, %struct.TYPE_26__*, i32, i32, %struct.TYPE_26__*, i32, i32, %struct.TYPE_26__*, %struct.TYPE_26__*, i32 }
%struct.TYPE_27__ = type { i64, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32 }

@DT_IDENT_XLSOU = common dso_local global i32 0, align 4
@DT_NODE_OP2 = common dso_local global i64 0, align 8
@DT_TOK_DOT = common dso_local global i32 0, align 4
@DT_NODE_IDENT = common dso_local global i64 0, align 8
@DT_TOK_IDENT = common dso_local global i32 0, align 4
@DT_LBL_NONE = common dso_local global i32 0, align 4
@DT_IDFLG_CGREG = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i64 0, align 8
@yypcb = common dso_local global %struct.TYPE_29__* null, align 8
@EDT_CTF = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@DIF_OP_ADD = common dso_local global i32 0, align 4
@DT_NODE_VAR = common dso_local global i64 0, align 8
@DT_IDENT_ARRAY = common dso_local global i64 0, align 8
@DT_IDFLG_DIFW = common dso_local global i32 0, align 4
@DT_NF_REF = common dso_local global i32 0, align 4
@DT_NF_WRITABLE = common dso_local global i32 0, align 4
@DT_NF_LVALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, i32*, i32*)* @dt_cg_asgn_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_asgn_op(%struct.TYPE_26__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_28__, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__, align 8
  %13 = alloca %struct.TYPE_26__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %20 = load i32, i32* @DT_IDENT_XLSOU, align 4
  %21 = call %struct.TYPE_27__* @dt_node_resolve(%struct.TYPE_26__* %19, i32 %20)
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %8, align 8
  %22 = icmp ne %struct.TYPE_27__* %21, null
  br i1 %22, label %23, label %237

23:                                               ; preds = %3
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  store %struct.TYPE_25__* %26, %struct.TYPE_25__** %10, align 8
  %27 = call i32 @bzero(%struct.TYPE_26__* %12, i32 72)
  %28 = load i64, i64* @DT_NODE_OP2, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* @DT_TOK_DOT, align 4
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 11
  store i32 %30, i32* %31, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 3
  store %struct.TYPE_26__* %32, %struct.TYPE_26__** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 6
  store %struct.TYPE_26__* %13, %struct.TYPE_26__** %34, align 8
  %35 = call i32 @bzero(%struct.TYPE_26__* %13, i32 72)
  %36 = load i64, i64* @DT_NODE_IDENT, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = load i32, i32* @DT_TOK_IDENT, align 4
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 11
  store i32 %38, i32* %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @dt_regset_alloc(i32* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ctf_type_size(i32 %46, i32 %49)
  %51 = call i32 @dt_cg_setx(i32* %42, i32 %43, i32 %50)
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @DIF_INSTR_ALLOCS(i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @DT_LBL_NONE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dt_cg_node_alloc(i32 %56, i32 %57)
  %59 = call i32 @dt_irlist_append(i32* %55, i32 %58)
  %60 = load i32, i32* @DT_IDFLG_CGREG, align 4
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %60
  store i32 %66, i32* %64, align 4
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %77, align 8
  store %struct.TYPE_26__* %78, %struct.TYPE_26__** %11, align 8
  br label %79

79:                                               ; preds = %191, %23
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %81 = icmp ne %struct.TYPE_26__* %80, null
  br i1 %81, label %82, label %195

82:                                               ; preds = %79
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 9
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %84, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @dt_cg_node(%struct.TYPE_26__* %85, i32* %86, i32* %87)
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 9
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 9
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %97, align 8
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @dt_cg_typecast(%struct.TYPE_26__* %98, %struct.TYPE_26__* %99, i32* %100, i32* %101)
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @ctf_member_info(i32 %105, i32 %108, i32 %111, %struct.TYPE_28__* %9)
  %113 = load i64, i64* @CTF_ERR, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %82
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ctf_errno(i32 %118)
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** @yypcb, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 4
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** @yypcb, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @EDT_CTF, align 4
  %128 = call i32 @longjmp(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %115, %82
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %170

133:                                              ; preds = %129
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @dt_regset_alloc(i32* %134)
  store i32 %135, i32* %15, align 4
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %15, align 4
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @NBBY, align 4
  %141 = sdiv i32 %139, %140
  %142 = call i32 @dt_cg_setx(i32* %136, i32 %137, i32 %141)
  %143 = load i32, i32* @DIF_OP_ADD, align 4
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @DIF_INSTR_FMT(i32 %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* @DT_LBL_NONE, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @dt_cg_node_alloc(i32 %149, i32 %150)
  %152 = call i32 @dt_irlist_append(i32* %148, i32 %151)
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %154 = call i32 @dt_node_type_propagate(%struct.TYPE_26__* %153, %struct.TYPE_26__* %12)
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 6
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 8
  store i32 %157, i32* %160, align 4
  %161 = load i32, i32* %15, align 4
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  store i32 %161, i32* %162, align 8
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %164 = load i32*, i32** %5, align 8
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @dt_cg_store(%struct.TYPE_26__* %163, i32* %164, i32* %165, %struct.TYPE_26__* %12)
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @dt_regset_free(i32* %167, i32 %168)
  br label %185

170:                                              ; preds = %129
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %172 = call i32 @dt_node_type_propagate(%struct.TYPE_26__* %171, %struct.TYPE_26__* %12)
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 6
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 8
  store i32 %175, i32* %178, align 4
  %179 = load i32, i32* %14, align 4
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  store i32 %179, i32* %180, align 8
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %182 = load i32*, i32** %5, align 8
  %183 = load i32*, i32** %6, align 8
  %184 = call i32 @dt_cg_store(%struct.TYPE_26__* %181, i32* %182, i32* %183, %struct.TYPE_26__* %12)
  br label %185

185:                                              ; preds = %170, %133
  %186 = load i32*, i32** %6, align 8
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @dt_regset_free(i32* %186, i32 %189)
  br label %191

191:                                              ; preds = %185
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 10
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %193, align 8
  store %struct.TYPE_26__* %194, %struct.TYPE_26__** %11, align 8
  br label %79

195:                                              ; preds = %79
  %196 = load i32, i32* @DT_IDFLG_CGREG, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, %197
  store i32 %203, i32* %201, align 4
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  store i32 0, i32* %207, align 4
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 6
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, -1
  br i1 %213, label %214, label %222

214:                                              ; preds = %195
  %215 = load i32*, i32** %6, align 8
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 6
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @dt_regset_free(i32* %215, i32 %220)
  br label %222

222:                                              ; preds = %214, %195
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 6
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %225, %230
  %232 = zext i1 %231 to i32
  %233 = call i32 @assert(i32 %232)
  %234 = load i32, i32* %14, align 4
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 8
  br label %237

237:                                              ; preds = %222, %3
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @DT_NODE_VAR, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %287

245:                                              ; preds = %237
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 4
  %251 = call %struct.TYPE_27__* @dt_ident_resolve(i32 %250)
  store %struct.TYPE_27__* %251, %struct.TYPE_27__** %8, align 8
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @DT_IDENT_ARRAY, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %267

257:                                              ; preds = %245
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 3
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load i32*, i32** %5, align 8
  %265 = load i32*, i32** %6, align 8
  %266 = call i32 @dt_cg_arglist(%struct.TYPE_27__* %258, i32 %263, i32* %264, i32* %265)
  br label %267

267:                                              ; preds = %257, %245
  %268 = load i32, i32* @DT_IDFLG_DIFW, align 4
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 4
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %274 = call i32 @dt_cg_stvar(%struct.TYPE_27__* %273)
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @DIF_INSTR_STV(i32 %274, i32 %277, i32 %280)
  store i32 %281, i32* %7, align 4
  %282 = load i32*, i32** %5, align 8
  %283 = load i32, i32* @DT_LBL_NONE, align 4
  %284 = load i32, i32* %7, align 4
  %285 = call i32 @dt_cg_node_alloc(i32 %283, i32 %284)
  %286 = call i32 @dt_irlist_append(i32* %282, i32 %285)
  br label %353

287:                                              ; preds = %237
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 3
  %290 = load %struct.TYPE_26__*, %struct.TYPE_26__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @DT_NF_REF, align 4
  %294 = and i32 %292, %293
  store i32 %294, i32* %16, align 4
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 3
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @DT_NF_WRITABLE, align 4
  %301 = and i32 %299, %300
  %302 = call i32 @assert(i32 %301)
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 3
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @DT_NF_LVALUE, align 4
  %309 = and i32 %307, %308
  %310 = call i32 @assert(i32 %309)
  %311 = load i32, i32* @DT_NF_REF, align 4
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 3
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %311
  store i32 %317, i32* %315, align 4
  %318 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 3
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %319, align 8
  %321 = load i32*, i32** %5, align 8
  %322 = load i32*, i32** %6, align 8
  %323 = call i32 @dt_cg_node(%struct.TYPE_26__* %320, i32* %321, i32* %322)
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %325 = load i32*, i32** %5, align 8
  %326 = load i32*, i32** %6, align 8
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 3
  %329 = load %struct.TYPE_26__*, %struct.TYPE_26__** %328, align 8
  %330 = call i32 @dt_cg_store(%struct.TYPE_26__* %324, i32* %325, i32* %326, %struct.TYPE_26__* %329)
  %331 = load i32*, i32** %6, align 8
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %332, i32 0, i32 3
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @dt_regset_free(i32* %331, i32 %336)
  %338 = load i32, i32* @DT_NF_REF, align 4
  %339 = xor i32 %338, -1
  %340 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %340, i32 0, i32 3
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = and i32 %344, %339
  store i32 %345, i32* %343, align 4
  %346 = load i32, i32* %16, align 4
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %347, i32 0, i32 3
  %349 = load %struct.TYPE_26__*, %struct.TYPE_26__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = or i32 %351, %346
  store i32 %352, i32* %350, align 4
  br label %353

353:                                              ; preds = %287, %267
  ret void
}

declare dso_local %struct.TYPE_27__* @dt_node_resolve(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @dt_regset_alloc(i32*) #1

declare dso_local i32 @dt_cg_setx(i32*, i32, i32) #1

declare dso_local i32 @ctf_type_size(i32, i32) #1

declare dso_local i32 @DIF_INSTR_ALLOCS(i32, i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_cg_node(%struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32 @dt_cg_typecast(%struct.TYPE_26__*, %struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i64 @ctf_member_info(i32, i32, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @ctf_errno(i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @DIF_INSTR_FMT(i32, i32, i32, i32) #1

declare dso_local i32 @dt_node_type_propagate(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @dt_cg_store(%struct.TYPE_26__*, i32*, i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_27__* @dt_ident_resolve(i32) #1

declare dso_local i32 @dt_cg_arglist(%struct.TYPE_27__*, i32, i32*, i32*) #1

declare dso_local i32 @DIF_INSTR_STV(i32, i32, i32) #1

declare dso_local i32 @dt_cg_stvar(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

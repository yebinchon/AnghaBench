; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_xlate_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_xlate_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32*, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }

@DT_IDFLG_CGREG = common dso_local global i32 0, align 4
@NBBY = common dso_local global i64 0, align 8
@DIF_OP_ADD = common dso_local global i32 0, align 4
@DT_LBL_NONE = common dso_local global i32 0, align 4
@DIF_OP_STB = common dso_local global i32 0, align 4
@DIF_OP_STH = common dso_local global i32 0, align 4
@DIF_OP_STW = common dso_local global i32 0, align 4
@DIF_OP_STX = common dso_local global i32 0, align 4
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"internal error -- unexpected size: %lu\0A\00", align 1
@DIF_INSTR_FLUSHTS = common dso_local global i32 0, align 4
@DIF_OP_PUSHTV = common dso_local global i32 0, align 4
@DIF_TYPE_CTF = common dso_local global i32 0, align 4
@DIF_REG_R0 = common dso_local global i32 0, align 4
@DIF_SUBR_BCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i8*)* @dt_cg_xlate_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_cg_xlate_member(i8* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %10, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %11, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %12, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %13, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %15, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call %struct.TYPE_14__* @dt_xlator_member(%struct.TYPE_13__* %36, i8* %37)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %14, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %40 = icmp eq %struct.TYPE_14__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %234

42:                                               ; preds = %4
  %43 = load i32, i32* @DT_IDFLG_CGREG, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i64 %52, i64* %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @dt_cg_node(%struct.TYPE_16__* %59, i32* %60, i32* %61)
  %63 = load i32, i32* @DT_IDFLG_CGREG, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %64
  store i32 %70, i32* %68, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %17, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @dt_regset_alloc(i32* %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %16, align 4
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @NBBY, align 8
  %86 = udiv i64 %84, %85
  %87 = call i32 @dt_cg_setx(i32* %82, i32 %83, i64 %86)
  %88 = load i32, i32* @DIF_OP_ADD, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @DIF_INSTR_FMT(i32 %88, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %18, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* @DT_LBL_NONE, align 4
  %97 = load i32, i32* %18, align 4
  %98 = call i32 @dt_cg_node_alloc(i32 %96, i32 %97)
  %99 = call i32 @dt_irlist_append(i32* %95, i32 %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @ctf_type_size(i32 %104, i32 %109)
  store i64 %110, i64* %19, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = call i64 @dt_node_is_scalar(%struct.TYPE_16__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %148

116:                                              ; preds = %42
  %117 = load i64, i64* %19, align 8
  switch i64 %117, label %138 [
    i64 1, label %118
    i64 2, label %123
    i64 4, label %128
    i64 8, label %133
  ]

118:                                              ; preds = %116
  %119 = load i32, i32* @DIF_OP_STB, align 4
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @DIF_INSTR_STORE(i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %18, align 4
  br label %142

123:                                              ; preds = %116
  %124 = load i32, i32* @DIF_OP_STH, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @DIF_INSTR_STORE(i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %18, align 4
  br label %142

128:                                              ; preds = %116
  %129 = load i32, i32* @DIF_OP_STW, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @DIF_INSTR_STORE(i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %18, align 4
  br label %142

133:                                              ; preds = %116
  %134 = load i32, i32* @DIF_OP_STX, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @DIF_INSTR_STORE(i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %18, align 4
  br label %142

138:                                              ; preds = %116
  %139 = load i32, i32* @D_UNKNOWN, align 4
  %140 = load i64, i64* %19, align 8
  %141 = call i32 @xyerror(i32 %139, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %140)
  br label %142

142:                                              ; preds = %138, %133, %128, %123, %118
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* @DT_LBL_NONE, align 4
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @dt_cg_node_alloc(i32 %144, i32 %145)
  %147 = call i32 @dt_irlist_append(i32* %143, i32 %146)
  br label %227

148:                                              ; preds = %42
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = call i64 @dt_node_is_string(%struct.TYPE_16__* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %173

154:                                              ; preds = %148
  %155 = load i32*, i32** %13, align 8
  %156 = call i32 @dt_regset_alloc(i32* %155)
  store i32 %156, i32* %20, align 4
  %157 = load i32*, i32** %12, align 8
  %158 = load i32, i32* %20, align 4
  %159 = load i64, i64* %19, align 8
  %160 = call i32 @dt_cg_setx(i32* %157, i32 %158, i64 %159)
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @DIF_INSTR_COPYS(i32 %161, i32 %162, i32 %163)
  store i32 %164, i32* %18, align 4
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* @DT_LBL_NONE, align 4
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @dt_cg_node_alloc(i32 %166, i32 %167)
  %169 = call i32 @dt_irlist_append(i32* %165, i32 %168)
  %170 = load i32*, i32** %13, align 8
  %171 = load i32, i32* %20, align 4
  %172 = call i32 @dt_regset_free(i32* %170, i32 %171)
  br label %226

173:                                              ; preds = %148
  %174 = load i32*, i32** %13, align 8
  %175 = call i32 @dt_regset_alloc(i32* %174)
  store i32 %175, i32* %21, align 4
  %176 = load i32*, i32** %12, align 8
  %177 = load i32, i32* %21, align 4
  %178 = load i64, i64* %19, align 8
  %179 = call i32 @dt_cg_setx(i32* %176, i32 %177, i64 %178)
  %180 = load i32*, i32** %12, align 8
  %181 = load i32, i32* @DT_LBL_NONE, align 4
  %182 = load i32, i32* @DIF_INSTR_FLUSHTS, align 4
  %183 = call i32 @dt_cg_node_alloc(i32 %181, i32 %182)
  %184 = call i32 @dt_irlist_append(i32* %180, i32 %183)
  %185 = load i32, i32* @DIF_OP_PUSHTV, align 4
  %186 = load i32, i32* @DIF_TYPE_CTF, align 4
  %187 = load i32, i32* @DIF_REG_R0, align 4
  %188 = load i32, i32* %17, align 4
  %189 = call i32 @DIF_INSTR_PUSHTS(i32 %185, i32 %186, i32 %187, i32 %188)
  store i32 %189, i32* %18, align 4
  %190 = load i32*, i32** %12, align 8
  %191 = load i32, i32* @DT_LBL_NONE, align 4
  %192 = load i32, i32* %18, align 4
  %193 = call i32 @dt_cg_node_alloc(i32 %191, i32 %192)
  %194 = call i32 @dt_irlist_append(i32* %190, i32 %193)
  %195 = load i32, i32* @DIF_OP_PUSHTV, align 4
  %196 = load i32, i32* @DIF_TYPE_CTF, align 4
  %197 = load i32, i32* @DIF_REG_R0, align 4
  %198 = load i32, i32* %16, align 4
  %199 = call i32 @DIF_INSTR_PUSHTS(i32 %195, i32 %196, i32 %197, i32 %198)
  store i32 %199, i32* %18, align 4
  %200 = load i32*, i32** %12, align 8
  %201 = load i32, i32* @DT_LBL_NONE, align 4
  %202 = load i32, i32* %18, align 4
  %203 = call i32 @dt_cg_node_alloc(i32 %201, i32 %202)
  %204 = call i32 @dt_irlist_append(i32* %200, i32 %203)
  %205 = load i32, i32* @DIF_OP_PUSHTV, align 4
  %206 = load i32, i32* @DIF_TYPE_CTF, align 4
  %207 = load i32, i32* @DIF_REG_R0, align 4
  %208 = load i32, i32* %21, align 4
  %209 = call i32 @DIF_INSTR_PUSHTS(i32 %205, i32 %206, i32 %207, i32 %208)
  store i32 %209, i32* %18, align 4
  %210 = load i32*, i32** %12, align 8
  %211 = load i32, i32* @DT_LBL_NONE, align 4
  %212 = load i32, i32* %18, align 4
  %213 = call i32 @dt_cg_node_alloc(i32 %211, i32 %212)
  %214 = call i32 @dt_irlist_append(i32* %210, i32 %213)
  %215 = load i32, i32* @DIF_SUBR_BCOPY, align 4
  %216 = load i32, i32* %21, align 4
  %217 = call i32 @DIF_INSTR_CALL(i32 %215, i32 %216)
  store i32 %217, i32* %18, align 4
  %218 = load i32*, i32** %12, align 8
  %219 = load i32, i32* @DT_LBL_NONE, align 4
  %220 = load i32, i32* %18, align 4
  %221 = call i32 @dt_cg_node_alloc(i32 %219, i32 %220)
  %222 = call i32 @dt_irlist_append(i32* %218, i32 %221)
  %223 = load i32*, i32** %13, align 8
  %224 = load i32, i32* %21, align 4
  %225 = call i32 @dt_regset_free(i32* %223, i32 %224)
  br label %226

226:                                              ; preds = %173, %154
  br label %227

227:                                              ; preds = %226, %142
  %228 = load i32*, i32** %13, align 8
  %229 = load i32, i32* %16, align 4
  %230 = call i32 @dt_regset_free(i32* %228, i32 %229)
  %231 = load i32*, i32** %13, align 8
  %232 = load i32, i32* %17, align 4
  %233 = call i32 @dt_regset_free(i32* %231, i32 %232)
  store i32 0, i32* %5, align 4
  br label %234

234:                                              ; preds = %227, %41
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

declare dso_local %struct.TYPE_14__* @dt_xlator_member(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @dt_cg_node(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @dt_regset_alloc(i32*) #1

declare dso_local i32 @dt_cg_setx(i32*, i32, i64) #1

declare dso_local i32 @DIF_INSTR_FMT(i32, i32, i32, i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i64 @ctf_type_size(i32, i32) #1

declare dso_local i64 @dt_node_is_scalar(%struct.TYPE_16__*) #1

declare dso_local i32 @DIF_INSTR_STORE(i32, i32, i32) #1

declare dso_local i32 @xyerror(i32, i8*, i64) #1

declare dso_local i64 @dt_node_is_string(%struct.TYPE_16__*) #1

declare dso_local i32 @DIF_INSTR_COPYS(i32, i32, i32) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

declare dso_local i32 @DIF_INSTR_PUSHTS(i32, i32, i32, i32) #1

declare dso_local i32 @DIF_INSTR_CALL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

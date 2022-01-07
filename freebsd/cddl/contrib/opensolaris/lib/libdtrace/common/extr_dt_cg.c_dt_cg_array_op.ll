; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_array_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_array_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64, i64, i32, i32* }
%struct.TYPE_11__ = type { i32, i64, i64, i32 }

@yypcb = common dso_local global %struct.TYPE_12__* null, align 8
@DT_NODE_VAR = common dso_local global i64 0, align 8
@DT_IDFLG_LOCAL = common dso_local global i32 0, align 4
@DT_NODE_INT = common dso_local global i64 0, align 8
@DIF_VAR_ARGS = common dso_local global i64 0, align 8
@DT_IDENT_XLPTR = common dso_local global i64 0, align 8
@DT_IDENT_XLSOU = common dso_local global i64 0, align 8
@DT_IDFLG_TLS = common dso_local global i32 0, align 4
@DIF_OP_LDTA = common dso_local global i32 0, align 4
@DIF_OP_LDGA = common dso_local global i32 0, align 4
@DT_IDFLG_DIFR = common dso_local global i32 0, align 4
@DT_LBL_NONE = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@DIF_OP_SLL = common dso_local global i32 0, align 4
@DT_NF_SIGNED = common dso_local global i32 0, align 4
@DIF_OP_SRA = common dso_local global i32 0, align 4
@DIF_OP_SRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32*)* @dt_cg_array_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_array_op(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @yypcb, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %9, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DT_NODE_VAR, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DT_IDFLG_LOCAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DT_NODE_INT, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DIF_VAR_ARGS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %3
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DT_IDENT_XLPTR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DT_IDENT_XLSOU, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70, %64
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @dt_xlator_dynamic(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store i32 -1, i32* %84, align 8
  br label %226

85:                                               ; preds = %76, %70
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i64 %91, i64* %95, align 8
  br label %96

96:                                               ; preds = %85, %3
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @dt_cg_node(%struct.TYPE_13__* %99, i32* %100, i32* %101)
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store i64 %103, i64* %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @DT_IDFLG_TLS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %96
  %122 = load i32, i32* @DIF_OP_LDTA, align 4
  store i32 %122, i32* %11, align 4
  br label %125

123:                                              ; preds = %96
  %124 = load i32, i32* @DIF_OP_LDGA, align 4
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = load i32, i32* @DT_IDFLG_DIFR, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @DIF_INSTR_LDA(i32 %131, i64 %134, i32 %139, i32 %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* @DT_LBL_NONE, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @dt_cg_node_alloc(i32 %145, i32 %146)
  %148 = call i32 @dt_irlist_append(i32* %144, i32 %147)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @DIF_VAR_ARGS, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %125
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = call i32 @dt_node_is_scalar(%struct.TYPE_10__* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154, %125
  br label %226

159:                                              ; preds = %154
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = call i64 @dt_node_type_size(%struct.TYPE_10__* %160)
  store i64 %161, i64* %12, align 8
  %162 = icmp eq i64 %161, 4
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %226

164:                                              ; preds = %159
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @dt_regset_alloc(i32* %165)
  store i32 %166, i32* %13, align 4
  %167 = load i64, i64* %12, align 8
  %168 = icmp ult i64 %167, 4
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load i32, i32* @NBBY, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 4, %172
  %174 = load i64, i64* %12, align 8
  %175 = load i32, i32* @NBBY, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 %174, %176
  %178 = sub i64 %173, %177
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %14, align 4
  %180 = load i32*, i32** %5, align 8
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @dt_cg_setx(i32* %180, i32 %181, i32 %182)
  %184 = load i32, i32* @DIF_OP_SLL, align 4
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @DIF_INSTR_FMT(i32 %184, i32 %187, i32 %188, i32 %191)
  store i32 %192, i32* %10, align 4
  %193 = load i32*, i32** %5, align 8
  %194 = load i32, i32* @DT_LBL_NONE, align 4
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @dt_cg_node_alloc(i32 %194, i32 %195)
  %197 = call i32 @dt_irlist_append(i32* %193, i32 %196)
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @DT_NF_SIGNED, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %164
  %205 = load i32, i32* @DIF_OP_SRA, align 4
  br label %208

206:                                              ; preds = %164
  %207 = load i32, i32* @DIF_OP_SRL, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %13, align 4
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @DIF_INSTR_FMT(i32 %209, i32 %212, i32 %213, i32 %216)
  store i32 %217, i32* %10, align 4
  %218 = load i32*, i32** %5, align 8
  %219 = load i32, i32* @DT_LBL_NONE, align 4
  %220 = load i32, i32* %10, align 4
  %221 = call i32 @dt_cg_node_alloc(i32 %219, i32 %220)
  %222 = call i32 @dt_irlist_append(i32* %218, i32 %221)
  %223 = load i32*, i32** %6, align 8
  %224 = load i32, i32* %13, align 4
  %225 = call i32 @dt_regset_free(i32* %223, i32 %224)
  br label %226

226:                                              ; preds = %208, %163, %158, %82
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dt_xlator_dynamic(i32) #1

declare dso_local i32 @dt_cg_node(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @DIF_INSTR_LDA(i32, i64, i32, i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_node_is_scalar(%struct.TYPE_10__*) #1

declare dso_local i64 @dt_node_type_size(%struct.TYPE_10__*) #1

declare dso_local i32 @dt_regset_alloc(i32*) #1

declare dso_local i32 @dt_cg_setx(i32*, i32, i32) #1

declare dso_local i32 @DIF_INSTR_FMT(i32, i32, i32, i32) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_typecast.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_typecast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@DT_NF_SIGNED = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@DIF_OP_SLL = common dso_local global i32 0, align 4
@DT_LBL_NONE = common dso_local global i32 0, align 4
@DIF_OP_SRA = common dso_local global i32 0, align 4
@DIF_OP_SRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_6__*, i32*, i32*)* @dt_cg_typecast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_typecast(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = call i64 @dt_node_type_size(%struct.TYPE_6__* %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = call i64 @dt_node_type_size(%struct.TYPE_6__* %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = call i32 @dt_node_is_scalar(%struct.TYPE_6__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %219

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %31, %34
  %36 = load i32, i32* @DT_NF_SIGNED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %219

40:                                               ; preds = %28, %24
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DT_NF_SIGNED, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %219

52:                                               ; preds = %44, %40
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @dt_regset_alloc(i32* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %158

58:                                               ; preds = %52
  %59 = load i32, i32* @NBBY, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 4, %60
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* @NBBY, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %62, %64
  %66 = sub i64 %61, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %9, align 8
  %70 = sub i64 %68, %69
  %71 = load i32, i32* @NBBY, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %70, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %14, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @dt_cg_setx(i32* %75, i32 %76, i32 %77)
  %79 = load i32, i32* @DIF_OP_SLL, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @DIF_INSTR_FMT(i32 %79, i32 %82, i32 %83, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* @DT_LBL_NONE, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @dt_cg_node_alloc(i32 %89, i32 %90)
  %92 = call i32 @dt_irlist_append(i32* %88, i32 %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @DT_NF_SIGNED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %58
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %99, %58
  %104 = load i32, i32* @DIF_OP_SRA, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @DIF_INSTR_FMT(i32 %104, i32 %107, i32 %108, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* @DT_LBL_NONE, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @dt_cg_node_alloc(i32 %114, i32 %115)
  %117 = call i32 @dt_irlist_append(i32* %113, i32 %116)
  br label %157

118:                                              ; preds = %99
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @dt_cg_setx(i32* %119, i32 %120, i32 %121)
  %123 = load i32, i32* @DIF_OP_SRA, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @DIF_INSTR_FMT(i32 %123, i32 %126, i32 %127, i32 %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* @DT_LBL_NONE, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @dt_cg_node_alloc(i32 %133, i32 %134)
  %136 = call i32 @dt_irlist_append(i32* %132, i32 %135)
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = sub nsw i32 %139, %140
  %142 = call i32 @dt_cg_setx(i32* %137, i32 %138, i32 %141)
  %143 = load i32, i32* @DIF_OP_SRL, align 4
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @DIF_INSTR_FMT(i32 %143, i32 %146, i32 %147, i32 %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* @DT_LBL_NONE, align 4
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @dt_cg_node_alloc(i32 %153, i32 %154)
  %156 = call i32 @dt_irlist_append(i32* %152, i32 %155)
  br label %157

157:                                              ; preds = %118, %103
  br label %215

158:                                              ; preds = %52
  %159 = load i64, i64* %10, align 8
  %160 = icmp ne i64 %159, 4
  br i1 %160, label %161, label %214

161:                                              ; preds = %158
  %162 = load i32, i32* @NBBY, align 4
  %163 = sext i32 %162 to i64
  %164 = mul i64 4, %163
  %165 = load i64, i64* %10, align 8
  %166 = load i32, i32* @NBBY, align 4
  %167 = sext i32 %166 to i64
  %168 = mul i64 %165, %167
  %169 = sub i64 %164, %168
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %15, align 4
  %171 = load i32*, i32** %7, align 8
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @dt_cg_setx(i32* %171, i32 %172, i32 %173)
  %175 = load i32, i32* @DIF_OP_SLL, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @DIF_INSTR_FMT(i32 %175, i32 %178, i32 %179, i32 %182)
  store i32 %183, i32* %11, align 4
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* @DT_LBL_NONE, align 4
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @dt_cg_node_alloc(i32 %185, i32 %186)
  %188 = call i32 @dt_irlist_append(i32* %184, i32 %187)
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @DT_NF_SIGNED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %161
  %196 = load i32, i32* @DIF_OP_SRA, align 4
  br label %199

197:                                              ; preds = %161
  %198 = load i32, i32* @DIF_OP_SRL, align 4
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32 [ %196, %195 ], [ %198, %197 ]
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @DIF_INSTR_FMT(i32 %200, i32 %203, i32 %204, i32 %207)
  store i32 %208, i32* %11, align 4
  %209 = load i32*, i32** %7, align 8
  %210 = load i32, i32* @DT_LBL_NONE, align 4
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @dt_cg_node_alloc(i32 %210, i32 %211)
  %213 = call i32 @dt_irlist_append(i32* %209, i32 %212)
  br label %214

214:                                              ; preds = %199, %158
  br label %215

215:                                              ; preds = %214, %157
  %216 = load i32*, i32** %8, align 8
  %217 = load i32, i32* %12, align 4
  %218 = call i32 @dt_regset_free(i32* %216, i32 %217)
  br label %219

219:                                              ; preds = %215, %51, %39, %23
  ret void
}

declare dso_local i64 @dt_node_type_size(%struct.TYPE_6__*) #1

declare dso_local i32 @dt_node_is_scalar(%struct.TYPE_6__*) #1

declare dso_local i32 @dt_regset_alloc(i32*) #1

declare dso_local i32 @dt_cg_setx(i32*, i32, i32) #1

declare dso_local i32 @DIF_INSTR_FMT(i32, i32, i32, i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_compute_bb_dataflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_compute_bb_dataflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_21__, %struct.TYPE_21__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@call_used_reg_set = common dso_local global i32 0, align 4
@REG = common dso_local global i32 0, align 4
@MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @compute_bb_dataflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_bb_dataflow(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.TYPE_18__* @VTI(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 3
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %8, align 8
  %18 = load i32, i32* %2, align 4
  %19 = call %struct.TYPE_18__* @VTI(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %9, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call %struct.TYPE_18__* @VTI(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @htab_elements(i32 %25)
  %27 = add nsw i64 %26, 3
  %28 = call i32 @dataflow_set_init(%struct.TYPE_21__* %7, i64 %27)
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %30 = call i32 @dataflow_set_copy(%struct.TYPE_21__* %7, %struct.TYPE_21__* %29)
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %33 = call i32 @dataflow_set_copy(%struct.TYPE_21__* %31, %struct.TYPE_21__* %32)
  %34 = load i32, i32* %2, align 4
  %35 = call %struct.TYPE_18__* @VTI(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %229, %1
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %232

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = call %struct.TYPE_18__* @VTI(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %228 [
    i32 133, label %52
    i32 129, label %71
    i32 130, label %101
    i32 131, label %129
    i32 128, label %157
    i32 132, label %185
    i32 134, label %213
  ]

52:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %67, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i32, i32* @call_used_reg_set, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @TEST_HARD_REG_BIT(i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @var_regno_delete(%struct.TYPE_21__* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %53

70:                                               ; preds = %53
  br label %228

71:                                               ; preds = %42
  %72 = load i32, i32* %2, align 4
  %73 = call %struct.TYPE_18__* @VTI(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @GET_CODE(i32 %82)
  %84 = load i32, i32* @REG, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %71
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @var_reg_set(%struct.TYPE_21__* %87, i32 %88)
  br label %100

90:                                               ; preds = %71
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @GET_CODE(i32 %91)
  %93 = load i32, i32* @MEM, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @var_mem_set(%struct.TYPE_21__* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %90
  br label %100

100:                                              ; preds = %99, %86
  br label %228

101:                                              ; preds = %42
  %102 = load i32, i32* %2, align 4
  %103 = call %struct.TYPE_18__* @VTI(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @REG_P(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %101
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @var_reg_delete_and_set(%struct.TYPE_21__* %116, i32 %117, i32 1)
  br label %128

119:                                              ; preds = %101
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @MEM_P(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @var_mem_delete_and_set(%struct.TYPE_21__* %124, i32 %125, i32 1)
  br label %127

127:                                              ; preds = %123, %119
  br label %128

128:                                              ; preds = %127, %115
  br label %228

129:                                              ; preds = %42
  %130 = load i32, i32* %2, align 4
  %131 = call %struct.TYPE_18__* @VTI(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %132, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @REG_P(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %129
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @var_reg_delete_and_set(%struct.TYPE_21__* %144, i32 %145, i32 0)
  br label %156

147:                                              ; preds = %129
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @MEM_P(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @var_mem_delete_and_set(%struct.TYPE_21__* %152, i32 %153, i32 0)
  br label %155

155:                                              ; preds = %151, %147
  br label %156

156:                                              ; preds = %155, %143
  br label %228

157:                                              ; preds = %42
  %158 = load i32, i32* %2, align 4
  %159 = call %struct.TYPE_18__* @VTI(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @REG_P(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %157
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @var_reg_delete(%struct.TYPE_21__* %172, i32 %173, i32 0)
  br label %184

175:                                              ; preds = %157
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @MEM_P(i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @var_mem_delete(%struct.TYPE_21__* %180, i32 %181, i32 0)
  br label %183

183:                                              ; preds = %179, %175
  br label %184

184:                                              ; preds = %183, %171
  br label %228

185:                                              ; preds = %42
  %186 = load i32, i32* %2, align 4
  %187 = call %struct.TYPE_18__* @VTI(i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %188, align 8
  %190 = load i32, i32* %3, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @REG_P(i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %185
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @var_reg_delete(%struct.TYPE_21__* %200, i32 %201, i32 1)
  br label %212

203:                                              ; preds = %185
  %204 = load i32, i32* %14, align 4
  %205 = call i32 @MEM_P(i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @var_mem_delete(%struct.TYPE_21__* %208, i32 %209, i32 1)
  br label %211

211:                                              ; preds = %207, %203
  br label %212

212:                                              ; preds = %211, %199
  br label %228

213:                                              ; preds = %42
  %214 = load i32, i32* %2, align 4
  %215 = call %struct.TYPE_18__* @VTI(i32 %214)
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %216, align 8
  %218 = load i32, i32* %3, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, %223
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %42, %213, %212, %184, %156, %128, %100, %70
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %3, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %3, align 4
  br label %38

232:                                              ; preds = %38
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %234 = call i32 @dataflow_set_different(%struct.TYPE_21__* %7, %struct.TYPE_21__* %233)
  store i32 %234, i32* %6, align 4
  %235 = call i32 @dataflow_set_destroy(%struct.TYPE_21__* %7)
  %236 = load i32, i32* %6, align 4
  ret i32 %236
}

declare dso_local %struct.TYPE_18__* @VTI(i32) #1

declare dso_local i32 @dataflow_set_init(%struct.TYPE_21__*, i64) #1

declare dso_local i64 @htab_elements(i32) #1

declare dso_local i32 @dataflow_set_copy(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @var_regno_delete(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @var_reg_set(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @var_mem_set(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @var_reg_delete_and_set(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @var_mem_delete_and_set(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @var_reg_delete(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @var_mem_delete(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @dataflow_set_different(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @dataflow_set_destroy(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

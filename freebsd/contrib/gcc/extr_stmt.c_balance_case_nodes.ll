; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_balance_case_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_balance_case_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32 }

@use_cost_table = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__**, %struct.TYPE_4__*)* @balance_case_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balance_case_nodes(%struct.TYPE_4__** %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %5, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %227

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %58, %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %64

20:                                               ; preds = %17
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @tree_int_cst_equal(i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* @use_cost_table, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @TREE_INT_CST_LOW(i32 %37)
  %39 = call i64 @COST_TABLE(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %34, %29
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i64, i64* @use_cost_table, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @TREE_INT_CST_LOW(i32 %51)
  %53 = call i64 @COST_TABLE(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %48, %45
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %5, align 8
  br label %17

64:                                               ; preds = %17
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 2
  br i1 %66, label %67, label %204

67:                                               ; preds = %64
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__** %68, %struct.TYPE_4__*** %9, align 8
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %10, align 8
  %71 = load i64, i64* @use_cost_table, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %148

73:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  %76 = sdiv i32 %75, 2
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %113
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @tree_int_cst_equal(i32 %81, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %77
  %89 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @TREE_INT_CST_LOW(i32 %92)
  %94 = call i64 @COST_TABLE(i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %88, %77
  %100 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @TREE_INT_CST_LOW(i32 %103)
  %105 = call i64 @COST_TABLE(i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %119

113:                                              ; preds = %99
  %114 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store %struct.TYPE_4__** %116, %struct.TYPE_4__*** %9, align 8
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %77

119:                                              ; preds = %112
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %147

122:                                              ; preds = %119
  %123 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  store %struct.TYPE_4__* %124, %struct.TYPE_4__** %5, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store %struct.TYPE_4__* %125, %struct.TYPE_4__** %127, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  call void @balance_case_nodes(%struct.TYPE_4__** %129, %struct.TYPE_4__* %130)
  br label %131

131:                                              ; preds = %142, %122
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = icmp ne %struct.TYPE_4__* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  store %struct.TYPE_4__* %137, %struct.TYPE_4__** %141, align 8
  br label %142

142:                                              ; preds = %136
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  store %struct.TYPE_4__* %145, %struct.TYPE_4__** %5, align 8
  br label %131

146:                                              ; preds = %131
  br label %227

147:                                              ; preds = %119
  br label %187

148:                                              ; preds = %67
  %149 = load i32, i32* %7, align 4
  %150 = icmp eq i32 %149, 3
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  store %struct.TYPE_4__** %154, %struct.TYPE_4__*** %9, align 8
  br label %186

155:                                              ; preds = %148
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %156, %157
  %159 = add nsw i32 %158, 1
  %160 = sdiv i32 %159, 2
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %155, %181
  %162 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @tree_int_cst_equal(i32 %165, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %161
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %172, %161
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp sle i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %185

181:                                              ; preds = %175
  %182 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  store %struct.TYPE_4__** %184, %struct.TYPE_4__*** %9, align 8
  br label %161

185:                                              ; preds = %180
  br label %186

186:                                              ; preds = %185, %151
  br label %187

187:                                              ; preds = %186, %147
  %188 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  store %struct.TYPE_4__* %189, %struct.TYPE_4__** %5, align 8
  %190 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* %189, %struct.TYPE_4__** %190, align 8
  %191 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %191, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  store %struct.TYPE_4__* %192, %struct.TYPE_4__** %194, align 8
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 2
  store %struct.TYPE_4__* %195, %struct.TYPE_4__** %197, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  call void @balance_case_nodes(%struct.TYPE_4__** %199, %struct.TYPE_4__* %200)
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  call void @balance_case_nodes(%struct.TYPE_4__** %202, %struct.TYPE_4__* %203)
  br label %226

204:                                              ; preds = %64
  %205 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  store %struct.TYPE_4__* %206, %struct.TYPE_4__** %5, align 8
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  store %struct.TYPE_4__* %207, %struct.TYPE_4__** %209, align 8
  br label %210

210:                                              ; preds = %221, %204
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = icmp ne %struct.TYPE_4__* %213, null
  br i1 %214, label %215, label %225

215:                                              ; preds = %210
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  store %struct.TYPE_4__* %216, %struct.TYPE_4__** %220, align 8
  br label %221

221:                                              ; preds = %215
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  store %struct.TYPE_4__* %224, %struct.TYPE_4__** %5, align 8
  br label %210

225:                                              ; preds = %210
  br label %226

226:                                              ; preds = %225, %187
  br label %227

227:                                              ; preds = %146, %226, %2
  ret void
}

declare dso_local i32 @tree_int_cst_equal(i32, i32) #1

declare dso_local i64 @COST_TABLE(i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

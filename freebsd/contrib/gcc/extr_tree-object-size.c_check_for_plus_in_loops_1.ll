; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-object-size.c_check_for_plus_in_loops_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-object-size.c_check_for_plus_in_loops_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_size_info = type { i32*, i32*, i32*, i64, i32 }

@computed = common dso_local global i32* null, align 8
@object_sizes = common dso_local global i64** null, align 8
@CALL_EXPR = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_size_info*, i32, i32)* @check_for_plus_in_loops_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_plus_in_loops_1(%struct.object_size_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.object_size_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.object_size_info* %0, %struct.object_size_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @SSA_NAME_DEF_STMT(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @SSA_NAME_VERSION(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %23 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %86

30:                                               ; preds = %3
  %31 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %32 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %30
  %41 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %42 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %9, align 8
  br label %44

44:                                               ; preds = %83, %40
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %47 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ugt i32* %45, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %44
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 -1
  store i32* %52, i32** %9, align 8
  %53 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %54 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bitmap_clear_bit(i32 %55, i32 %57)
  %59 = load i32*, i32** @computed, align 8
  %60 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %61 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bitmap_set_bit(i32 %64, i32 %66)
  %68 = load i64**, i64*** @object_sizes, align 8
  %69 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %70 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64*, i64** %68, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  store i64 0, i64* %77, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %50
  br label %84

83:                                               ; preds = %50
  br label %44

84:                                               ; preds = %82, %44
  br label %85

85:                                               ; preds = %84, %30
  br label %227

86:                                               ; preds = %3
  %87 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %88 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @bitmap_bit_p(i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %227

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %98 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %105 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %105, align 8
  store i32 %103, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @TREE_CODE(i32 %108)
  switch i32 %109, label %214 [
    i32 128, label %110
    i32 130, label %119
    i32 129, label %191
  ]

110:                                              ; preds = %95
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @TREE_OPERAND(i32 %111, i32 0)
  %113 = call i32 @TREE_CODE(i32 %112)
  %114 = icmp eq i32 %113, 130
  %115 = zext i1 %114 to i32
  %116 = call i32 @gcc_assert(i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @TREE_OPERAND(i32 %117, i32 0)
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %95, %110
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @TREE_OPERAND(i32 %120, i32 1)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @STRIP_NOPS(i32 %122)
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @TREE_CODE(i32 %124)
  %126 = load i32, i32* @CALL_EXPR, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %119
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @pass_through_call(i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %133, %128
  br label %136

136:                                              ; preds = %135, %119
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @TREE_CODE(i32 %137)
  %139 = load i32, i32* @SSA_NAME, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %6, align 4
  call void @check_for_plus_in_loops_1(%struct.object_size_info* %142, i32 %143, i32 %144)
  br label %190

145:                                              ; preds = %136
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @TREE_CODE(i32 %146)
  %148 = load i32, i32* @PLUS_EXPR, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %187

150:                                              ; preds = %145
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @TREE_OPERAND(i32 %151, i32 0)
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @TREE_OPERAND(i32 %153, i32 1)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @TREE_CODE(i32 %155)
  %157 = load i32, i32* @SSA_NAME, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %150
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %13, align 4
  store i32 %161, i32* %14, align 4
  br label %171

162:                                              ; preds = %150
  %163 = load i32, i32* %13, align 4
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @TREE_CODE(i32 %165)
  %167 = load i32, i32* @SSA_NAME, align 4
  %168 = icmp eq i32 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @gcc_assert(i32 %169)
  br label %171

171:                                              ; preds = %162, %159
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @TREE_CODE(i32 %172)
  %174 = load i32, i32* @INTEGER_CST, align 4
  %175 = icmp eq i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @gcc_assert(i32 %176)
  %178 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @integer_zerop(i32 %181)
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = add i32 %180, %185
  call void @check_for_plus_in_loops_1(%struct.object_size_info* %178, i32 %179, i32 %186)
  br label %189

187:                                              ; preds = %145
  %188 = call i32 (...) @gcc_unreachable()
  br label %189

189:                                              ; preds = %187, %171
  br label %190

190:                                              ; preds = %189, %141
  br label %216

191:                                              ; preds = %95
  store i32 0, i32* %16, align 4
  br label %192

192:                                              ; preds = %210, %191
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @PHI_NUM_ARGS(i32 %194)
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %213

197:                                              ; preds = %192
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %16, align 4
  %200 = call i32 @PHI_ARG_DEF(i32 %198, i32 %199)
  store i32 %200, i32* %17, align 4
  %201 = load i32, i32* %17, align 4
  %202 = call i32 @TREE_CODE(i32 %201)
  %203 = load i32, i32* @SSA_NAME, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %197
  %206 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %6, align 4
  call void @check_for_plus_in_loops_1(%struct.object_size_info* %206, i32 %207, i32 %208)
  br label %209

209:                                              ; preds = %205, %197
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %16, align 4
  br label %192

213:                                              ; preds = %192
  br label %216

214:                                              ; preds = %95
  %215 = call i32 (...) @gcc_unreachable()
  br label %216

216:                                              ; preds = %214, %213, %190
  %217 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %218 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 0, i32* %222, align 4
  %223 = load %struct.object_size_info*, %struct.object_size_info** %4, align 8
  %224 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 -1
  store i32* %226, i32** %224, align 8
  br label %227

227:                                              ; preds = %216, %93, %85
  ret void
}

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i32) #1

declare dso_local i32 @bitmap_clear_bit(i32, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i32 @pass_through_call(i32) #1

declare dso_local i32 @integer_zerop(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @PHI_NUM_ARGS(i32) #1

declare dso_local i32 @PHI_ARG_DEF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

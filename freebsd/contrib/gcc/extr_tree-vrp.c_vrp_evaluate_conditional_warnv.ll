; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_vrp_evaluate_conditional_warnv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_vrp_evaluate_conditional_warnv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }

@SSA_NAME = common dso_local global i64 0, align 8
@tcc_comparison = common dso_local global i64 0, align 8
@NE_EXPR = common dso_local global i64 0, align 8
@boolean_false_node = common dso_local global i64 0, align 8
@VR_RANGE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32*)* @vrp_evaluate_conditional_warnv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vrp_evaluate_conditional_warnv(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @SSA_NAME, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = call i64 @TREE_CODE_CLASS(i64 %21)
  %23 = load i64, i64* @tcc_comparison, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ true, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @gcc_assert(i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @SSA_NAME, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, i64* @NE_EXPR, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @boolean_false_node, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @compare_name_with_value(i64 %37, i64 %38, i64 %39, i32* %40)
  store i64 %41, i64* %9, align 8
  br label %50

42:                                               ; preds = %33
  %43 = load i64, i64* %5, align 8
  %44 = call %struct.TYPE_6__* @get_value_range(i64 %43)
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %10, align 8
  %45 = load i64, i64* @NE_EXPR, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = load i64, i64* @boolean_false_node, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i64 @compare_range_with_value(i64 %45, %struct.TYPE_6__* %46, i64 %47, i32* %48)
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %42, %36
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %4, align 8
  br label %206

55:                                               ; preds = %50
  %56 = load i64, i64* %5, align 8
  %57 = call %struct.TYPE_6__* @get_value_range(i64 %56)
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %8, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VR_RANGE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %55
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %4, align 8
  br label %206

75:                                               ; preds = %63, %55
  br label %204

76:                                               ; preds = %25
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @TREE_OPERAND(i64 %77, i32 0)
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i64 @TREE_OPERAND(i64 %79, i32 1)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @TREE_TYPE(i64 %81)
  %83 = call i32 @INTEGRAL_TYPE_P(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %76
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @TREE_TYPE(i64 %86)
  %88 = call i32 @POINTER_TYPE_P(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = load i64, i64* @NULL_TREE, align 8
  store i64 %91, i64* %4, align 8
  br label %206

92:                                               ; preds = %85, %76
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %140

95:                                               ; preds = %92
  %96 = load i64, i64* %11, align 8
  %97 = call i64 @TREE_CODE(i64 %96)
  %98 = load i64, i64* @SSA_NAME, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load i64, i64* %12, align 8
  %102 = call i64 @TREE_CODE(i64 %101)
  %103 = load i64, i64* @SSA_NAME, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load i64, i64* %5, align 8
  %107 = call i64 @TREE_CODE(i64 %106)
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = call i64 @compare_names(i64 %107, i64 %108, i64 %109, i32* %110)
  store i64 %111, i64* %4, align 8
  br label %206

112:                                              ; preds = %100, %95
  %113 = load i64, i64* %11, align 8
  %114 = call i64 @TREE_CODE(i64 %113)
  %115 = load i64, i64* @SSA_NAME, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load i64, i64* %5, align 8
  %119 = call i64 @TREE_CODE(i64 %118)
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = call i64 @compare_name_with_value(i64 %119, i64 %120, i64 %121, i32* %122)
  store i64 %123, i64* %4, align 8
  br label %206

124:                                              ; preds = %112
  %125 = load i64, i64* %12, align 8
  %126 = call i64 @TREE_CODE(i64 %125)
  %127 = load i64, i64* @SSA_NAME, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load i64, i64* %5, align 8
  %131 = call i64 @TREE_CODE(i64 %130)
  %132 = call i64 @swap_tree_comparison(i64 %131)
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = call i64 @compare_name_with_value(i64 %132, i64 %133, i64 %134, i32* %135)
  store i64 %136, i64* %4, align 8
  br label %206

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138
  br label %203

140:                                              ; preds = %92
  %141 = load i64, i64* %11, align 8
  %142 = call i64 @TREE_CODE(i64 %141)
  %143 = load i64, i64* @SSA_NAME, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i64, i64* %11, align 8
  %147 = call %struct.TYPE_6__* @get_value_range(i64 %146)
  br label %149

148:                                              ; preds = %140
  br label %149

149:                                              ; preds = %148, %145
  %150 = phi %struct.TYPE_6__* [ %147, %145 ], [ null, %148 ]
  store %struct.TYPE_6__* %150, %struct.TYPE_6__** %13, align 8
  %151 = load i64, i64* %12, align 8
  %152 = call i64 @TREE_CODE(i64 %151)
  %153 = load i64, i64* @SSA_NAME, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i64, i64* %12, align 8
  %157 = call %struct.TYPE_6__* @get_value_range(i64 %156)
  br label %159

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %155
  %160 = phi %struct.TYPE_6__* [ %157, %155 ], [ null, %158 ]
  store %struct.TYPE_6__* %160, %struct.TYPE_6__** %14, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %162 = icmp ne %struct.TYPE_6__* %161, null
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %165 = icmp ne %struct.TYPE_6__* %164, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load i64, i64* %5, align 8
  %168 = call i64 @TREE_CODE(i64 %167)
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %171 = load i32*, i32** %7, align 8
  %172 = call i64 @compare_ranges(i64 %168, %struct.TYPE_6__* %169, %struct.TYPE_6__* %170, i32* %171)
  store i64 %172, i64* %4, align 8
  br label %206

173:                                              ; preds = %163, %159
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %175 = icmp ne %struct.TYPE_6__* %174, null
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %178 = icmp eq %struct.TYPE_6__* %177, null
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = load i64, i64* %5, align 8
  %181 = call i64 @TREE_CODE(i64 %180)
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %183 = load i64, i64* %12, align 8
  %184 = load i32*, i32** %7, align 8
  %185 = call i64 @compare_range_with_value(i64 %181, %struct.TYPE_6__* %182, i64 %183, i32* %184)
  store i64 %185, i64* %4, align 8
  br label %206

186:                                              ; preds = %176, %173
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %188 = icmp eq %struct.TYPE_6__* %187, null
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %191 = icmp ne %struct.TYPE_6__* %190, null
  br i1 %191, label %192, label %200

192:                                              ; preds = %189
  %193 = load i64, i64* %5, align 8
  %194 = call i64 @TREE_CODE(i64 %193)
  %195 = call i64 @swap_tree_comparison(i64 %194)
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %197 = load i64, i64* %11, align 8
  %198 = load i32*, i32** %7, align 8
  %199 = call i64 @compare_range_with_value(i64 %195, %struct.TYPE_6__* %196, i64 %197, i32* %198)
  store i64 %199, i64* %4, align 8
  br label %206

200:                                              ; preds = %189, %186
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202, %139
  br label %204

204:                                              ; preds = %203, %75
  %205 = load i64, i64* @NULL_TREE, align 8
  store i64 %205, i64* %4, align 8
  br label %206

206:                                              ; preds = %204, %192, %179, %166, %129, %117, %105, %90, %71, %53
  %207 = load i64, i64* %4, align 8
  ret i64 %207
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_CODE_CLASS(i64) #1

declare dso_local i64 @compare_name_with_value(i64, i64, i64, i32*) #1

declare dso_local %struct.TYPE_6__* @get_value_range(i64) #1

declare dso_local i64 @compare_range_with_value(i64, %struct.TYPE_6__*, i64, i32*) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i64 @compare_names(i64, i64, i64, i32*) #1

declare dso_local i64 @swap_tree_comparison(i64) #1

declare dso_local i64 @compare_ranges(i64, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-phiopt.c_tree_ssa_phiopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-phiopt.c_tree_ssa_phiopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_30__* }

@n_basic_blocks = common dso_local global i32 0, align 4
@NUM_FIXED_BLOCKS = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i64 0, align 8
@EDGE_ABNORMAL = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@TODO_cleanup_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tree_ssa_phiopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_ssa_phiopt() #0 {
  %1 = alloca %struct.TYPE_30__*, align 8
  %2 = alloca %struct.TYPE_30__**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  store i32 0, i32* %5, align 4
  %16 = call %struct.TYPE_30__** (...) @blocks_in_phiopt_order()
  store %struct.TYPE_30__** %16, %struct.TYPE_30__*** %2, align 8
  %17 = load i32, i32* @n_basic_blocks, align 4
  %18 = load i32, i32* @NUM_FIXED_BLOCKS, align 4
  %19 = sub i32 %17, %18
  store i32 %19, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %206, %0
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %209

24:                                               ; preds = %20
  %25 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %25, i64 %27
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %28, align 8
  store %struct.TYPE_30__* %29, %struct.TYPE_30__** %1, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %31 = call i32* @last_stmt(%struct.TYPE_30__* %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @TREE_CODE(i32* %35)
  %37 = load i64, i64* @COND_EXPR, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %24
  br label %206

40:                                               ; preds = %34
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %42 = call %struct.TYPE_29__* @EDGE_SUCC(%struct.TYPE_30__* %41, i32 0)
  store %struct.TYPE_29__* %42, %struct.TYPE_29__** %10, align 8
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %44, align 8
  store %struct.TYPE_30__* %45, %struct.TYPE_30__** %8, align 8
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %47 = call %struct.TYPE_29__* @EDGE_SUCC(%struct.TYPE_30__* %46, i32 1)
  store %struct.TYPE_29__* %47, %struct.TYPE_29__** %11, align 8
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %49, align 8
  store %struct.TYPE_30__* %50, %struct.TYPE_30__** %9, align 8
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @EDGE_ABNORMAL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %40
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @EDGE_ABNORMAL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %40
  br label %206

65:                                               ; preds = %57
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @EDGE_COUNT(i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %73 = icmp eq %struct.TYPE_30__* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @EDGE_COUNT(i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %71, %65
  br label %206

81:                                               ; preds = %74
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %83 = call %struct.TYPE_29__* @EDGE_SUCC(%struct.TYPE_30__* %82, i32 0)
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %84, align 8
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %87 = icmp eq %struct.TYPE_30__* %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %105

89:                                               ; preds = %81
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %91 = call %struct.TYPE_29__* @EDGE_SUCC(%struct.TYPE_30__* %90, i32 0)
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %92, align 8
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %95 = icmp eq %struct.TYPE_30__* %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  store %struct.TYPE_30__* %97, %struct.TYPE_30__** %14, align 8
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_29__* %98, %struct.TYPE_29__** %15, align 8
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  store %struct.TYPE_30__* %99, %struct.TYPE_30__** %8, align 8
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  store %struct.TYPE_30__* %100, %struct.TYPE_30__** %9, align 8
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  store %struct.TYPE_29__* %101, %struct.TYPE_29__** %10, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  store %struct.TYPE_29__* %102, %struct.TYPE_29__** %11, align 8
  br label %104

103:                                              ; preds = %89
  br label %206

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %88
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %107 = call %struct.TYPE_29__* @EDGE_SUCC(%struct.TYPE_30__* %106, i32 0)
  store %struct.TYPE_29__* %107, %struct.TYPE_29__** %10, align 8
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %109 = call i32 @single_succ_p(%struct.TYPE_30__* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @EDGE_FALLTHRU, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111, %105
  br label %206

119:                                              ; preds = %111
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %121 = call i32 @single_pred_p(%struct.TYPE_30__* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %125 = call %struct.TYPE_30__* @single_pred(%struct.TYPE_30__* %124)
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %127 = icmp ne %struct.TYPE_30__* %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %123, %119
  br label %206

129:                                              ; preds = %123
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %131 = call i32* @phi_nodes(%struct.TYPE_30__* %130)
  store i32* %131, i32** %7, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32*, i32** %7, align 8
  %136 = call i32* @PHI_CHAIN(i32* %135)
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %134, %129
  br label %206

139:                                              ; preds = %134
  %140 = load i32*, i32** %7, align 8
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32* @PHI_ARG_DEF_TREE(i32* %140, i32 %143)
  store i32* %144, i32** %12, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32* @PHI_ARG_DEF_TREE(i32* %145, i32 %148)
  store i32* %149, i32** %13, align 8
  %150 = load i32*, i32** %12, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %139
  %153 = load i32*, i32** %13, align 8
  %154 = icmp ne i32* %153, null
  br label %155

155:                                              ; preds = %152, %139
  %156 = phi i1 [ false, %139 ], [ %154, %152 ]
  %157 = zext i1 %156 to i32
  %158 = call i32 @gcc_assert(i32 %157)
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %163 = load i32*, i32** %7, align 8
  %164 = load i32*, i32** %12, align 8
  %165 = load i32*, i32** %13, align 8
  %166 = call i64 @conditional_replacement(%struct.TYPE_30__* %159, %struct.TYPE_30__* %160, %struct.TYPE_29__* %161, %struct.TYPE_29__* %162, i32* %163, i32* %164, i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %155
  store i32 1, i32* %5, align 4
  br label %205

169:                                              ; preds = %155
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %174 = load i32*, i32** %7, align 8
  %175 = load i32*, i32** %12, align 8
  %176 = load i32*, i32** %13, align 8
  %177 = call i64 @value_replacement(%struct.TYPE_30__* %170, %struct.TYPE_30__* %171, %struct.TYPE_29__* %172, %struct.TYPE_29__* %173, i32* %174, i32* %175, i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  store i32 1, i32* %5, align 4
  br label %204

180:                                              ; preds = %169
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %185 = load i32*, i32** %7, align 8
  %186 = load i32*, i32** %12, align 8
  %187 = load i32*, i32** %13, align 8
  %188 = call i64 @abs_replacement(%struct.TYPE_30__* %181, %struct.TYPE_30__* %182, %struct.TYPE_29__* %183, %struct.TYPE_29__* %184, i32* %185, i32* %186, i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %180
  store i32 1, i32* %5, align 4
  br label %203

191:                                              ; preds = %180
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %1, align 8
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %196 = load i32*, i32** %7, align 8
  %197 = load i32*, i32** %12, align 8
  %198 = load i32*, i32** %13, align 8
  %199 = call i64 @minmax_replacement(%struct.TYPE_30__* %192, %struct.TYPE_30__* %193, %struct.TYPE_29__* %194, %struct.TYPE_29__* %195, i32* %196, i32* %197, i32* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %191
  store i32 1, i32* %5, align 4
  br label %202

202:                                              ; preds = %201, %191
  br label %203

203:                                              ; preds = %202, %190
  br label %204

204:                                              ; preds = %203, %179
  br label %205

205:                                              ; preds = %204, %168
  br label %206

206:                                              ; preds = %205, %138, %128, %118, %103, %80, %64, %39
  %207 = load i32, i32* %4, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %4, align 4
  br label %20

209:                                              ; preds = %20
  %210 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %2, align 8
  %211 = call i32 @free(%struct.TYPE_30__** %210)
  %212 = load i32, i32* %5, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load i32, i32* @TODO_cleanup_cfg, align 4
  br label %217

216:                                              ; preds = %209
  br label %217

217:                                              ; preds = %216, %214
  %218 = phi i32 [ %215, %214 ], [ 0, %216 ]
  ret i32 %218
}

declare dso_local %struct.TYPE_30__** @blocks_in_phiopt_order(...) #1

declare dso_local i32* @last_stmt(%struct.TYPE_30__*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local %struct.TYPE_29__* @EDGE_SUCC(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @EDGE_COUNT(i32) #1

declare dso_local i32 @single_succ_p(%struct.TYPE_30__*) #1

declare dso_local i32 @single_pred_p(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @single_pred(%struct.TYPE_30__*) #1

declare dso_local i32* @phi_nodes(%struct.TYPE_30__*) #1

declare dso_local i32* @PHI_CHAIN(i32*) #1

declare dso_local i32* @PHI_ARG_DEF_TREE(i32*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @conditional_replacement(%struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*, i32*, i32*) #1

declare dso_local i64 @value_replacement(%struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*, i32*, i32*) #1

declare dso_local i64 @abs_replacement(%struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*, i32*, i32*) #1

declare dso_local i64 @minmax_replacement(%struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*, i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_30__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

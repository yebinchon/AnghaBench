; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_twoval_comparison_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_twoval_comparison_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUTH_NOT_EXPR = common dso_local global i32 0, align 4
@TRUTH_ANDIF_EXPR = common dso_local global i32 0, align 4
@TRUTH_ORIF_EXPR = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i32 0, align 4
@SAVE_EXPR = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i64*, i32*)* @twoval_comparison_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twoval_comparison_p(i64 %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @TREE_CODE(i64 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @TREE_CODE_CLASS(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @TRUTH_NOT_EXPR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 128, i32* %11, align 4
  br label %64

23:                                               ; preds = %18, %4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 129
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @TRUTH_ORIF_EXPR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @COMPOUND_EXPR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30, %26
  store i32 132, i32* %11, align 4
  br label %63

39:                                               ; preds = %34, %23
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 129
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @SAVE_EXPR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @TREE_OPERAND(i64 %47, i32 0)
  %49 = call i32 @TREE_SIDE_EFFECTS(i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = load i64*, i64** %7, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51
  store i32 0, i32* %5, align 4
  br label %198

60:                                               ; preds = %55
  store i32 128, i32* %11, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %46, %42, %39
  br label %63

63:                                               ; preds = %62, %38
  br label %64

64:                                               ; preds = %63, %22
  %65 = load i32, i32* %11, align 4
  switch i32 %65, label %197 [
    i32 128, label %66
    i32 132, label %73
    i32 130, label %92
    i32 129, label %93
    i32 131, label %125
  ]

66:                                               ; preds = %64
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @TREE_OPERAND(i64 %67, i32 0)
  %69 = load i64*, i64** %7, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @twoval_comparison_p(i64 %68, i64* %69, i64* %70, i32* %71)
  store i32 %72, i32* %5, align 4
  br label %198

73:                                               ; preds = %64
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @TREE_OPERAND(i64 %74, i32 0)
  %76 = load i64*, i64** %7, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @twoval_comparison_p(i64 %75, i64* %76, i64* %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load i64, i64* %6, align 8
  %83 = call i64 @TREE_OPERAND(i64 %82, i32 1)
  %84 = load i64*, i64** %7, align 8
  %85 = load i64*, i64** %8, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @twoval_comparison_p(i64 %83, i64* %84, i64* %85, i32* %86)
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %81, %73
  %90 = phi i1 [ false, %73 ], [ %88, %81 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %5, align 4
  br label %198

92:                                               ; preds = %64
  store i32 1, i32* %5, align 4
  br label %198

93:                                               ; preds = %64
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @COND_EXPR, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %93
  %98 = load i64, i64* %6, align 8
  %99 = call i64 @TREE_OPERAND(i64 %98, i32 0)
  %100 = load i64*, i64** %7, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @twoval_comparison_p(i64 %99, i64* %100, i64* %101, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %97
  %106 = load i64, i64* %6, align 8
  %107 = call i64 @TREE_OPERAND(i64 %106, i32 1)
  %108 = load i64*, i64** %7, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @twoval_comparison_p(i64 %107, i64* %108, i64* %109, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = load i64, i64* %6, align 8
  %115 = call i64 @TREE_OPERAND(i64 %114, i32 2)
  %116 = load i64*, i64** %7, align 8
  %117 = load i64*, i64** %8, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @twoval_comparison_p(i64 %115, i64* %116, i64* %117, i32* %118)
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %113, %105, %97
  %122 = phi i1 [ false, %105 ], [ false, %97 ], [ %120, %113 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %5, align 4
  br label %198

124:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %198

125:                                              ; preds = %64
  %126 = load i64, i64* %6, align 8
  %127 = call i64 @TREE_OPERAND(i64 %126, i32 0)
  %128 = load i64, i64* %6, align 8
  %129 = call i64 @TREE_OPERAND(i64 %128, i32 1)
  %130 = call i32 @operand_equal_p(i64 %127, i64 %129, i32 0)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %198

133:                                              ; preds = %125
  %134 = load i64*, i64** %7, align 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i64, i64* %6, align 8
  %139 = call i64 @TREE_OPERAND(i64 %138, i32 0)
  %140 = load i64*, i64** %7, align 8
  store i64 %139, i64* %140, align 8
  br label %169

141:                                              ; preds = %133
  %142 = load i64*, i64** %7, align 8
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %6, align 8
  %145 = call i64 @TREE_OPERAND(i64 %144, i32 0)
  %146 = call i32 @operand_equal_p(i64 %143, i64 %145, i32 0)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %168

149:                                              ; preds = %141
  %150 = load i64*, i64** %8, align 8
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i64, i64* %6, align 8
  %155 = call i64 @TREE_OPERAND(i64 %154, i32 0)
  %156 = load i64*, i64** %8, align 8
  store i64 %155, i64* %156, align 8
  br label %167

157:                                              ; preds = %149
  %158 = load i64*, i64** %8, align 8
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %6, align 8
  %161 = call i64 @TREE_OPERAND(i64 %160, i32 0)
  %162 = call i32 @operand_equal_p(i64 %159, i64 %161, i32 0)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %166

165:                                              ; preds = %157
  store i32 0, i32* %5, align 4
  br label %198

166:                                              ; preds = %164
  br label %167

167:                                              ; preds = %166, %153
  br label %168

168:                                              ; preds = %167, %148
  br label %169

169:                                              ; preds = %168, %137
  %170 = load i64*, i64** %7, align 8
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %6, align 8
  %173 = call i64 @TREE_OPERAND(i64 %172, i32 1)
  %174 = call i32 @operand_equal_p(i64 %171, i64 %173, i32 0)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %196

177:                                              ; preds = %169
  %178 = load i64*, i64** %8, align 8
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load i64, i64* %6, align 8
  %183 = call i64 @TREE_OPERAND(i64 %182, i32 1)
  %184 = load i64*, i64** %8, align 8
  store i64 %183, i64* %184, align 8
  br label %195

185:                                              ; preds = %177
  %186 = load i64*, i64** %8, align 8
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %6, align 8
  %189 = call i64 @TREE_OPERAND(i64 %188, i32 1)
  %190 = call i32 @operand_equal_p(i64 %187, i64 %189, i32 0)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  br label %194

193:                                              ; preds = %185
  store i32 0, i32* %5, align 4
  br label %198

194:                                              ; preds = %192
  br label %195

195:                                              ; preds = %194, %181
  br label %196

196:                                              ; preds = %195, %176
  store i32 1, i32* %5, align 4
  br label %198

197:                                              ; preds = %64
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %197, %196, %193, %165, %132, %124, %121, %92, %89, %66, %59
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @operand_equal_p(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

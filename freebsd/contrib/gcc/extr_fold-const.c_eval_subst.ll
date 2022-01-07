; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_eval_subst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_eval_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUTH_NOT_EXPR = common dso_local global i32 0, align 4
@TRUTH_ANDIF_EXPR = common dso_local global i32 0, align 4
@TRUTH_ORIF_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i8*, i8*)* @eval_subst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eval_subst(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @TREE_TYPE(i8* %17)
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @TREE_CODE(i8* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @TREE_CODE_CLASS(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp eq i32 %23, 129
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @TRUTH_NOT_EXPR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 128, i32* %14, align 4
  br label %43

30:                                               ; preds = %25, %5
  %31 = load i32, i32* %14, align 4
  %32 = icmp eq i32 %31, 129
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @TRUTH_ORIF_EXPR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33
  store i32 131, i32* %14, align 4
  br label %42

42:                                               ; preds = %41, %37, %30
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32, i32* %14, align 4
  switch i32 %44, label %175 [
    i32 128, label %45
    i32 131, label %56
    i32 129, label %74
    i32 130, label %119
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* %13, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i8* @TREE_OPERAND(i8* %48, i32 0)
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i8* @eval_subst(i8* %49, i8* %50, i8* %51, i8* %52, i8* %53)
  %55 = call i8* @fold_build1(i32 %46, i8* %47, i8* %54)
  store i8* %55, i8** %6, align 8
  br label %177

56:                                               ; preds = %43
  %57 = load i32, i32* %13, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i8* @TREE_OPERAND(i8* %59, i32 0)
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i8* @eval_subst(i8* %60, i8* %61, i8* %62, i8* %63, i8* %64)
  %66 = load i8*, i8** %7, align 8
  %67 = call i8* @TREE_OPERAND(i8* %66, i32 1)
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i8* @eval_subst(i8* %67, i8* %68, i8* %69, i8* %70, i8* %71)
  %73 = call i8* @fold_build2(i32 %57, i8* %58, i8* %65, i8* %72)
  store i8* %73, i8** %6, align 8
  br label %177

74:                                               ; preds = %43
  %75 = load i32, i32* %13, align 4
  switch i32 %75, label %117 [
    i32 132, label %76
    i32 134, label %84
    i32 133, label %92
  ]

76:                                               ; preds = %74
  %77 = load i8*, i8** %7, align 8
  %78 = call i8* @TREE_OPERAND(i8* %77, i32 0)
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = call i8* @eval_subst(i8* %78, i8* %79, i8* %80, i8* %81, i8* %82)
  store i8* %83, i8** %6, align 8
  br label %177

84:                                               ; preds = %74
  %85 = load i8*, i8** %7, align 8
  %86 = call i8* @TREE_OPERAND(i8* %85, i32 1)
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = call i8* @eval_subst(i8* %86, i8* %87, i8* %88, i8* %89, i8* %90)
  store i8* %91, i8** %6, align 8
  br label %177

92:                                               ; preds = %74
  %93 = load i32, i32* %13, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = call i8* @TREE_OPERAND(i8* %95, i32 0)
  %97 = load i8*, i8** %8, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = call i8* @eval_subst(i8* %96, i8* %97, i8* %98, i8* %99, i8* %100)
  %102 = load i8*, i8** %7, align 8
  %103 = call i8* @TREE_OPERAND(i8* %102, i32 1)
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i8* @eval_subst(i8* %103, i8* %104, i8* %105, i8* %106, i8* %107)
  %109 = load i8*, i8** %7, align 8
  %110 = call i8* @TREE_OPERAND(i8* %109, i32 2)
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = call i8* @eval_subst(i8* %110, i8* %111, i8* %112, i8* %113, i8* %114)
  %116 = call i8* @fold_build3(i32 %93, i8* %94, i8* %101, i8* %108, i8* %115)
  store i8* %116, i8** %6, align 8
  br label %177

117:                                              ; preds = %74
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %43, %118
  %120 = load i8*, i8** %7, align 8
  %121 = call i8* @TREE_OPERAND(i8* %120, i32 0)
  store i8* %121, i8** %15, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = call i8* @TREE_OPERAND(i8* %122, i32 1)
  store i8* %123, i8** %16, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = icmp eq i8* %124, %125
  br i1 %126, label %132, label %127

127:                                              ; preds = %119
  %128 = load i8*, i8** %15, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @operand_equal_p(i8* %128, i8* %129, i32 0)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127, %119
  %133 = load i8*, i8** %9, align 8
  store i8* %133, i8** %15, align 8
  br label %146

134:                                              ; preds = %127
  %135 = load i8*, i8** %15, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = icmp eq i8* %135, %136
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %15, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = call i32 @operand_equal_p(i8* %139, i8* %140, i32 0)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138, %134
  %144 = load i8*, i8** %11, align 8
  store i8* %144, i8** %15, align 8
  br label %145

145:                                              ; preds = %143, %138
  br label %146

146:                                              ; preds = %145, %132
  %147 = load i8*, i8** %16, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = icmp eq i8* %147, %148
  br i1 %149, label %155, label %150

150:                                              ; preds = %146
  %151 = load i8*, i8** %16, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 @operand_equal_p(i8* %151, i8* %152, i32 0)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150, %146
  %156 = load i8*, i8** %9, align 8
  store i8* %156, i8** %16, align 8
  br label %169

157:                                              ; preds = %150
  %158 = load i8*, i8** %16, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = icmp eq i8* %158, %159
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = load i8*, i8** %16, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = call i32 @operand_equal_p(i8* %162, i8* %163, i32 0)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161, %157
  %167 = load i8*, i8** %11, align 8
  store i8* %167, i8** %16, align 8
  br label %168

168:                                              ; preds = %166, %161
  br label %169

169:                                              ; preds = %168, %155
  %170 = load i32, i32* %13, align 4
  %171 = load i8*, i8** %12, align 8
  %172 = load i8*, i8** %15, align 8
  %173 = load i8*, i8** %16, align 8
  %174 = call i8* @fold_build2(i32 %170, i8* %171, i8* %172, i8* %173)
  store i8* %174, i8** %6, align 8
  br label %177

175:                                              ; preds = %43
  %176 = load i8*, i8** %7, align 8
  store i8* %176, i8** %6, align 8
  br label %177

177:                                              ; preds = %175, %169, %92, %84, %76, %56, %45
  %178 = load i8*, i8** %6, align 8
  ret i8* %178
}

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i32 @TREE_CODE(i8*) #1

declare dso_local i32 @TREE_CODE_CLASS(i32) #1

declare dso_local i8* @fold_build1(i32, i8*, i8*) #1

declare dso_local i8* @TREE_OPERAND(i8*, i32) #1

declare dso_local i8* @fold_build2(i32, i8*, i8*, i8*) #1

declare dso_local i8* @fold_build3(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @operand_equal_p(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

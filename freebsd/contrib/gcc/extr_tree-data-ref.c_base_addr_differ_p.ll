; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_base_addr_differ_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_base_addr_differ_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_reference = type { i32 }

@ARRAY_REF_TYPE = common dso_local global i64 0, align 8
@POINTER_REF_TYPE = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@MULT_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_reference*, %struct.data_reference*, i32*)* @base_addr_differ_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_addr_differ_p(%struct.data_reference* %0, %struct.data_reference* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.data_reference*, align 8
  %6 = alloca %struct.data_reference*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.data_reference* %0, %struct.data_reference** %5, align 8
  store %struct.data_reference* %1, %struct.data_reference** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %16 = call i64 @DR_BASE_ADDRESS(%struct.data_reference* %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %18 = call i64 @DR_BASE_ADDRESS(%struct.data_reference* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %3
  store i32 0, i32* %4, align 4
  br label %154

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @TREE_TYPE(i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @TREE_TYPE(i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @POINTER_TYPE_P(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @POINTER_TYPE_P(i64 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %33, %25
  %38 = phi i1 [ false, %25 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @gcc_assert(i32 %39)
  %41 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %42 = call i64 @DR_TYPE(%struct.data_reference* %41)
  %43 = load i64, i64* @ARRAY_REF_TYPE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %47 = call i64 @DR_TYPE(%struct.data_reference* %46)
  %48 = load i64, i64* @ARRAY_REF_TYPE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %52 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @base_object_differ_p(%struct.data_reference* %51, %struct.data_reference* %52, i32* %53)
  store i32 %54, i32* %4, align 4
  br label %154

55:                                               ; preds = %45, %37
  %56 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %57 = call i64 @DR_TYPE(%struct.data_reference* %56)
  %58 = load i64, i64* @POINTER_REF_TYPE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %122

60:                                               ; preds = %55
  %61 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %62 = call i64 @DR_TYPE(%struct.data_reference* %61)
  %63 = load i64, i64* @POINTER_REF_TYPE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %122

65:                                               ; preds = %60
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %85, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @TREE_CODE(i64 %70)
  %72 = load i64, i64* @ADDR_EXPR, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %122

74:                                               ; preds = %69
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @TREE_CODE(i64 %75)
  %77 = load i64, i64* @ADDR_EXPR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %122

79:                                               ; preds = %74
  %80 = load i64, i64* %8, align 8
  %81 = call i64 @TREE_OPERAND(i64 %80, i32 0)
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @TREE_OPERAND(i64 %82, i32 0)
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %122

85:                                               ; preds = %79, %65
  %86 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %87 = call i64 @DR_OFFSET(%struct.data_reference* %86)
  store i64 %87, i64* %13, align 8
  %88 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %89 = call i64 @DR_OFFSET(%struct.data_reference* %88)
  store i64 %89, i64* %14, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @STRIP_NOPS(i64 %90)
  %92 = load i64, i64* %14, align 8
  %93 = call i32 @STRIP_NOPS(i64 %92)
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %14, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %119, label %97

97:                                               ; preds = %85
  %98 = load i64, i64* %13, align 8
  %99 = call i64 @TREE_CODE(i64 %98)
  %100 = load i64, i64* @MULT_EXPR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %97
  %103 = load i64, i64* %14, align 8
  %104 = call i64 @TREE_CODE(i64 %103)
  %105 = load i64, i64* @MULT_EXPR, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %102
  %108 = load i64, i64* %13, align 8
  %109 = call i64 @TREE_OPERAND(i64 %108, i32 0)
  %110 = load i64, i64* %14, align 8
  %111 = call i64 @TREE_OPERAND(i64 %110, i32 0)
  %112 = icmp eq i64 %109, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load i64, i64* %13, align 8
  %115 = call i64 @TREE_OPERAND(i64 %114, i32 1)
  %116 = load i64, i64* %14, align 8
  %117 = call i64 @TREE_OPERAND(i64 %116, i32 1)
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113, %85
  %120 = load i32*, i32** %7, align 8
  store i32 0, i32* %120, align 4
  store i32 1, i32* %4, align 4
  br label %154

121:                                              ; preds = %113, %107, %102, %97
  br label %122

122:                                              ; preds = %121, %79, %74, %69, %60, %55
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %126 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %127 = call i64 @may_alias_p(i64 %123, i64 %124, %struct.data_reference* %125, %struct.data_reference* %126, i32* %12)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = load i32*, i32** %7, align 8
  store i32 1, i32* %133, align 4
  store i32 1, i32* %4, align 4
  br label %154

134:                                              ; preds = %129, %122
  %135 = load i64, i64* %10, align 8
  %136 = call i64 @TYPE_RESTRICT(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %140 = call i32 @DR_IS_READ(%struct.data_reference* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %138, %134
  %143 = load i64, i64* %11, align 8
  %144 = call i64 @TYPE_RESTRICT(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %148 = call i32 @DR_IS_READ(%struct.data_reference* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %146, %138
  %151 = load i32*, i32** %7, align 8
  store i32 1, i32* %151, align 4
  store i32 1, i32* %4, align 4
  br label %154

152:                                              ; preds = %146, %142
  br label %153

153:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %150, %132, %119, %50, %24
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i64 @DR_BASE_ADDRESS(%struct.data_reference*) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @DR_TYPE(%struct.data_reference*) #1

declare dso_local i32 @base_object_differ_p(%struct.data_reference*, %struct.data_reference*, i32*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @DR_OFFSET(%struct.data_reference*) #1

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i64 @may_alias_p(i64, i64, %struct.data_reference*, %struct.data_reference*, i32*) #1

declare dso_local i64 @TYPE_RESTRICT(i64) #1

declare dso_local i32 @DR_IS_READ(%struct.data_reference*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

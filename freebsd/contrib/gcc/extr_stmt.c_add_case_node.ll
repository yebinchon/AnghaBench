; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_add_case_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_add_case_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.case_node = type { %struct.case_node*, i32*, i32, i64, i8*, i8* }

@INTEGER_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.case_node* (%struct.case_node*, i64, i64, i64, i64)* @add_case_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.case_node* @add_case_node(%struct.case_node* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.case_node*, align 8
  %7 = alloca %struct.case_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.case_node*, align 8
  store %struct.case_node* %0, %struct.case_node** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @INTEGER_CST, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @INTEGER_CST, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %23, %5
  %29 = phi i1 [ true, %5 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @TYPE_MIN_VALUE(i64 %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @TYPE_MAX_VALUE(i64 %34)
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @tree_int_cst_equal(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %38, %28
  %44 = load i64, i64* %12, align 8
  %45 = call i64 @TREE_CODE(i64 %44)
  %46 = load i64, i64* @INTEGER_CST, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @tree_int_cst_compare(i64 %49, i64 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %48, %43
  %54 = load i64, i64* %13, align 8
  %55 = call i64 @TREE_CODE(i64 %54)
  %56 = load i64, i64* @INTEGER_CST, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i64 @tree_int_cst_compare(i64 %59, i64 %60)
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %48
  %64 = load %struct.case_node*, %struct.case_node** %7, align 8
  store %struct.case_node* %64, %struct.case_node** %6, align 8
  br label %154

65:                                               ; preds = %58, %53
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @fold_convert(i64 %66, i64 %67)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %10, align 8
  br label %123

70:                                               ; preds = %38
  %71 = load i64, i64* %12, align 8
  %72 = call i64 @TREE_CODE(i64 %71)
  %73 = load i64, i64* @INTEGER_CST, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i64 @tree_int_cst_compare(i64 %76, i64 %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %75, %70
  %81 = load i64, i64* %13, align 8
  %82 = call i64 @TREE_CODE(i64 %81)
  %83 = load i64, i64* @INTEGER_CST, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call i64 @tree_int_cst_compare(i64 %86, i64 %87)
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85, %75
  %91 = load %struct.case_node*, %struct.case_node** %7, align 8
  store %struct.case_node* %91, %struct.case_node** %6, align 8
  br label %154

92:                                               ; preds = %85, %80
  %93 = load i64, i64* %12, align 8
  %94 = call i64 @TREE_CODE(i64 %93)
  %95 = load i64, i64* @INTEGER_CST, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i64 @tree_int_cst_compare(i64 %98, i64 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i64, i64* %12, align 8
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %102, %97, %92
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = call i64 @fold_convert(i64 %105, i64 %106)
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %13, align 8
  %109 = call i64 @TREE_CODE(i64 %108)
  %110 = load i64, i64* @INTEGER_CST, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* %13, align 8
  %115 = call i64 @tree_int_cst_compare(i64 %113, i64 %114)
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i64, i64* %13, align 8
  store i64 %118, i64* %10, align 8
  br label %119

119:                                              ; preds = %117, %112, %104
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i64 @fold_convert(i64 %120, i64 %121)
  store i64 %122, i64* %10, align 8
  br label %123

123:                                              ; preds = %119, %65
  %124 = call %struct.case_node* @ggc_alloc(i32 48)
  store %struct.case_node* %124, %struct.case_node** %14, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @TREE_TYPE(i64 %125)
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @TREE_INT_CST_LOW(i64 %127)
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @TREE_INT_CST_HIGH(i64 %129)
  %131 = call i8* @build_int_cst_wide(i32 %126, i32 %128, i32 %130)
  %132 = load %struct.case_node*, %struct.case_node** %14, align 8
  %133 = getelementptr inbounds %struct.case_node, %struct.case_node* %132, i32 0, i32 5
  store i8* %131, i8** %133, align 8
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @TREE_TYPE(i64 %134)
  %136 = load i64, i64* %10, align 8
  %137 = call i32 @TREE_INT_CST_LOW(i64 %136)
  %138 = load i64, i64* %10, align 8
  %139 = call i32 @TREE_INT_CST_HIGH(i64 %138)
  %140 = call i8* @build_int_cst_wide(i32 %135, i32 %137, i32 %139)
  %141 = load %struct.case_node*, %struct.case_node** %14, align 8
  %142 = getelementptr inbounds %struct.case_node, %struct.case_node* %141, i32 0, i32 4
  store i8* %140, i8** %142, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load %struct.case_node*, %struct.case_node** %14, align 8
  %145 = getelementptr inbounds %struct.case_node, %struct.case_node* %144, i32 0, i32 3
  store i64 %143, i64* %145, align 8
  %146 = load %struct.case_node*, %struct.case_node** %14, align 8
  %147 = getelementptr inbounds %struct.case_node, %struct.case_node* %146, i32 0, i32 1
  store i32* null, i32** %147, align 8
  %148 = load %struct.case_node*, %struct.case_node** %14, align 8
  %149 = getelementptr inbounds %struct.case_node, %struct.case_node* %148, i32 0, i32 2
  store i32 0, i32* %149, align 8
  %150 = load %struct.case_node*, %struct.case_node** %7, align 8
  %151 = load %struct.case_node*, %struct.case_node** %14, align 8
  %152 = getelementptr inbounds %struct.case_node, %struct.case_node* %151, i32 0, i32 0
  store %struct.case_node* %150, %struct.case_node** %152, align 8
  %153 = load %struct.case_node*, %struct.case_node** %14, align 8
  store %struct.case_node* %153, %struct.case_node** %6, align 8
  br label %154

154:                                              ; preds = %123, %90, %63
  %155 = load %struct.case_node*, %struct.case_node** %6, align 8
  ret %struct.case_node* %155
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_MIN_VALUE(i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i64 @tree_int_cst_equal(i64, i64) #1

declare dso_local i64 @tree_int_cst_compare(i64, i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local %struct.case_node* @ggc_alloc(i32) #1

declare dso_local i8* @build_int_cst_wide(i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @TREE_INT_CST_LOW(i64) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

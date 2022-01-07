; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_find_init_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_find_init_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.init_node = type { i64, i64, %struct.init_node*, %struct.init_node* }
%struct.TYPE_2__ = type { i64, i64 }

@constructor_type = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i64 0, align 8
@constructor_incremental = common dso_local global i64 0, align 8
@constructor_unfilled_index = common dso_local global i64 0, align 8
@constructor_pending_elts = common dso_local global %struct.init_node* null, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@constructor_unfilled_fields = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@constructor_elt = common dso_local global i32 0, align 4
@constructor_elements = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @find_init_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_init_member(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.init_node*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @constructor_type, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @ARRAY_TYPE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %54

10:                                               ; preds = %1
  %11 = load i64, i64* @constructor_incremental, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @constructor_unfilled_index, align 8
  %16 = call i64 @tree_int_cst_lt(i64 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 (...) @set_nonincremental_init()
  br label %20

20:                                               ; preds = %18, %13, %10
  %21 = load %struct.init_node*, %struct.init_node** @constructor_pending_elts, align 8
  store %struct.init_node* %21, %struct.init_node** %4, align 8
  br label %22

22:                                               ; preds = %52, %20
  %23 = load %struct.init_node*, %struct.init_node** %4, align 8
  %24 = icmp ne %struct.init_node* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load i64, i64* %3, align 8
  %27 = load %struct.init_node*, %struct.init_node** %4, align 8
  %28 = getelementptr inbounds %struct.init_node, %struct.init_node* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @tree_int_cst_lt(i64 %26, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.init_node*, %struct.init_node** %4, align 8
  %34 = getelementptr inbounds %struct.init_node, %struct.init_node* %33, i32 0, i32 3
  %35 = load %struct.init_node*, %struct.init_node** %34, align 8
  store %struct.init_node* %35, %struct.init_node** %4, align 8
  br label %52

36:                                               ; preds = %25
  %37 = load %struct.init_node*, %struct.init_node** %4, align 8
  %38 = getelementptr inbounds %struct.init_node, %struct.init_node* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @tree_int_cst_lt(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.init_node*, %struct.init_node** %4, align 8
  %45 = getelementptr inbounds %struct.init_node, %struct.init_node* %44, i32 0, i32 2
  %46 = load %struct.init_node*, %struct.init_node** %45, align 8
  store %struct.init_node* %46, %struct.init_node** %4, align 8
  br label %51

47:                                               ; preds = %36
  %48 = load %struct.init_node*, %struct.init_node** %4, align 8
  %49 = getelementptr inbounds %struct.init_node, %struct.init_node* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %2, align 8
  br label %137

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %32
  br label %22

53:                                               ; preds = %22
  br label %136

54:                                               ; preds = %1
  %55 = load i32, i32* @constructor_type, align 4
  %56 = call i64 @TREE_CODE(i32 %55)
  %57 = load i64, i64* @RECORD_TYPE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %109

59:                                               ; preds = %54
  %60 = load i64, i64* %3, align 8
  %61 = call i64 @bit_position(i64 %60)
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* @constructor_incremental, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i64, i64* @constructor_unfilled_fields, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @constructor_unfilled_fields, align 8
  %70 = call i64 @bit_position(i64 %69)
  %71 = call i64 @tree_int_cst_lt(i64 %68, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67, %64
  %74 = call i32 (...) @set_nonincremental_init()
  br label %75

75:                                               ; preds = %73, %67, %59
  %76 = load %struct.init_node*, %struct.init_node** @constructor_pending_elts, align 8
  store %struct.init_node* %76, %struct.init_node** %4, align 8
  br label %77

77:                                               ; preds = %107, %75
  %78 = load %struct.init_node*, %struct.init_node** %4, align 8
  %79 = icmp ne %struct.init_node* %78, null
  br i1 %79, label %80, label %108

80:                                               ; preds = %77
  %81 = load i64, i64* %3, align 8
  %82 = load %struct.init_node*, %struct.init_node** %4, align 8
  %83 = getelementptr inbounds %struct.init_node, %struct.init_node* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.init_node*, %struct.init_node** %4, align 8
  %88 = getelementptr inbounds %struct.init_node, %struct.init_node* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %2, align 8
  br label %137

90:                                               ; preds = %80
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.init_node*, %struct.init_node** %4, align 8
  %93 = getelementptr inbounds %struct.init_node, %struct.init_node* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @bit_position(i64 %94)
  %96 = call i64 @tree_int_cst_lt(i64 %91, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load %struct.init_node*, %struct.init_node** %4, align 8
  %100 = getelementptr inbounds %struct.init_node, %struct.init_node* %99, i32 0, i32 3
  %101 = load %struct.init_node*, %struct.init_node** %100, align 8
  store %struct.init_node* %101, %struct.init_node** %4, align 8
  br label %106

102:                                              ; preds = %90
  %103 = load %struct.init_node*, %struct.init_node** %4, align 8
  %104 = getelementptr inbounds %struct.init_node, %struct.init_node* %103, i32 0, i32 2
  %105 = load %struct.init_node*, %struct.init_node** %104, align 8
  store %struct.init_node* %105, %struct.init_node** %4, align 8
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106
  br label %77

108:                                              ; preds = %77
  br label %135

109:                                              ; preds = %54
  %110 = load i32, i32* @constructor_type, align 4
  %111 = call i64 @TREE_CODE(i32 %110)
  %112 = load i64, i64* @UNION_TYPE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %109
  %115 = load i32, i32* @constructor_elt, align 4
  %116 = load i32, i32* @constructor_elements, align 4
  %117 = call i32 @VEC_empty(i32 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %133, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @constructor_elt, align 4
  %121 = load i32, i32* @constructor_elements, align 4
  %122 = call %struct.TYPE_2__* @VEC_last(i32 %120, i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %3, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load i32, i32* @constructor_elt, align 4
  %129 = load i32, i32* @constructor_elements, align 4
  %130 = call %struct.TYPE_2__* @VEC_last(i32 %128, i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %2, align 8
  br label %137

133:                                              ; preds = %119, %114
  br label %134

134:                                              ; preds = %133, %109
  br label %135

135:                                              ; preds = %134, %108
  br label %136

136:                                              ; preds = %135, %53
  store i64 0, i64* %2, align 8
  br label %137

137:                                              ; preds = %136, %127, %86, %47
  %138 = load i64, i64* %2, align 8
  ret i64 %138
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @tree_int_cst_lt(i64, i64) #1

declare dso_local i32 @set_nonincremental_init(...) #1

declare dso_local i64 @bit_position(i64) #1

declare dso_local i32 @VEC_empty(i32, i32) #1

declare dso_local %struct.TYPE_2__* @VEC_last(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

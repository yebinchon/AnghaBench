; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_idx_find_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_idx_find_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifs_ivopts_data = type { i8**, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.loop* }
%struct.loop = type { i32 }
%struct.iv = type { i8*, i8* }

@MISALIGNED_INDIRECT_REF = common dso_local global i64 0, align 8
@ALIGN_INDIRECT_REF = common dso_local global i64 0, align 8
@COMPONENT_REF = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@SSA_NAME = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@sizetype = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8*)* @idx_find_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idx_find_step(i8* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ifs_ivopts_data*, align 8
  %9 = alloca %struct.iv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.loop*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.ifs_ivopts_data*
  store %struct.ifs_ivopts_data* %17, %struct.ifs_ivopts_data** %8, align 8
  %18 = load %struct.ifs_ivopts_data*, %struct.ifs_ivopts_data** %8, align 8
  %19 = getelementptr inbounds %struct.ifs_ivopts_data, %struct.ifs_ivopts_data* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.loop*, %struct.loop** %21, align 8
  store %struct.loop* %22, %struct.loop** %15, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @TREE_CODE(i8* %23)
  %25 = load i64, i64* @MISALIGNED_INDIRECT_REF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @TREE_CODE(i8* %28)
  %30 = load i64, i64* @ALIGN_INDIRECT_REF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %3
  store i32 0, i32* %4, align 4
  br label %157

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @TREE_CODE(i8* %34)
  %36 = load i64, i64* @COMPONENT_REF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @component_ref_field_offset(i8* %39)
  store i8* %40, i8** %14, align 8
  %41 = load %struct.loop*, %struct.loop** %15, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 @expr_invariant_in_loop_p(%struct.loop* %41, i8* %42)
  store i32 %43, i32* %4, align 4
  br label %157

44:                                               ; preds = %33
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @TREE_CODE(i8* %45)
  %47 = load i64, i64* @ARRAY_REF, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = call i8* @array_ref_element_size(i8* %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i8* @array_ref_low_bound(i8* %52)
  store i8* %53, i8** %13, align 8
  %54 = load %struct.loop*, %struct.loop** %15, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @expr_invariant_in_loop_p(%struct.loop* %54, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load %struct.loop*, %struct.loop** %15, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @expr_invariant_in_loop_p(%struct.loop* %59, i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58, %49
  store i32 0, i32* %4, align 4
  br label %157

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %44
  %66 = load i8**, i8*** %6, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @TREE_CODE(i8* %67)
  %69 = load i64, i64* @SSA_NAME, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %157

72:                                               ; preds = %65
  %73 = load %struct.ifs_ivopts_data*, %struct.ifs_ivopts_data** %8, align 8
  %74 = getelementptr inbounds %struct.ifs_ivopts_data, %struct.ifs_ivopts_data* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i8**, i8*** %6, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = call %struct.iv* @get_iv(%struct.TYPE_2__* %75, i8* %77)
  store %struct.iv* %78, %struct.iv** %9, align 8
  %79 = load %struct.iv*, %struct.iv** %9, align 8
  %80 = icmp ne %struct.iv* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %157

82:                                               ; preds = %72
  %83 = load %struct.iv*, %struct.iv** %9, align 8
  %84 = getelementptr inbounds %struct.iv, %struct.iv* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i8**, i8*** %6, align 8
  store i8* %85, i8** %86, align 8
  %87 = load %struct.iv*, %struct.iv** %9, align 8
  %88 = getelementptr inbounds %struct.iv, %struct.iv* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  store i32 1, i32* %4, align 4
  br label %157

92:                                               ; preds = %82
  %93 = load i8*, i8** %5, align 8
  %94 = call i64 @TREE_CODE(i8* %93)
  %95 = load i64, i64* @ARRAY_REF, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load i8*, i8** %5, align 8
  %99 = call i8* @array_ref_element_size(i8* %98)
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i64 @TREE_CODE(i8* %100)
  %102 = load i64, i64* @INTEGER_CST, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %157

105:                                              ; preds = %97
  br label %109

106:                                              ; preds = %92
  %107 = load i32, i32* @sizetype, align 4
  %108 = call i8* @build_int_cst(i32 %107, i32 1)
  store i8* %108, i8** %10, align 8
  br label %109

109:                                              ; preds = %106, %105
  %110 = load %struct.iv*, %struct.iv** %9, align 8
  %111 = getelementptr inbounds %struct.iv, %struct.iv* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %11, align 8
  %113 = load %struct.iv*, %struct.iv** %9, align 8
  %114 = getelementptr inbounds %struct.iv, %struct.iv* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %12, align 8
  %116 = load %struct.ifs_ivopts_data*, %struct.ifs_ivopts_data** %8, align 8
  %117 = getelementptr inbounds %struct.ifs_ivopts_data, %struct.ifs_ivopts_data* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load %struct.loop*, %struct.loop** %119, align 8
  %121 = load i32, i32* @sizetype, align 4
  %122 = load %struct.ifs_ivopts_data*, %struct.ifs_ivopts_data** %8, align 8
  %123 = getelementptr inbounds %struct.ifs_ivopts_data, %struct.ifs_ivopts_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @convert_affine_scev(%struct.loop* %120, i32 %121, i8** %11, i8** %12, i32 %124, i32 0)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %157

128:                                              ; preds = %109
  %129 = load i32, i32* @MULT_EXPR, align 4
  %130 = load i32, i32* @sizetype, align 4
  %131 = load i8*, i8** %10, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = call i8* @fold_build2(i32 %129, i32 %130, i8* %131, i8* %132)
  store i8* %133, i8** %10, align 8
  %134 = load %struct.ifs_ivopts_data*, %struct.ifs_ivopts_data** %8, align 8
  %135 = getelementptr inbounds %struct.ifs_ivopts_data, %struct.ifs_ivopts_data* %134, i32 0, i32 0
  %136 = load i8**, i8*** %135, align 8
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %144, label %139

139:                                              ; preds = %128
  %140 = load i8*, i8** %10, align 8
  %141 = load %struct.ifs_ivopts_data*, %struct.ifs_ivopts_data** %8, align 8
  %142 = getelementptr inbounds %struct.ifs_ivopts_data, %struct.ifs_ivopts_data* %141, i32 0, i32 0
  %143 = load i8**, i8*** %142, align 8
  store i8* %140, i8** %143, align 8
  br label %156

144:                                              ; preds = %128
  %145 = load i32, i32* @PLUS_EXPR, align 4
  %146 = load i32, i32* @sizetype, align 4
  %147 = load %struct.ifs_ivopts_data*, %struct.ifs_ivopts_data** %8, align 8
  %148 = getelementptr inbounds %struct.ifs_ivopts_data, %struct.ifs_ivopts_data* %147, i32 0, i32 0
  %149 = load i8**, i8*** %148, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** %10, align 8
  %152 = call i8* @fold_build2(i32 %145, i32 %146, i8* %150, i8* %151)
  %153 = load %struct.ifs_ivopts_data*, %struct.ifs_ivopts_data** %8, align 8
  %154 = getelementptr inbounds %struct.ifs_ivopts_data, %struct.ifs_ivopts_data* %153, i32 0, i32 0
  %155 = load i8**, i8*** %154, align 8
  store i8* %152, i8** %155, align 8
  br label %156

156:                                              ; preds = %144, %139
  store i32 1, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %127, %104, %91, %81, %71, %63, %38, %32
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i8* @component_ref_field_offset(i8*) #1

declare dso_local i32 @expr_invariant_in_loop_p(%struct.loop*, i8*) #1

declare dso_local i8* @array_ref_element_size(i8*) #1

declare dso_local i8* @array_ref_low_bound(i8*) #1

declare dso_local %struct.iv* @get_iv(%struct.TYPE_2__*, i8*) #1

declare dso_local i8* @build_int_cst(i32, i32) #1

declare dso_local i32 @convert_affine_scev(%struct.loop*, i32, i8**, i8**, i32, i32) #1

declare dso_local i8* @fold_build2(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

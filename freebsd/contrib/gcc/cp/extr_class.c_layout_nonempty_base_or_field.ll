; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_layout_nonempty_base_or_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_layout_nonempty_base_or_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record_layout_info_s = type { i32, i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@UNION_TYPE = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@ssizetype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.record_layout_info_s*, i32, i32, i32)* @layout_nonempty_base_or_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @layout_nonempty_base_or_field(%struct.record_layout_info_s* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.record_layout_info_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.record_layout_info_s, align 4
  store %struct.record_layout_info_s* %0, %struct.record_layout_info_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @NULL_TREE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @TREE_TYPE(i32 %17)
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @TREE_TYPE(i32 %20)
  store i32 %21, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22, %89
  %24 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %5, align 8
  %25 = bitcast %struct.record_layout_info_s* %12 to i8*
  %26 = bitcast %struct.record_layout_info_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  %27 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @place_field(%struct.record_layout_info_s* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @byte_position(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %5, align 8
  %33 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @TREE_CODE(i32 %34)
  %36 = load i64, i64* @UNION_TYPE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %90

39:                                               ; preds = %23
  %40 = call i32 @abi_version_at_least(i32 2)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @BINFO_VIRTUAL_P(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %90

50:                                               ; preds = %45, %42, %39
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @layout_conflict_p(i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %57
  %65 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %5, align 8
  %66 = bitcast %struct.record_layout_info_s* %65 to i8*
  %67 = bitcast %struct.record_layout_info_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 8, i1 false)
  %68 = load i32, i32* @PLUS_EXPR, align 4
  %69 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %5, align 8
  %70 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @CLASSTYPE_ALIGN(i32 %75)
  br label %80

77:                                               ; preds = %64
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @TYPE_ALIGN(i32 %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi i32 [ %76, %74 ], [ %79, %77 ]
  %82 = call i32 @bitsize_int(i32 %81)
  %83 = call i32 @size_binop(i32 %68, i32 %71, i32 %82)
  %84 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %5, align 8
  %85 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %5, align 8
  %87 = call i32 @normalize_rli(%struct.record_layout_info_s* %86)
  br label %89

88:                                               ; preds = %57
  br label %90

89:                                               ; preds = %80
  br label %23

90:                                               ; preds = %88, %49, %38
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @BINFO_TYPE(i32 %94)
  %96 = call i64 @CLASS_TYPE_P(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @ssizetype, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @convert(i32 %100, i32 %101)
  %103 = load i32, i32* @ssizetype, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @BINFO_OFFSET(i32 %104)
  %106 = call i32 @convert(i32 %103, i32 %105)
  %107 = call i32 @size_diffop(i32 %102, i32 %106)
  %108 = call i32 @propagate_binfo_offsets(i32 %99, i32 %107)
  br label %109

109:                                              ; preds = %98, %93, %90
  ret void
}

declare dso_local i32 @TREE_TYPE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @place_field(%struct.record_layout_info_s*, i32) #1

declare dso_local i32 @byte_position(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @abi_version_at_least(i32) #1

declare dso_local i64 @BINFO_VIRTUAL_P(i32) #1

declare dso_local i64 @layout_conflict_p(i32, i32, i32, i32) #1

declare dso_local i32 @size_binop(i32, i32, i32) #1

declare dso_local i32 @bitsize_int(i32) #1

declare dso_local i32 @CLASSTYPE_ALIGN(i32) #1

declare dso_local i32 @TYPE_ALIGN(i32) #1

declare dso_local i32 @normalize_rli(%struct.record_layout_info_s*) #1

declare dso_local i64 @CLASS_TYPE_P(i32) #1

declare dso_local i32 @BINFO_TYPE(i32) #1

declare dso_local i32 @propagate_binfo_offsets(i32, i32) #1

declare dso_local i32 @size_diffop(i32, i32) #1

declare dso_local i32 @convert(i32, i32) #1

declare dso_local i32 @BINFO_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

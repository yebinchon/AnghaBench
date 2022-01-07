; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-math-opts.c_insert_reciprocals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-math-opts.c_insert_reciprocals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.occurrence = type { i32, i64, %struct.occurrence*, %struct.occurrence*, i8*, i8*, i64 }

@flag_trapping_math = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"reciptmp\00", align 1
@MODIFY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@RDIV_EXPR = common dso_local global i32 0, align 4
@BSI_SAME_STMT = common dso_local global i32 0, align 4
@BSI_NEW_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.occurrence*, i8*, i8*, i32)* @insert_reciprocals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_reciprocals(%struct.TYPE_9__* %0, %struct.occurrence* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.occurrence*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca %struct.occurrence*, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.occurrence* %1, %struct.occurrence** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %113, label %19

19:                                               ; preds = %5
  %20 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %21 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @flag_trapping_math, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %113, label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %29 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %113

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @TREE_TYPE(i8* %34)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i8* @make_rename_temp(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %9, align 8
  %38 = load i32, i32* @MODIFY_EXPR, align 4
  %39 = load i32, i32* @void_type_node, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @RDIV_EXPR, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @build_one_cst(i8* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @fold_build2(i32 %41, i8* %42, i32 %44, i8* %45)
  %47 = call i8* @build2(i32 %38, i32 %39, i8* %40, i32 %46)
  store i8* %47, i8** %12, align 8
  %48 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %49 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %33
  %53 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %54 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @bsi_after_labels(i64 %55)
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = bitcast %struct.TYPE_9__* %13 to i8*
  %59 = bitcast %struct.TYPE_9__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 8, i1 false)
  br label %60

60:                                               ; preds = %75, %52
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @bsi_end_p(i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @bsi_stmt(i64 %67)
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @is_division_by(i32 %68, i8* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %65, %60
  %74 = phi i1 [ false, %60 ], [ %72, %65 ]
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = call i32 @bsi_next(%struct.TYPE_9__* %13)
  br label %60

77:                                               ; preds = %73
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* @BSI_SAME_STMT, align 4
  %80 = call i32 @bsi_insert_before(%struct.TYPE_9__* %13, i8* %78, i32 %79)
  br label %109

81:                                               ; preds = %33
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = icmp ne %struct.TYPE_9__* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %86 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load i32, i32* @BSI_NEW_STMT, align 4
  %96 = call i32 @bsi_insert_after(%struct.TYPE_9__* %93, i8* %94, i32 %95)
  br label %108

97:                                               ; preds = %84, %81
  %98 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %99 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @bsi_after_labels(i64 %100)
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i64 %101, i64* %102, align 8
  %103 = bitcast %struct.TYPE_9__* %13 to i8*
  %104 = bitcast %struct.TYPE_9__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 8, i1 false)
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* @BSI_SAME_STMT, align 4
  %107 = call i32 @bsi_insert_before(%struct.TYPE_9__* %13, i8* %105, i32 %106)
  br label %108

108:                                              ; preds = %97, %92
  br label %109

109:                                              ; preds = %108, %77
  %110 = load i8*, i8** %12, align 8
  %111 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %112 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %111, i32 0, i32 5
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %109, %27, %24, %5
  %114 = load i8*, i8** %9, align 8
  %115 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %116 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %118 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %117, i32 0, i32 3
  %119 = load %struct.occurrence*, %struct.occurrence** %118, align 8
  store %struct.occurrence* %119, %struct.occurrence** %14, align 8
  br label %120

120:                                              ; preds = %129, %113
  %121 = load %struct.occurrence*, %struct.occurrence** %14, align 8
  %122 = icmp ne %struct.occurrence* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %125 = load %struct.occurrence*, %struct.occurrence** %14, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load i32, i32* %10, align 4
  call void @insert_reciprocals(%struct.TYPE_9__* %124, %struct.occurrence* %125, i8* %126, i8* %127, i32 %128)
  br label %129

129:                                              ; preds = %123
  %130 = load %struct.occurrence*, %struct.occurrence** %14, align 8
  %131 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %130, i32 0, i32 2
  %132 = load %struct.occurrence*, %struct.occurrence** %131, align 8
  store %struct.occurrence* %132, %struct.occurrence** %14, align 8
  br label %120

133:                                              ; preds = %120
  ret void
}

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i8* @make_rename_temp(i8*, i8*) #1

declare dso_local i8* @build2(i32, i32, i8*, i32) #1

declare dso_local i32 @fold_build2(i32, i8*, i32, i8*) #1

declare dso_local i32 @build_one_cst(i8*) #1

declare dso_local i64 @bsi_after_labels(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bsi_end_p(i64) #1

declare dso_local i32 @is_division_by(i32, i8*) #1

declare dso_local i32 @bsi_stmt(i64) #1

declare dso_local i32 @bsi_next(%struct.TYPE_9__*) #1

declare dso_local i32 @bsi_insert_before(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @bsi_insert_after(%struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

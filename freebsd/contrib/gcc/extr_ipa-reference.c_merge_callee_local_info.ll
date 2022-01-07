; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_merge_callee_local_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_merge_callee_local_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.TYPE_5__, %struct.cgraph_edge*, %struct.ipa_dfs_info* }
%struct.TYPE_5__ = type { i64 }
%struct.cgraph_edge = type { %struct.cgraph_node*, %struct.cgraph_edge* }
%struct.ipa_dfs_info = type { %struct.cgraph_node* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"suspect inlining of \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\0Ainto \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*, %struct.cgraph_node*)* @merge_callee_local_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_callee_local_info(%struct.cgraph_node* %0, %struct.cgraph_node* %1) #0 {
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca %struct.cgraph_node*, align 8
  %5 = alloca %struct.cgraph_edge*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.ipa_dfs_info*, align 8
  %8 = alloca %struct.cgraph_node*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.cgraph_node*, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %3, align 8
  store %struct.cgraph_node* %1, %struct.cgraph_node** %4, align 8
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %13 = call %struct.TYPE_6__* @get_reference_vars_info_from_cgraph(%struct.cgraph_node* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %6, align 8
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %17 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %16, i32 0, i32 2
  %18 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %17, align 8
  store %struct.ipa_dfs_info* %18, %struct.ipa_dfs_info** %7, align 8
  %19 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %7, align 8
  %20 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %19, i32 0, i32 0
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %20, align 8
  %22 = icmp ne %struct.cgraph_node* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %113

24:                                               ; preds = %2
  %25 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %26 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %7, align 8
  %27 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %26, i32 0, i32 0
  store %struct.cgraph_node* %25, %struct.cgraph_node** %27, align 8
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %29 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %28, i32 0, i32 1
  %30 = load %struct.cgraph_edge*, %struct.cgraph_edge** %29, align 8
  store %struct.cgraph_edge* %30, %struct.cgraph_edge** %5, align 8
  br label %31

31:                                               ; preds = %106, %24
  %32 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %33 = icmp ne %struct.cgraph_edge* %32, null
  br i1 %33, label %34, label %110

34:                                               ; preds = %31
  %35 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %36 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %35, i32 0, i32 0
  %37 = load %struct.cgraph_node*, %struct.cgraph_node** %36, align 8
  store %struct.cgraph_node* %37, %struct.cgraph_node** %8, align 8
  %38 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  %39 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %105

43:                                               ; preds = %34
  %44 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  store %struct.cgraph_node* %44, %struct.cgraph_node** %11, align 8
  %45 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  %46 = call %struct.cgraph_node* @cgraph_master_clone(%struct.cgraph_node* %45)
  store %struct.cgraph_node* %46, %struct.cgraph_node** %8, align 8
  %47 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  %48 = icmp ne %struct.cgraph_node* %47, null
  br i1 %48, label %49, label %90

49:                                               ; preds = %43
  %50 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  %51 = call %struct.TYPE_6__* @get_reference_vars_info_from_cgraph(%struct.cgraph_node* %50)
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %9, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %10, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = icmp ne %struct.TYPE_7__* %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %49
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bitmap_ior_into(i32 %61, i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bitmap_ior_into(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %58, %49
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %89 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  call void @merge_callee_local_info(%struct.cgraph_node* %88, %struct.cgraph_node* %89)
  br label %104

90:                                               ; preds = %43
  %91 = load i32, i32* @stderr, align 4
  %92 = call i32 @fprintf(i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @stderr, align 4
  %94 = load %struct.cgraph_node*, %struct.cgraph_node** %11, align 8
  %95 = call i32 @dump_cgraph_node(i32 %93, %struct.cgraph_node* %94)
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 @fprintf(i32 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @stderr, align 4
  %99 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %100 = call i32 @dump_cgraph_node(i32 %98, %struct.cgraph_node* %99)
  %101 = load i32, i32* @stderr, align 4
  %102 = call i32 @dump_cgraph(i32 %101)
  %103 = call i32 @gcc_assert(i32 0)
  br label %104

104:                                              ; preds = %90, %73
  br label %105

105:                                              ; preds = %104, %34
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %108 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %107, i32 0, i32 1
  %109 = load %struct.cgraph_edge*, %struct.cgraph_edge** %108, align 8
  store %struct.cgraph_edge* %109, %struct.cgraph_edge** %5, align 8
  br label %31

110:                                              ; preds = %31
  %111 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %7, align 8
  %112 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %111, i32 0, i32 0
  store %struct.cgraph_node* null, %struct.cgraph_node** %112, align 8
  br label %113

113:                                              ; preds = %110, %23
  ret void
}

declare dso_local %struct.TYPE_6__* @get_reference_vars_info_from_cgraph(%struct.cgraph_node*) #1

declare dso_local %struct.cgraph_node* @cgraph_master_clone(%struct.cgraph_node*) #1

declare dso_local i32 @bitmap_ior_into(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @dump_cgraph_node(i32, %struct.cgraph_node*) #1

declare dso_local i32 @dump_cgraph(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_select_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_select_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32 }
%struct.cluster = type { i32, %struct.tipc_node**, i32 }

@tipc_max_nodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tipc_node* @tipc_cltr_select_node(%struct.cluster* %0, i32 %1) #0 {
  %3 = alloca %struct.tipc_node*, align 8
  %4 = alloca %struct.cluster*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cluster* %0, %struct.cluster** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @tipc_max_nodes, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.cluster*, %struct.cluster** %4, align 8
  %11 = getelementptr inbounds %struct.cluster, %struct.cluster* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @in_own_cluster(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.cluster*, %struct.cluster** %4, align 8
  %19 = getelementptr inbounds %struct.cluster, %struct.cluster* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store %struct.tipc_node* null, %struct.tipc_node** %3, align 8
  br label %109

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %30, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.cluster*, %struct.cluster** %4, align 8
  %27 = getelementptr inbounds %struct.cluster, %struct.cluster* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %24

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %39, %40
  br label %43

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 1, %42 ]
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.cluster*, %struct.cluster** %4, align 8
  %47 = getelementptr inbounds %struct.cluster, %struct.cluster* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sle i32 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %78, %43
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.cluster*, %struct.cluster** %4, align 8
  %56 = getelementptr inbounds %struct.cluster, %struct.cluster* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sle i32 %54, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = load %struct.cluster*, %struct.cluster** %4, align 8
  %61 = getelementptr inbounds %struct.cluster, %struct.cluster* %60, i32 0, i32 1
  %62 = load %struct.tipc_node**, %struct.tipc_node*** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %62, i64 %64
  %66 = load %struct.tipc_node*, %struct.tipc_node** %65, align 8
  %67 = call i64 @tipc_node_has_active_links(%struct.tipc_node* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %59
  %70 = load %struct.cluster*, %struct.cluster** %4, align 8
  %71 = getelementptr inbounds %struct.cluster, %struct.cluster* %70, i32 0, i32 1
  %72 = load %struct.tipc_node**, %struct.tipc_node*** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %72, i64 %74
  %76 = load %struct.tipc_node*, %struct.tipc_node** %75, align 8
  store %struct.tipc_node* %76, %struct.tipc_node** %3, align 8
  br label %109

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %53

81:                                               ; preds = %53
  store i32 1, i32* %6, align 4
  br label %82

82:                                               ; preds = %105, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %82
  %87 = load %struct.cluster*, %struct.cluster** %4, align 8
  %88 = getelementptr inbounds %struct.cluster, %struct.cluster* %87, i32 0, i32 1
  %89 = load %struct.tipc_node**, %struct.tipc_node*** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %89, i64 %91
  %93 = load %struct.tipc_node*, %struct.tipc_node** %92, align 8
  %94 = call i64 @tipc_node_has_active_links(%struct.tipc_node* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %86
  %97 = load %struct.cluster*, %struct.cluster** %4, align 8
  %98 = getelementptr inbounds %struct.cluster, %struct.cluster* %97, i32 0, i32 1
  %99 = load %struct.tipc_node**, %struct.tipc_node*** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %99, i64 %101
  %103 = load %struct.tipc_node*, %struct.tipc_node** %102, align 8
  store %struct.tipc_node* %103, %struct.tipc_node** %3, align 8
  br label %109

104:                                              ; preds = %86
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %82

108:                                              ; preds = %82
  store %struct.tipc_node* null, %struct.tipc_node** %3, align 8
  br label %109

109:                                              ; preds = %108, %96, %69, %22
  %110 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  ret %struct.tipc_node* %110
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @in_own_cluster(i32) #1

declare dso_local i64 @tipc_node_has_active_links(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_select_router.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_select_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster = type { i32, i32*, i32 }

@tipc_max_nodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_cltr_select_router(%struct.cluster* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cluster*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cluster* %0, %struct.cluster** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cluster*, %struct.cluster** %4, align 8
  %11 = getelementptr inbounds %struct.cluster, %struct.cluster* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.cluster*, %struct.cluster** %4, align 8
  %14 = getelementptr inbounds %struct.cluster, %struct.cluster* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @in_own_cluster(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

24:                                               ; preds = %2
  %25 = load i32, i32* @tipc_max_nodes, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %30, %24
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %26

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %50, %33
  %39 = load %struct.cluster*, %struct.cluster** %4, align 8
  %40 = getelementptr inbounds %struct.cluster, %struct.cluster* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @tipc_node_is_up(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %55

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %38, label %55

55:                                               ; preds = %50, %48
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %72, %59
  %61 = load %struct.cluster*, %struct.cluster** %4, align 8
  %62 = getelementptr inbounds %struct.cluster, %struct.cluster* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @tipc_node_is_up(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %77

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %60, label %77

77:                                               ; preds = %72, %70
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %98

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %55
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp sle i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load %struct.cluster*, %struct.cluster** %4, align 8
  %90 = getelementptr inbounds %struct.cluster, %struct.cluster* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @tipc_node_select_router(i32 %95, i32 %96)
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %83, %81, %23
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @in_own_cluster(i32) #1

declare dso_local i64 @tipc_node_is_up(i32) #1

declare dso_local i32 @tipc_node_select_router(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

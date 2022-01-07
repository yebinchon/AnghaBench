; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_select_router.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_select_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32, i32* }

@tipc_max_nodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_node_select_router(%struct.tipc_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tipc_node* %0, %struct.tipc_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %11 = icmp ne %struct.tipc_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

13:                                               ; preds = %2
  %14 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %15 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %107

19:                                               ; preds = %13
  %20 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %21 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  %24 = mul nsw i32 %23, 32
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @tipc_max_nodes, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %31, %19
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %27

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %55, %34
  %40 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %41 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sdiv i32 %43, 32
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = srem i32 %48, 32
  %50 = ashr i32 %47, %49
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %60

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %39, label %60

60:                                               ; preds = %55, %53
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %60
  store i32 1, i32* %9, align 4
  br label %65

65:                                               ; preds = %81, %64
  %66 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %67 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sdiv i32 %69, 32
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = srem i32 %74, 32
  %76 = ashr i32 %73, %75
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %86

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %65, label %86

86:                                               ; preds = %81, %79
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  br label %92

92:                                               ; preds = %86, %60
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp sle i32 %96, %97
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi i1 [ false, %92 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = call i32 (...) @own_zone()
  %104 = call i32 (...) @own_cluster()
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @tipc_addr(i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %99, %18, %12
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tipc_addr(i32, i32, i32) #1

declare dso_local i32 @own_zone(...) #1

declare dso_local i32 @own_cluster(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

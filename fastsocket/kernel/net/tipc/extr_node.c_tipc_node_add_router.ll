; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_add_router.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_add_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32*, i32 }

@tipc_max_nodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_node_add_router(%struct.tipc_node* %0, i32 %1) #0 {
  %3 = alloca %struct.tipc_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tipc_node* %0, %struct.tipc_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @tipc_node(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = srem i32 %8, 32
  %10 = shl i32 1, %9
  %11 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %12 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 %14, 32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %10, %18
  %20 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %21 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 %23, 32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32 %19, i32* %26, align 4
  %27 = load i32, i32* @tipc_max_nodes, align 4
  %28 = sdiv i32 %27, 32
  %29 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %30 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %51, %2
  %32 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %33 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %39 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %42 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %37, %31
  %50 = phi i1 [ false, %31 ], [ %48, %37 ]
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %31

52:                                               ; preds = %49
  ret void
}

declare dso_local i32 @tipc_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_attach_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_attach_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster = type { i64, %struct.tipc_node** }
%struct.tipc_node = type { i32 }

@tipc_max_nodes = common dso_local global i64 0, align 8
@tipc_highest_allowed_slave = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_cltr_attach_node(%struct.cluster* %0, %struct.tipc_node* %1) #0 {
  %3 = alloca %struct.cluster*, align 8
  %4 = alloca %struct.tipc_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cluster* %0, %struct.cluster** %3, align 8
  store %struct.tipc_node* %1, %struct.tipc_node** %4, align 8
  %7 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %8 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @tipc_node(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* @tipc_max_nodes, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %13 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @in_own_cluster(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @tipc_highest_allowed_slave, align 8
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i64, i64* %5, align 8
  %21 = icmp ugt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ule i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.cluster*, %struct.cluster** %3, align 8
  %30 = getelementptr inbounds %struct.cluster, %struct.cluster* %29, i32 0, i32 1
  %31 = load %struct.tipc_node**, %struct.tipc_node*** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %31, i64 %32
  %34 = load %struct.tipc_node*, %struct.tipc_node** %33, align 8
  %35 = icmp eq %struct.tipc_node* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  %39 = load %struct.cluster*, %struct.cluster** %3, align 8
  %40 = getelementptr inbounds %struct.cluster, %struct.cluster* %39, i32 0, i32 1
  %41 = load %struct.tipc_node**, %struct.tipc_node*** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %41, i64 %42
  store %struct.tipc_node* %38, %struct.tipc_node** %43, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.cluster*, %struct.cluster** %3, align 8
  %46 = getelementptr inbounds %struct.cluster, %struct.cluster* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %19
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.cluster*, %struct.cluster** %3, align 8
  %52 = getelementptr inbounds %struct.cluster, %struct.cluster* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %19
  ret void
}

declare dso_local i64 @tipc_node(i32) #1

declare dso_local i64 @in_own_cluster(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

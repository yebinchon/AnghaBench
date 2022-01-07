; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_next_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_next_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster = type { i64, %struct.tipc_node** }
%struct.tipc_node = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tipc_cltr_next_node(%struct.cluster* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.cluster*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tipc_node*, align 8
  %7 = alloca i64, align 8
  store %struct.cluster* %0, %struct.cluster** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @tipc_node(i64 %8)
  %10 = add i64 %9, 1
  store i64 %10, i64* %7, align 8
  %11 = load %struct.cluster*, %struct.cluster** %4, align 8
  %12 = icmp ne %struct.cluster* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %3, align 8
  br label %71

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.cluster*, %struct.cluster** %4, align 8
  %19 = getelementptr inbounds %struct.cluster, %struct.cluster* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ule i64 %17, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.cluster*, %struct.cluster** %4, align 8
  %24 = getelementptr inbounds %struct.cluster, %struct.cluster* %23, i32 0, i32 1
  %25 = load %struct.tipc_node**, %struct.tipc_node*** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %25, i64 %26
  %28 = load %struct.tipc_node*, %struct.tipc_node** %27, align 8
  store %struct.tipc_node* %28, %struct.tipc_node** %6, align 8
  %29 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %30 = icmp ne %struct.tipc_node* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %33 = call i64 @tipc_node_has_active_links(%struct.tipc_node* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %37 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %3, align 8
  br label %71

39:                                               ; preds = %31, %22
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %16

43:                                               ; preds = %16
  store i64 1, i64* %7, align 8
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @tipc_node(i64 %46)
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load %struct.cluster*, %struct.cluster** %4, align 8
  %51 = getelementptr inbounds %struct.cluster, %struct.cluster* %50, i32 0, i32 1
  %52 = load %struct.tipc_node**, %struct.tipc_node*** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.tipc_node*, %struct.tipc_node** %52, i64 %53
  %55 = load %struct.tipc_node*, %struct.tipc_node** %54, align 8
  store %struct.tipc_node* %55, %struct.tipc_node** %6, align 8
  %56 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %57 = icmp ne %struct.tipc_node* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %60 = call i64 @tipc_node_has_active_links(%struct.tipc_node* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %64 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %3, align 8
  br label %71

66:                                               ; preds = %58, %49
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %7, align 8
  br label %44

70:                                               ; preds = %44
  store i64 0, i64* %3, align 8
  br label %71

71:                                               ; preds = %70, %62, %35, %13
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local i64 @tipc_node(i64) #1

declare dso_local i64 @tipc_node_has_active_links(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

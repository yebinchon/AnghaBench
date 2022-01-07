; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_zone.c_tipc_zone_select_remote_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_zone.c_tipc_zone_select_remote_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32 }
%struct._zone = type { %struct.cluster** }
%struct.cluster = type { i32 }

@tipc_max_clusters = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tipc_node* @tipc_zone_select_remote_node(%struct._zone* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.tipc_node*, align 8
  %5 = alloca %struct._zone*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cluster*, align 8
  %9 = alloca %struct.tipc_node*, align 8
  %10 = alloca i64, align 8
  store %struct._zone* %0, %struct._zone** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct._zone*, %struct._zone** %5, align 8
  %12 = icmp ne %struct._zone* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.tipc_node* null, %struct.tipc_node** %4, align 8
  br label %61

14:                                               ; preds = %3
  %15 = load %struct._zone*, %struct._zone** %5, align 8
  %16 = getelementptr inbounds %struct._zone, %struct._zone* %15, i32 0, i32 0
  %17 = load %struct.cluster**, %struct.cluster*** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @tipc_cluster(i64 %18)
  %20 = getelementptr inbounds %struct.cluster*, %struct.cluster** %17, i64 %19
  %21 = load %struct.cluster*, %struct.cluster** %20, align 8
  store %struct.cluster* %21, %struct.cluster** %8, align 8
  %22 = load %struct.cluster*, %struct.cluster** %8, align 8
  %23 = icmp ne %struct.cluster* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store %struct.tipc_node* null, %struct.tipc_node** %4, align 8
  br label %61

25:                                               ; preds = %14
  %26 = load %struct.cluster*, %struct.cluster** %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call %struct.tipc_node* @tipc_cltr_select_node(%struct.cluster* %26, i64 %27)
  store %struct.tipc_node* %28, %struct.tipc_node** %9, align 8
  %29 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %30 = icmp ne %struct.tipc_node* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  store %struct.tipc_node* %32, %struct.tipc_node** %4, align 8
  br label %61

33:                                               ; preds = %25
  store i64 1, i64* %10, align 8
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @tipc_max_clusters, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load %struct._zone*, %struct._zone** %5, align 8
  %40 = getelementptr inbounds %struct._zone, %struct._zone* %39, i32 0, i32 0
  %41 = load %struct.cluster**, %struct.cluster*** %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.cluster*, %struct.cluster** %41, i64 %42
  %44 = load %struct.cluster*, %struct.cluster** %43, align 8
  store %struct.cluster* %44, %struct.cluster** %8, align 8
  %45 = load %struct.cluster*, %struct.cluster** %8, align 8
  %46 = icmp ne %struct.cluster* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  store %struct.tipc_node* null, %struct.tipc_node** %4, align 8
  br label %61

48:                                               ; preds = %38
  %49 = load %struct.cluster*, %struct.cluster** %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call %struct.tipc_node* @tipc_cltr_select_node(%struct.cluster* %49, i64 %50)
  store %struct.tipc_node* %51, %struct.tipc_node** %9, align 8
  %52 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  %53 = icmp ne %struct.tipc_node* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load %struct.tipc_node*, %struct.tipc_node** %9, align 8
  store %struct.tipc_node* %55, %struct.tipc_node** %4, align 8
  br label %61

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %34

60:                                               ; preds = %34
  store %struct.tipc_node* null, %struct.tipc_node** %4, align 8
  br label %61

61:                                               ; preds = %60, %54, %47, %31, %24, %13
  %62 = load %struct.tipc_node*, %struct.tipc_node** %4, align 8
  ret %struct.tipc_node* %62
}

declare dso_local i64 @tipc_cluster(i64) #1

declare dso_local %struct.tipc_node* @tipc_cltr_select_node(%struct.cluster*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

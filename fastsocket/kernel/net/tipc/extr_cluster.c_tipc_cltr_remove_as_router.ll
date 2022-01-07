; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_remove_as_router.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_remove_as_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster = type { i64, i64, i64*, i32 }

@LOWEST_SLAVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_cltr_remove_as_router(%struct.cluster* %0, i64 %1) #0 {
  %3 = alloca %struct.cluster*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.cluster* %0, %struct.cluster** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @is_slave(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %54

12:                                               ; preds = %2
  %13 = load %struct.cluster*, %struct.cluster** %3, align 8
  %14 = getelementptr inbounds %struct.cluster, %struct.cluster* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @in_own_cluster(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i64, i64* @LOWEST_SLAVE, align 8
  store i64 %19, i64* %5, align 8
  %20 = load %struct.cluster*, %struct.cluster** %3, align 8
  %21 = getelementptr inbounds %struct.cluster, %struct.cluster* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  br label %27

23:                                               ; preds = %12
  store i64 1, i64* %5, align 8
  %24 = load %struct.cluster*, %struct.cluster** %3, align 8
  %25 = getelementptr inbounds %struct.cluster, %struct.cluster* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %51, %27
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ule i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load %struct.cluster*, %struct.cluster** %3, align 8
  %35 = getelementptr inbounds %struct.cluster, %struct.cluster* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load %struct.cluster*, %struct.cluster** %3, align 8
  %43 = getelementptr inbounds %struct.cluster, %struct.cluster* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @tipc_node_remove_router(i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %41, %33
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %7, align 8
  br label %29

54:                                               ; preds = %11, %29
  ret void
}

declare dso_local i64 @is_slave(i64) #1

declare dso_local i64 @in_own_cluster(i32) #1

declare dso_local i32 @tipc_node_remove_router(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_addr.c_tipc_addr_domain_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_addr.c_tipc_addr_domain_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tipc_max_nodes = common dso_local global i64 0, align 8
@LOWEST_SLAVE = common dso_local global i64 0, align 8
@tipc_max_slaves = common dso_local global i64 0, align 8
@tipc_max_clusters = common dso_local global i64 0, align 8
@tipc_max_zones = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_addr_domain_valid(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @tipc_node(i64 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @tipc_cluster(i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @tipc_zone(i64 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* @tipc_max_nodes, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @is_slave(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i64, i64* @LOWEST_SLAVE, align 8
  %20 = load i64, i64* @tipc_max_slaves, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %55

27:                                               ; preds = %22
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @tipc_max_clusters, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %55

32:                                               ; preds = %27
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @tipc_max_zones, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %55

37:                                               ; preds = %32
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %40
  store i32 0, i32* %2, align 4
  br label %55

47:                                               ; preds = %43, %37
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %55

54:                                               ; preds = %50, %47
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %53, %46, %36, %31, %26
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @tipc_node(i64) #1

declare dso_local i64 @tipc_cluster(i64) #1

declare dso_local i64 @tipc_zone(i64) #1

declare dso_local i64 @is_slave(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

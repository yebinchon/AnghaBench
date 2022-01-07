; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_zone.c_tipc_zone_select_router.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_zone.c_tipc_zone_select_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._zone = type { %struct.cluster** }
%struct.cluster = type { i32 }

@tipc_max_clusters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_zone_select_router(%struct._zone* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cluster*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._zone* %0, %struct._zone** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct._zone*, %struct._zone** %5, align 8
  %12 = icmp ne %struct._zone* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

14:                                               ; preds = %3
  %15 = load %struct._zone*, %struct._zone** %5, align 8
  %16 = getelementptr inbounds %struct._zone, %struct._zone* %15, i32 0, i32 0
  %17 = load %struct.cluster**, %struct.cluster*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @tipc_cluster(i32 %18)
  %20 = getelementptr inbounds %struct.cluster*, %struct.cluster** %17, i64 %19
  %21 = load %struct.cluster*, %struct.cluster** %20, align 8
  store %struct.cluster* %21, %struct.cluster** %8, align 8
  %22 = load %struct.cluster*, %struct.cluster** %8, align 8
  %23 = icmp ne %struct.cluster* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load %struct.cluster*, %struct.cluster** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @tipc_cltr_select_router(%struct.cluster* %25, i32 %26)
  br label %29

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %66

35:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %62, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @tipc_max_clusters, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load %struct._zone*, %struct._zone** %5, align 8
  %42 = getelementptr inbounds %struct._zone, %struct._zone* %41, i32 0, i32 0
  %43 = load %struct.cluster**, %struct.cluster*** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cluster*, %struct.cluster** %43, i64 %45
  %47 = load %struct.cluster*, %struct.cluster** %46, align 8
  store %struct.cluster* %47, %struct.cluster** %8, align 8
  %48 = load %struct.cluster*, %struct.cluster** %8, align 8
  %49 = icmp ne %struct.cluster* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load %struct.cluster*, %struct.cluster** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @tipc_cltr_select_router(%struct.cluster* %51, i32 %52)
  br label %55

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %53, %50 ], [ 0, %54 ]
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %36

65:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %59, %33, %13
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @tipc_cluster(i32) #1

declare dso_local i32 @tipc_cltr_select_router(%struct.cluster*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

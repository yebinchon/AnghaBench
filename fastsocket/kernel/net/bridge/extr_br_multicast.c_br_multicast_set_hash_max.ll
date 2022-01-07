; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_set_hash_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_set_hash_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_multicast_set_hash_max(%struct.net_bridge* %0, i64 %1) #0 {
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @ENOENT, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %13 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @netif_running(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %79

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @is_power_of_2(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %79

25:                                               ; preds = %18
  %26 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %27 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %33 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %79

39:                                               ; preds = %30, %25
  store i32 0, i32* %5, align 4
  %40 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %41 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %45 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %47 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %78

50:                                               ; preds = %39
  %51 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %52 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32, i32* @EEXIST, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %76, %57
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %63 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %79

64:                                               ; preds = %50
  %65 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %66 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %65, i32 0, i32 3
  %67 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %68 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %71 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @br_mdb_rehash(%struct.TYPE_2__** %66, i64 %69, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %60

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %39
  br label %79

79:                                               ; preds = %78, %60, %38, %24, %17
  %80 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %81 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @br_mdb_rehash(%struct.TYPE_2__**, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

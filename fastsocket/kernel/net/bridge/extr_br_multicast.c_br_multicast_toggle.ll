; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_toggle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_multicast_toggle(%struct.net_bridge* %0, i64 %1) #0 {
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %7 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @netif_running(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %79

15:                                               ; preds = %2
  %16 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %17 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %79

25:                                               ; preds = %15
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %31 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %33 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %79

37:                                               ; preds = %25
  %38 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %39 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %76

42:                                               ; preds = %37
  %43 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %44 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load i32, i32* @EEXIST, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %74, %49
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %59 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %79

60:                                               ; preds = %42
  %61 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %62 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %61, i32 0, i32 3
  %63 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %64 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %69 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @br_mdb_rehash(%struct.TYPE_2__** %62, i32 %67, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  br label %52

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %37
  %77 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %78 = call i32 @br_multicast_start_querier(%struct.net_bridge* %77)
  br label %79

79:                                               ; preds = %76, %52, %36, %24, %14
  %80 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %81 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @br_mdb_rehash(%struct.TYPE_2__**, i32, i32) #1

declare dso_local i32 @br_multicast_start_querier(%struct.net_bridge*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

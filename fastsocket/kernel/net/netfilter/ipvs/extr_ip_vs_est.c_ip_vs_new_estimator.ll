; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_est.c_ip_vs_new_estimator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_est.c_ip_vs_new_estimator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_stats = type { %struct.TYPE_2__, %struct.ip_vs_estimator }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ip_vs_estimator = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@est_lock = common dso_local global i32 0, align 4
@est_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_new_estimator(%struct.ip_vs_stats* %0) #0 {
  %2 = alloca %struct.ip_vs_stats*, align 8
  %3 = alloca %struct.ip_vs_estimator*, align 8
  store %struct.ip_vs_stats* %0, %struct.ip_vs_stats** %2, align 8
  %4 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %2, align 8
  %5 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %4, i32 0, i32 1
  store %struct.ip_vs_estimator* %5, %struct.ip_vs_estimator** %3, align 8
  %6 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %7 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %6, i32 0, i32 5
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %2, align 8
  %10 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %14 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %13, i32 0, i32 10
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %2, align 8
  %16 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 10
  %20 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %21 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %2, align 8
  %23 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %27 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %2, align 8
  %29 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 10
  %33 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %34 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %2, align 8
  %36 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %40 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %2, align 8
  %42 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 10
  %46 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %47 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %2, align 8
  %49 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %53 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %2, align 8
  %55 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 5
  %59 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %60 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %2, align 8
  %62 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %66 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %2, align 8
  %68 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 5
  %72 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %73 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = call i32 @spin_lock_bh(i32* @est_lock)
  %75 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %3, align 8
  %76 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %75, i32 0, i32 5
  %77 = call i32 @list_add(i32* %76, i32* @est_list)
  %78 = call i32 @spin_unlock_bh(i32* @est_lock)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

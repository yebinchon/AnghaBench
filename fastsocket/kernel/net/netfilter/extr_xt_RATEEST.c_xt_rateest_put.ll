; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_RATEEST.c_xt_rateest_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_RATEEST.c_xt_rateest_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_rateest = type { i64, i32, i32, i32 }

@xt_rateest_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xt_rateest_put(%struct.xt_rateest* %0) #0 {
  %2 = alloca %struct.xt_rateest*, align 8
  store %struct.xt_rateest* %0, %struct.xt_rateest** %2, align 8
  %3 = call i32 @mutex_lock(i32* @xt_rateest_mutex)
  %4 = load %struct.xt_rateest*, %struct.xt_rateest** %2, align 8
  %5 = getelementptr inbounds %struct.xt_rateest, %struct.xt_rateest* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.xt_rateest*, %struct.xt_rateest** %2, align 8
  %11 = getelementptr inbounds %struct.xt_rateest, %struct.xt_rateest* %10, i32 0, i32 3
  %12 = call i32 @hlist_del(i32* %11)
  %13 = load %struct.xt_rateest*, %struct.xt_rateest** %2, align 8
  %14 = getelementptr inbounds %struct.xt_rateest, %struct.xt_rateest* %13, i32 0, i32 2
  %15 = load %struct.xt_rateest*, %struct.xt_rateest** %2, align 8
  %16 = getelementptr inbounds %struct.xt_rateest, %struct.xt_rateest* %15, i32 0, i32 1
  %17 = call i32 @gen_kill_estimator(i32* %14, i32* %16)
  %18 = load %struct.xt_rateest*, %struct.xt_rateest** %2, align 8
  %19 = call i32 @kfree(%struct.xt_rateest* %18)
  br label %20

20:                                               ; preds = %9, %1
  %21 = call i32 @mutex_unlock(i32* @xt_rateest_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @gen_kill_estimator(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.xt_rateest*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bclink_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bclink_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@bc_lock = common dso_local global i32 0, align 4
@bcbearer = common dso_local global i32* null, align 8
@bcl = common dso_local global %struct.TYPE_5__* null, align 8
@BCLINK_LOG_BUF_SIZE = common dso_local global i64 0, align 8
@bclink = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_bclink_stop() #0 {
  %1 = call i32 @spin_lock_bh(i32* @bc_lock)
  %2 = load i32*, i32** @bcbearer, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bcl, align 8
  %6 = call i32 @tipc_link_stop(%struct.TYPE_5__* %5)
  %7 = load i64, i64* @BCLINK_LOG_BUF_SIZE, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bcl, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @kfree(i32* %13)
  br label %15

15:                                               ; preds = %9, %4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @bcl, align 8
  %16 = load i32*, i32** @bclink, align 8
  %17 = call i32 @kfree(i32* %16)
  store i32* null, i32** @bclink, align 8
  %18 = load i32*, i32** @bcbearer, align 8
  %19 = call i32 @kfree(i32* %18)
  store i32* null, i32** @bcbearer, align 8
  br label %20

20:                                               ; preds = %15, %0
  %21 = call i32 @spin_unlock_bh(i32* @bc_lock)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tipc_link_stop(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

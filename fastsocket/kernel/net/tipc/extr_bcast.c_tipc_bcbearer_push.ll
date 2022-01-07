; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bcbearer_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bcbearer_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.bearer }
%struct.bearer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@bc_lock = common dso_local global i32 0, align 4
@bcbearer = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_bcbearer_push() #0 {
  %1 = alloca %struct.bearer*, align 8
  %2 = call i32 @spin_lock_bh(i32* @bc_lock)
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcbearer, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store %struct.bearer* %4, %struct.bearer** %1, align 8
  %5 = load %struct.bearer*, %struct.bearer** %1, align 8
  %6 = getelementptr inbounds %struct.bearer, %struct.bearer* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load %struct.bearer*, %struct.bearer** %1, align 8
  %12 = getelementptr inbounds %struct.bearer, %struct.bearer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.bearer*, %struct.bearer** %1, align 8
  %15 = call i32 @tipc_bearer_lock_push(%struct.bearer* %14)
  br label %16

16:                                               ; preds = %10, %0
  %17 = call i32 @spin_unlock_bh(i32* @bc_lock)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tipc_bearer_lock_push(%struct.bearer*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

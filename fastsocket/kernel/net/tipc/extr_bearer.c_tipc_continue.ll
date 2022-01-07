; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_continue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_bearer = type { i32 }
%struct.bearer = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@tipc_bearer_lock_push = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_continue(%struct.tipc_bearer* %0) #0 {
  %2 = alloca %struct.tipc_bearer*, align 8
  %3 = alloca %struct.bearer*, align 8
  store %struct.tipc_bearer* %0, %struct.tipc_bearer** %2, align 8
  %4 = load %struct.tipc_bearer*, %struct.tipc_bearer** %2, align 8
  %5 = bitcast %struct.tipc_bearer* %4 to %struct.bearer*
  store %struct.bearer* %5, %struct.bearer** %3, align 8
  %6 = load %struct.bearer*, %struct.bearer** %3, align 8
  %7 = getelementptr inbounds %struct.bearer, %struct.bearer* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.bearer*, %struct.bearer** %3, align 8
  %11 = getelementptr inbounds %struct.bearer, %struct.bearer* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.bearer*, %struct.bearer** %3, align 8
  %15 = getelementptr inbounds %struct.bearer, %struct.bearer* %14, i32 0, i32 1
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* @tipc_bearer_lock_push, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.bearer*, %struct.bearer** %3, align 8
  %22 = ptrtoint %struct.bearer* %21 to i64
  %23 = call i32 @tipc_k_signal(i32 %20, i64 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.bearer*, %struct.bearer** %3, align 8
  %26 = getelementptr inbounds %struct.bearer, %struct.bearer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.bearer*, %struct.bearer** %3, align 8
  %29 = getelementptr inbounds %struct.bearer, %struct.bearer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @tipc_k_signal(i32, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

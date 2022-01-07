; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_unqueue_me_pi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_unqueue_me_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_q = type { i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex_q*)* @unqueue_me_pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unqueue_me_pi(%struct.futex_q* %0) #0 {
  %2 = alloca %struct.futex_q*, align 8
  store %struct.futex_q* %0, %struct.futex_q** %2, align 8
  %3 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %4 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %3, i32 0, i32 3
  %5 = call i32 @plist_node_empty(%struct.TYPE_3__* %4)
  %6 = call i32 @WARN_ON(i32 %5)
  %7 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %8 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %7, i32 0, i32 3
  %9 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %10 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @plist_del(%struct.TYPE_3__* %8, i32* %11)
  %13 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %14 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %21 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @free_pi_state(i32* %22)
  %24 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %25 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %27 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @spin_unlock(i32 %28)
  %30 = load %struct.futex_q*, %struct.futex_q** %2, align 8
  %31 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %30, i32 0, i32 0
  %32 = call i32 @drop_futex_key_refs(i32* %31)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @plist_node_empty(%struct.TYPE_3__*) #1

declare dso_local i32 @plist_del(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free_pi_state(i32*) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @drop_futex_key_refs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

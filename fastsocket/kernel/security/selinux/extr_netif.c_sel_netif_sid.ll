; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netif.c_sel_netif_sid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_netif.c_sel_netif_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sel_netif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sel_netif_sid(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sel_netif*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.sel_netif* @sel_netif_find(i32 %8)
  store %struct.sel_netif* %9, %struct.sel_netif** %6, align 8
  %10 = load %struct.sel_netif*, %struct.sel_netif** %6, align 8
  %11 = icmp ne %struct.sel_netif* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.sel_netif*, %struct.sel_netif** %6, align 8
  %17 = getelementptr inbounds %struct.sel_netif, %struct.sel_netif* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %3, align 4
  br label %27

22:                                               ; preds = %2
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = load i32, i32* %4, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @sel_netif_sid_slow(i32 %24, i32* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sel_netif* @sel_netif_find(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @sel_netif_sid_slow(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

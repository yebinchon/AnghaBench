; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dnrt_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dnrt_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_route = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@dst_rcu_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_route*)* @dnrt_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnrt_drop(%struct.dn_route* %0) #0 {
  %2 = alloca %struct.dn_route*, align 8
  store %struct.dn_route* %0, %struct.dn_route** %2, align 8
  %3 = load %struct.dn_route*, %struct.dn_route** %2, align 8
  %4 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = call i32 @dst_release(%struct.TYPE_4__* %5)
  %7 = load %struct.dn_route*, %struct.dn_route** %2, align 8
  %8 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* @dst_rcu_free, align 4
  %12 = call i32 @call_rcu_bh(i32* %10, i32 %11)
  ret void
}

declare dso_local i32 @dst_release(%struct.TYPE_4__*) #1

declare dso_local i32 @call_rcu_bh(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_changeaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_changeaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32 }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @neigh_changeaddr(%struct.neigh_table* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.neigh_table*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %6 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %5, i32 0, i32 0
  %7 = call i32 @write_lock_bh(i32* %6)
  %8 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call i32 @neigh_flush_dev(%struct.neigh_table* %8, %struct.net_device* %9)
  %11 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %12 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %11, i32 0, i32 0
  %13 = call i32 @write_unlock_bh(i32* %12)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @neigh_flush_dev(%struct.neigh_table*, %struct.net_device*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

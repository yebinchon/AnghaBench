; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_unregister_mc_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_unregister_mc_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family = type { i32 }
%struct.genl_multicast_group = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @genl_unregister_mc_group(%struct.genl_family* %0, %struct.genl_multicast_group* %1) #0 {
  %3 = alloca %struct.genl_family*, align 8
  %4 = alloca %struct.genl_multicast_group*, align 8
  store %struct.genl_family* %0, %struct.genl_family** %3, align 8
  store %struct.genl_multicast_group* %1, %struct.genl_multicast_group** %4, align 8
  %5 = call i32 (...) @genl_lock()
  %6 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %7 = load %struct.genl_multicast_group*, %struct.genl_multicast_group** %4, align 8
  %8 = call i32 @__genl_unregister_mc_group(%struct.genl_family* %6, %struct.genl_multicast_group* %7)
  %9 = call i32 (...) @genl_unlock()
  ret void
}

declare dso_local i32 @genl_lock(...) #1

declare dso_local i32 @__genl_unregister_mc_group(%struct.genl_family*, %struct.genl_multicast_group*) #1

declare dso_local i32 @genl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

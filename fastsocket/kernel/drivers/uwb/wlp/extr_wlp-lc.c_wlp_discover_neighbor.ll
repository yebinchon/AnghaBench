; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wlp-lc.c_wlp_discover_neighbor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wlp-lc.c_wlp_discover_neighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { i32 }
%struct.wlp_neighbor_e = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp*, %struct.wlp_neighbor_e*)* @wlp_discover_neighbor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_discover_neighbor(%struct.wlp* %0, %struct.wlp_neighbor_e* %1) #0 {
  %3 = alloca %struct.wlp*, align 8
  %4 = alloca %struct.wlp_neighbor_e*, align 8
  store %struct.wlp* %0, %struct.wlp** %3, align 8
  store %struct.wlp_neighbor_e* %1, %struct.wlp_neighbor_e** %4, align 8
  %5 = load %struct.wlp*, %struct.wlp** %3, align 8
  %6 = load %struct.wlp_neighbor_e*, %struct.wlp_neighbor_e** %4, align 8
  %7 = call i32 @wlp_d1d2_exchange(%struct.wlp* %5, %struct.wlp_neighbor_e* %6, i32* null, i32* null)
  ret i32 %7
}

declare dso_local i32 @wlp_d1d2_exchange(%struct.wlp*, %struct.wlp_neighbor_e*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

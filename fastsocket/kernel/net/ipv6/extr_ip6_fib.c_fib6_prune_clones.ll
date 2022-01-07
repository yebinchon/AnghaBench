; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_prune_clones.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_prune_clones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib6_node = type { i32 }
%struct.rt6_info = type { i32 }

@fib6_prune_clone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.fib6_node*, %struct.rt6_info*)* @fib6_prune_clones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib6_prune_clones(%struct.net* %0, %struct.fib6_node* %1, %struct.rt6_info* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.fib6_node*, align 8
  %6 = alloca %struct.rt6_info*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.fib6_node* %1, %struct.fib6_node** %5, align 8
  store %struct.rt6_info* %2, %struct.rt6_info** %6, align 8
  %7 = load %struct.net*, %struct.net** %4, align 8
  %8 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %9 = load i32, i32* @fib6_prune_clone, align 4
  %10 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %11 = call i32 @fib6_clean_tree(%struct.net* %7, %struct.fib6_node* %8, i32 %9, i32 1, %struct.rt6_info* %10)
  ret void
}

declare dso_local i32 @fib6_clean_tree(%struct.net*, %struct.fib6_node*, i32, i32, %struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

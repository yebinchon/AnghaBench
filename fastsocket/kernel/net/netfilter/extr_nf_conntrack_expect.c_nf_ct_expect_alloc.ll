; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_expect_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_expect_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i32, i32, %struct.nf_conn* }
%struct.nf_conn = type { i32 }

@nf_ct_expect_cachep = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conntrack_expect*, align 8
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca %struct.nf_conntrack_expect*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %3, align 8
  %5 = load i32, i32* @nf_ct_expect_cachep, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.nf_conntrack_expect* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.nf_conntrack_expect* %7, %struct.nf_conntrack_expect** %4, align 8
  %8 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %9 = icmp ne %struct.nf_conntrack_expect* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.nf_conntrack_expect* null, %struct.nf_conntrack_expect** %2, align 8
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %13 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %14 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %13, i32 0, i32 2
  store %struct.nf_conn* %12, %struct.nf_conn** %14, align 8
  %15 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %16 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %15, i32 0, i32 1
  %17 = call i32 @atomic_set(i32* %16, i32 1)
  %18 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %19 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %18, i32 0, i32 0
  %20 = call i32 @INIT_RCU_HEAD(i32* %19)
  %21 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  store %struct.nf_conntrack_expect* %21, %struct.nf_conntrack_expect** %2, align 8
  br label %22

22:                                               ; preds = %11, %10
  %23 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  ret %struct.nf_conntrack_expect* %23
}

declare dso_local %struct.nf_conntrack_expect* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_RCU_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

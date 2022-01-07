; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_nf_conntrack_expect_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_nf_conntrack_expect_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@init_net = common dso_local global i32 0, align 4
@nf_ct_expect_cachep = common dso_local global i32 0, align 4
@nf_ct_expect_hsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_conntrack_expect_fini(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %3 = load %struct.net*, %struct.net** %2, align 8
  %4 = call i32 @exp_proc_remove(%struct.net* %3)
  %5 = load %struct.net*, %struct.net** %2, align 8
  %6 = call i64 @net_eq(%struct.net* %5, i32* @init_net)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call i32 (...) @rcu_barrier()
  %10 = load i32, i32* @nf_ct_expect_cachep, align 4
  %11 = call i32 @kmem_cache_destroy(i32 %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.net*, %struct.net** %2, align 8
  %14 = getelementptr inbounds %struct.net, %struct.net* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net*, %struct.net** %2, align 8
  %18 = getelementptr inbounds %struct.net, %struct.net* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @nf_ct_expect_hsize, align 4
  %22 = call i32 @nf_ct_free_hashtable(i32 %16, i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @exp_proc_remove(%struct.net*) #1

declare dso_local i64 @net_eq(%struct.net*, i32*) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @nf_ct_free_hashtable(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

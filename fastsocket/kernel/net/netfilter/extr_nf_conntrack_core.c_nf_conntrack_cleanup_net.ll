; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_cleanup_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_cleanup_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@kill_all = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @nf_conntrack_cleanup_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_conntrack_cleanup_net(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  br label %3

3:                                                ; preds = %14, %1
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = load i32, i32* @kill_all, align 4
  %6 = call i32 @nf_ct_iterate_cleanup(%struct.net* %4, i32 %5, i32* null)
  %7 = load %struct.net*, %struct.net** %2, align 8
  %8 = call i32 @nf_ct_release_dying_list(%struct.net* %7)
  %9 = load %struct.net*, %struct.net** %2, align 8
  %10 = getelementptr inbounds %struct.net, %struct.net* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 6
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 (...) @schedule()
  br label %3

16:                                               ; preds = %3
  %17 = load %struct.net*, %struct.net** %2, align 8
  %18 = getelementptr inbounds %struct.net, %struct.net* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.net*, %struct.net** %2, align 8
  %22 = getelementptr inbounds %struct.net, %struct.net* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net*, %struct.net** %2, align 8
  %26 = getelementptr inbounds %struct.net, %struct.net* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nf_ct_free_hashtable(i32 %20, i32 %24, i32 %28)
  %30 = load %struct.net*, %struct.net** %2, align 8
  %31 = call i32 @nf_conntrack_ecache_fini(%struct.net* %30)
  %32 = load %struct.net*, %struct.net** %2, align 8
  %33 = call i32 @nf_conntrack_acct_fini(%struct.net* %32)
  %34 = load %struct.net*, %struct.net** %2, align 8
  %35 = call i32 @nf_conntrack_expect_fini(%struct.net* %34)
  %36 = load %struct.net*, %struct.net** %2, align 8
  %37 = getelementptr inbounds %struct.net, %struct.net* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kmem_cache_destroy(i32 %39)
  %41 = load %struct.net*, %struct.net** %2, align 8
  %42 = getelementptr inbounds %struct.net, %struct.net* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kfree(i32 %44)
  %46 = load %struct.net*, %struct.net** %2, align 8
  %47 = getelementptr inbounds %struct.net, %struct.net* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @free_percpu(i32 %49)
  ret void
}

declare dso_local i32 @nf_ct_iterate_cleanup(%struct.net*, i32, i32*) #1

declare dso_local i32 @nf_ct_release_dying_list(%struct.net*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @nf_ct_free_hashtable(i32, i32, i32) #1

declare dso_local i32 @nf_conntrack_ecache_fini(%struct.net*) #1

declare dso_local i32 @nf_conntrack_acct_fini(%struct.net*) #1

declare dso_local i32 @nf_conntrack_expect_fini(%struct.net*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_percpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

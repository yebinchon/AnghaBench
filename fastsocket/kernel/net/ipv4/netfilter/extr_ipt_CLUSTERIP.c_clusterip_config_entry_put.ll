; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_entry_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_entry_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clusterip_config = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@clusterip_lock = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clusterip_config*)* @clusterip_config_entry_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clusterip_config_entry_put(%struct.clusterip_config* %0) #0 {
  %2 = alloca %struct.clusterip_config*, align 8
  store %struct.clusterip_config* %0, %struct.clusterip_config** %2, align 8
  %3 = call i32 @write_lock_bh(i32* @clusterip_lock)
  %4 = load %struct.clusterip_config*, %struct.clusterip_config** %2, align 8
  %5 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %4, i32 0, i32 4
  %6 = call i64 @atomic_dec_and_test(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.clusterip_config*, %struct.clusterip_config** %2, align 8
  %10 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %9, i32 0, i32 3
  %11 = call i32 @list_del(i32* %10)
  %12 = call i32 @write_unlock_bh(i32* @clusterip_lock)
  %13 = load %struct.clusterip_config*, %struct.clusterip_config** %2, align 8
  %14 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.clusterip_config*, %struct.clusterip_config** %2, align 8
  %17 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = call i32 @dev_mc_delete(i32 %15, i32 %18, i32 %19, i32 0)
  %21 = load %struct.clusterip_config*, %struct.clusterip_config** %2, align 8
  %22 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_put(i32 %23)
  br label %27

25:                                               ; preds = %1
  %26 = call i32 @write_unlock_bh(i32* @clusterip_lock)
  br label %27

27:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @dev_mc_delete(i32, i32, i32, i32) #1

declare dso_local i32 @dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_find_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_find_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clusterip_config = type { i32, i32 }

@clusterip_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clusterip_config* (i32, i32)* @clusterip_config_find_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clusterip_config* @clusterip_config_find_get(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.clusterip_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.clusterip_config*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i32 @read_lock_bh(i32* @clusterip_lock)
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.clusterip_config* @__clusterip_config_find(i32 %8)
  store %struct.clusterip_config* %9, %struct.clusterip_config** %6, align 8
  %10 = load %struct.clusterip_config*, %struct.clusterip_config** %6, align 8
  %11 = icmp ne %struct.clusterip_config* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @read_unlock_bh(i32* @clusterip_lock)
  store %struct.clusterip_config* null, %struct.clusterip_config** %3, align 8
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.clusterip_config*, %struct.clusterip_config** %6, align 8
  %16 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %15, i32 0, i32 1
  %17 = call i32 @atomic_inc(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.clusterip_config*, %struct.clusterip_config** %6, align 8
  %22 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %21, i32 0, i32 0
  %23 = call i32 @atomic_inc(i32* %22)
  br label %24

24:                                               ; preds = %20, %14
  %25 = call i32 @read_unlock_bh(i32* @clusterip_lock)
  %26 = load %struct.clusterip_config*, %struct.clusterip_config** %6, align 8
  store %struct.clusterip_config* %26, %struct.clusterip_config** %3, align 8
  br label %27

27:                                               ; preds = %24, %12
  %28 = load %struct.clusterip_config*, %struct.clusterip_config** %3, align 8
  ret %struct.clusterip_config* %28
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.clusterip_config* @__clusterip_config_find(i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

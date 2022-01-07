; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clusterip_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.ipt_clusterip_tgt_info = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@clusterip_lock = common dso_local global i32 0, align 4
@clusterip_configs = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@clusterip_proc_fops = common dso_local global i32 0, align 4
@clusterip_procdir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clusterip_config* (%struct.ipt_clusterip_tgt_info*, i32, %struct.net_device*)* @clusterip_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clusterip_config* @clusterip_config_init(%struct.ipt_clusterip_tgt_info* %0, i32 %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.clusterip_config*, align 8
  %5 = alloca %struct.ipt_clusterip_tgt_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.clusterip_config*, align 8
  store %struct.ipt_clusterip_tgt_info* %0, %struct.ipt_clusterip_tgt_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.clusterip_config* @kzalloc(i32 48, i32 %9)
  store %struct.clusterip_config* %10, %struct.clusterip_config** %8, align 8
  %11 = load %struct.clusterip_config*, %struct.clusterip_config** %8, align 8
  %12 = icmp ne %struct.clusterip_config* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.clusterip_config* null, %struct.clusterip_config** %4, align 8
  br label %57

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = load %struct.clusterip_config*, %struct.clusterip_config** %8, align 8
  %17 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %16, i32 0, i32 9
  store %struct.net_device* %15, %struct.net_device** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.clusterip_config*, %struct.clusterip_config** %8, align 8
  %20 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 8
  %21 = load %struct.clusterip_config*, %struct.clusterip_config** %8, align 8
  %22 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %21, i32 0, i32 7
  %23 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %5, align 8
  %24 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %23, i32 0, i32 3
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = call i32 @memcpy(i32* %22, i32* %24, i32 %25)
  %27 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %5, align 8
  %28 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.clusterip_config*, %struct.clusterip_config** %8, align 8
  %31 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.clusterip_config*, %struct.clusterip_config** %8, align 8
  %33 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %5, align 8
  %34 = call i32 @clusterip_config_init_nodelist(%struct.clusterip_config* %32, %struct.ipt_clusterip_tgt_info* %33)
  %35 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %5, align 8
  %36 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.clusterip_config*, %struct.clusterip_config** %8, align 8
  %39 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %5, align 8
  %41 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.clusterip_config*, %struct.clusterip_config** %8, align 8
  %44 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.clusterip_config*, %struct.clusterip_config** %8, align 8
  %46 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %45, i32 0, i32 3
  %47 = call i32 @atomic_set(i32* %46, i32 1)
  %48 = load %struct.clusterip_config*, %struct.clusterip_config** %8, align 8
  %49 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %48, i32 0, i32 2
  %50 = call i32 @atomic_set(i32* %49, i32 1)
  %51 = call i32 @write_lock_bh(i32* @clusterip_lock)
  %52 = load %struct.clusterip_config*, %struct.clusterip_config** %8, align 8
  %53 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %52, i32 0, i32 0
  %54 = call i32 @list_add(i32* %53, i32* @clusterip_configs)
  %55 = call i32 @write_unlock_bh(i32* @clusterip_lock)
  %56 = load %struct.clusterip_config*, %struct.clusterip_config** %8, align 8
  store %struct.clusterip_config* %56, %struct.clusterip_config** %4, align 8
  br label %57

57:                                               ; preds = %14, %13
  %58 = load %struct.clusterip_config*, %struct.clusterip_config** %4, align 8
  ret %struct.clusterip_config* %58
}

declare dso_local %struct.clusterip_config* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @clusterip_config_init_nodelist(%struct.clusterip_config*, %struct.ipt_clusterip_tgt_info*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

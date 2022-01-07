; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_init_nodelist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_init_nodelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clusterip_config = type { i32 }
%struct.ipt_clusterip_tgt_info = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clusterip_config*, %struct.ipt_clusterip_tgt_info*)* @clusterip_config_init_nodelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clusterip_config_init_nodelist(%struct.clusterip_config* %0, %struct.ipt_clusterip_tgt_info* %1) #0 {
  %3 = alloca %struct.clusterip_config*, align 8
  %4 = alloca %struct.ipt_clusterip_tgt_info*, align 8
  %5 = alloca i32, align 4
  store %struct.clusterip_config* %0, %struct.clusterip_config** %3, align 8
  store %struct.ipt_clusterip_tgt_info* %1, %struct.ipt_clusterip_tgt_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %24, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %4, align 8
  %9 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %6
  %13 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %4, align 8
  %14 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, 1
  %21 = load %struct.clusterip_config*, %struct.clusterip_config** %3, align 8
  %22 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %21, i32 0, i32 0
  %23 = call i32 @set_bit(i64 %20, i32* %22)
  br label %24

24:                                               ; preds = %12
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %6

27:                                               ; preds = %6
  ret void
}

declare dso_local i32 @set_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

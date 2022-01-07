; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_new_vport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_new_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32, i32 }
%struct.vport_parms = type { %struct.datapath* }
%struct.datapath = type { i32 }
%struct.hlist_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vport* (%struct.vport_parms*)* @new_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vport* @new_vport(%struct.vport_parms* %0) #0 {
  %2 = alloca %struct.vport_parms*, align 8
  %3 = alloca %struct.vport*, align 8
  %4 = alloca %struct.datapath*, align 8
  %5 = alloca %struct.hlist_head*, align 8
  store %struct.vport_parms* %0, %struct.vport_parms** %2, align 8
  %6 = load %struct.vport_parms*, %struct.vport_parms** %2, align 8
  %7 = call %struct.vport* @ovs_vport_add(%struct.vport_parms* %6)
  store %struct.vport* %7, %struct.vport** %3, align 8
  %8 = load %struct.vport*, %struct.vport** %3, align 8
  %9 = call i32 @IS_ERR(%struct.vport* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = load %struct.vport_parms*, %struct.vport_parms** %2, align 8
  %13 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %12, i32 0, i32 0
  %14 = load %struct.datapath*, %struct.datapath** %13, align 8
  store %struct.datapath* %14, %struct.datapath** %4, align 8
  %15 = load %struct.datapath*, %struct.datapath** %4, align 8
  %16 = load %struct.vport*, %struct.vport** %3, align 8
  %17 = getelementptr inbounds %struct.vport, %struct.vport* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.hlist_head* @vport_hash_bucket(%struct.datapath* %15, i32 %18)
  store %struct.hlist_head* %19, %struct.hlist_head** %5, align 8
  %20 = load %struct.vport*, %struct.vport** %3, align 8
  %21 = getelementptr inbounds %struct.vport, %struct.vport* %20, i32 0, i32 0
  %22 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %23 = call i32 @hlist_add_head_rcu(i32* %21, %struct.hlist_head* %22)
  br label %24

24:                                               ; preds = %11, %1
  %25 = load %struct.vport*, %struct.vport** %3, align 8
  ret %struct.vport* %25
}

declare dso_local %struct.vport* @ovs_vport_add(%struct.vport_parms*) #1

declare dso_local i32 @IS_ERR(%struct.vport*) #1

declare dso_local %struct.hlist_head* @vport_hash_bucket(%struct.datapath*, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

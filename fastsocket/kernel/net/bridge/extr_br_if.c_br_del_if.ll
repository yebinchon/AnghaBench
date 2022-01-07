; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_br_del_if.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_br_del_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_device = type { %struct.net_bridge_port* }
%struct.net_bridge_port = type { %struct.net_bridge* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_del_if(%struct.net_bridge* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  store %struct.net_bridge_port* %9, %struct.net_bridge_port** %6, align 8
  %10 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %11 = icmp ne %struct.net_bridge_port* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %14 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %13, i32 0, i32 0
  %15 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %16 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %17 = icmp ne %struct.net_bridge* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %12
  %22 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %23 = call i32 @del_nbp(%struct.net_bridge_port* %22)
  %24 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %25 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %28 = call i32 @br_stp_recalculate_bridge_id(%struct.net_bridge* %27)
  %29 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %30 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %33 = call i32 @br_features_recompute(%struct.net_bridge* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %21, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @del_nbp(%struct.net_bridge_port*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @br_stp_recalculate_bridge_id(%struct.net_bridge*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @br_features_recompute(%struct.net_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport.c_ovs_vport_set_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_vport.c_ovs_vport_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.nlattr = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_vport_set_options(%struct.vport* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vport*, align 8
  %5 = alloca %struct.nlattr*, align 8
  store %struct.vport* %0, %struct.vport** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %6 = load %struct.vport*, %struct.vport** %4, align 8
  %7 = getelementptr inbounds %struct.vport, %struct.vport* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.vport*, %struct.nlattr*)**
  %11 = load i32 (%struct.vport*, %struct.nlattr*)*, i32 (%struct.vport*, %struct.nlattr*)** %10, align 8
  %12 = icmp ne i32 (%struct.vport*, %struct.nlattr*)* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.vport*, %struct.vport** %4, align 8
  %18 = getelementptr inbounds %struct.vport, %struct.vport* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.vport*, %struct.nlattr*)**
  %22 = load i32 (%struct.vport*, %struct.nlattr*)*, i32 (%struct.vport*, %struct.nlattr*)** %21, align 8
  %23 = load %struct.vport*, %struct.vport** %4, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %25 = call i32 %22(%struct.vport* %23, %struct.nlattr* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %16, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_dev_mc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_dev_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.packet_mclist = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.packet_mclist*, i32)* @packet_dev_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_dev_mc(%struct.net_device* %0, %struct.packet_mclist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.packet_mclist*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.packet_mclist* %1, %struct.packet_mclist** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %9 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %55 [
    i32 130, label %11
    i32 129, label %32
    i32 131, label %36
    i32 128, label %40
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %17 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %20 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_mc_add(%struct.net_device* %15, i32 %18, i32 %21, i32 0)
  store i32 %22, i32* %4, align 4
  br label %57

23:                                               ; preds = %11
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %26 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %29 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_mc_delete(%struct.net_device* %24, i32 %27, i32 %30, i32 0)
  store i32 %31, i32* %4, align 4
  br label %57

32:                                               ; preds = %3
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dev_set_promiscuity(%struct.net_device* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %57

36:                                               ; preds = %3
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dev_set_allmulti(%struct.net_device* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %57

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %46 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_unicast_add(%struct.net_device* %44, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %57

49:                                               ; preds = %40
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %52 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_unicast_delete(%struct.net_device* %50, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %3
  br label %56

56:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %49, %43, %36, %32, %23, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @dev_mc_add(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @dev_mc_delete(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @dev_unicast_add(%struct.net_device*, i32) #1

declare dso_local i32 @dev_unicast_delete(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

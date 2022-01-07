; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp.c_br_transmit_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp.c_br_transmit_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, i32, i64, %struct.TYPE_2__, i32, %struct.net_bridge* }
%struct.TYPE_2__ = type { i64 }
%struct.net_bridge = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.br_config_bpdu = type { i64, i64, i32, i32, i32, i32, i32, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@MESSAGE_AGE_INCR = common dso_local global i64 0, align 8
@BR_HOLD_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_transmit_config(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  %3 = alloca %struct.br_config_bpdu, align 8
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_bridge_port*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %6 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %7 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %6, i32 0, i32 1
  %8 = call i64 @timer_pending(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %12 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %98

13:                                               ; preds = %1
  %14 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %15 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %14, i32 0, i32 5
  %16 = load %struct.net_bridge*, %struct.net_bridge** %15, align 8
  store %struct.net_bridge* %16, %struct.net_bridge** %4, align 8
  %17 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %18 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 9
  store i32 %19, i32* %20, align 8
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %22 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 8
  store i64 %23, i64* %24, align 8
  %25 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %26 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 7
  store i32 %27, i32* %28, align 4
  %29 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %30 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 6
  store i32 %31, i32* %32, align 8
  %33 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %34 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 5
  store i32 %35, i32* %36, align 4
  %37 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %38 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %42 = call i64 @br_is_root_bridge(%struct.net_bridge* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %13
  %45 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %65

46:                                               ; preds = %13
  %47 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %48 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %49 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.net_bridge_port* @br_get_port(%struct.net_bridge* %47, i32 %50)
  store %struct.net_bridge_port* %51, %struct.net_bridge_port** %5, align 8
  %52 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %53 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %56 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @jiffies, align 8
  %60 = sub nsw i64 %58, %59
  %61 = sub nsw i64 %54, %60
  %62 = load i64, i64* @MESSAGE_AGE_INCR, align 8
  %63 = add nsw i64 %61, %62
  %64 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %46, %44
  %66 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %67 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 1
  store i64 %68, i64* %69, align 8
  %70 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %71 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 3
  store i32 %72, i32* %73, align 4
  %74 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %75 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %3, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %81 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %65
  %85 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %86 = call i32 @br_send_config_bpdu(%struct.net_bridge_port* %85, %struct.br_config_bpdu* %3)
  %87 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %88 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %90 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %92 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %91, i32 0, i32 1
  %93 = load i64, i64* @jiffies, align 8
  %94 = load i64, i64* @BR_HOLD_TIME, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @round_jiffies(i64 %95)
  %97 = call i32 @mod_timer(i32* %92, i32 %96)
  br label %98

98:                                               ; preds = %10, %84, %65
  ret void
}

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i64 @br_is_root_bridge(%struct.net_bridge*) #1

declare dso_local %struct.net_bridge_port* @br_get_port(%struct.net_bridge*, i32) #1

declare dso_local i32 @br_send_config_bpdu(%struct.net_bridge_port*, %struct.br_config_bpdu*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

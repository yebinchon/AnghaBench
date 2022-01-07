; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp.c_br_topology_change_detection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp.c_br_topology_change_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i32, i32, i64, i32, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BR_KERNEL_STP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s: topology change detected, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"propagating\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"sending tcn bpdu\00", align 1
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_topology_change_detection(%struct.net_bridge* %0) #0 {
  %2 = alloca %struct.net_bridge*, align 8
  %3 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %2, align 8
  %4 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %5 = call i32 @br_is_root_bridge(%struct.net_bridge* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %7 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BR_KERNEL_STP, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %60

12:                                               ; preds = %1
  %13 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %14 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %13, i32 0, i32 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %21)
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %12
  %26 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %27 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %29 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %28, i32 0, i32 7
  %30 = load i64, i64* @jiffies, align 8
  %31 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %32 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %36 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = call i32 @mod_timer(i32* %29, i64 %38)
  br label %57

40:                                               ; preds = %12
  %41 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %42 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  %46 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %47 = call i32 @br_transmit_tcn(%struct.net_bridge* %46)
  %48 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %49 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %48, i32 0, i32 4
  %50 = load i64, i64* @jiffies, align 8
  %51 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %52 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = call i32 @mod_timer(i32* %49, i64 %54)
  br label %56

56:                                               ; preds = %45, %40
  br label %57

57:                                               ; preds = %56, %25
  %58 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %59 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %58, i32 0, i32 2
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %11
  ret void
}

declare dso_local i32 @br_is_root_bridge(%struct.net_bridge*) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @br_transmit_tcn(%struct.net_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

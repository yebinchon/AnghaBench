; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_port_cost.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_port_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.ethtool_cmd*)* }
%struct.ethtool_cmd = type { i32, i32 }

@ETHTOOL_GSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lec\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"plip\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @port_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_cost(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.net_device*, %struct.ethtool_cmd*)*, i32 (%struct.net_device*, %struct.ethtool_cmd*)** %13, align 8
  %15 = icmp ne i32 (%struct.net_device*, %struct.ethtool_cmd*)* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 1
  %19 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.net_device*, %struct.ethtool_cmd*)*, i32 (%struct.net_device*, %struct.ethtool_cmd*)** %23, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 %24(%struct.net_device* %25, %struct.ethtool_cmd* %4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %35 [
    i32 128, label %31
    i32 129, label %32
    i32 130, label %33
    i32 131, label %34
  ]

31:                                               ; preds = %28
  store i32 2, i32* %2, align 4
  br label %52

32:                                               ; preds = %28
  store i32 4, i32* %2, align 4
  br label %52

33:                                               ; preds = %28
  store i32 19, i32* %2, align 4
  br label %52

34:                                               ; preds = %28
  store i32 100, i32* %2, align 4
  br label %52

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %16
  br label %37

37:                                               ; preds = %36, %9, %1
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strncmp(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 7, i32* %2, align 4
  br label %52

44:                                               ; preds = %37
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @strncmp(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i32 2500, i32* %2, align 4
  br label %52

51:                                               ; preds = %44
  store i32 100, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %50, %43, %34, %33, %32, %31
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

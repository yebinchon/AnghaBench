; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_getpfcstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_getpfcstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)* }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTM_GETDCB = common dso_local global i32 0, align 4
@DCB_CMD_PFC_GSTATE = common dso_local global i32 0, align 4
@DCB_ATTR_PFC_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, i32, i32, i32)* @dcbnl_getpfcstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_getpfcstate(%struct.net_device* %0, %struct.nlattr** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %18, align 8
  %20 = icmp ne i32 (%struct.net_device*)* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %39

23:                                               ; preds = %5
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = call i32 %28(%struct.net_device* %29)
  %31 = load i32, i32* @RTM_GETDCB, align 4
  %32 = load i32, i32* @DCB_CMD_PFC_GSTATE, align 4
  %33 = load i32, i32* @DCB_ATTR_PFC_STATE, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @dcbnl_reply(i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %23, %21
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @dcbnl_reply(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

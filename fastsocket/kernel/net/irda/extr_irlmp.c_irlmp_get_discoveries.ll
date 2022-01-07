; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlmp.c_irlmp_get_discoveries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlmp.c_irlmp_get_discoveries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.irda_device_info = type { i32 }

@sysctl_discovery = common dso_local global i32 0, align 4
@DISCOVERY_DEFAULT_SLOTS = common dso_local global i32 0, align 4
@sysctl_discovery_slots = common dso_local global i32 0, align 4
@irlmp = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.irda_device_info* @irlmp_get_discoveries(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @sysctl_discovery, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @DISCOVERY_DEFAULT_SLOTS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @sysctl_discovery_slots, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @irlmp_do_discovery(i32 %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irlmp, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @TRUE, align 4
  %25 = call %struct.irda_device_info* @irlmp_copy_discoveries(i32 %21, i32* %22, i32 %23, i32 %24)
  ret %struct.irda_device_info* %25
}

declare dso_local i32 @irlmp_do_discovery(i32) #1

declare dso_local %struct.irda_device_info* @irlmp_copy_discoveries(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

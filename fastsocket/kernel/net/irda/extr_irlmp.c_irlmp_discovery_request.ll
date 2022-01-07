; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlmp.c_irlmp_discovery_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlmp.c_irlmp_discovery_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@irlmp = common dso_local global %struct.TYPE_2__* null, align 8
@DISCOVERY_LOG = common dso_local global i32 0, align 4
@sysctl_discovery = common dso_local global i32 0, align 4
@DISCOVERY_DEFAULT_SLOTS = common dso_local global i32 0, align 4
@sysctl_discovery_slots = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irlmp_discovery_request(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irlmp, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @DISCOVERY_LOG, align 4
  %7 = call i32 @irlmp_discovery_confirm(i32 %5, i32 %6)
  %8 = load i32, i32* @sysctl_discovery, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @DISCOVERY_DEFAULT_SLOTS, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @sysctl_discovery_slots, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @irlmp_do_discovery(i32 %17)
  br label %19

19:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @irlmp_discovery_confirm(i32, i32) #1

declare dso_local i32 @irlmp_do_discovery(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_bind_default.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_bind_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@dev_base_lock = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_dev_bind_default(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call %struct.net_device* (...) @dn_dev_get_default()
  store %struct.net_device* %5, %struct.net_device** %3, align 8
  br label %6

6:                                                ; preds = %26, %1
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  %10 = call i32 @read_lock(i32* @dev_base_lock)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @dn_dev_get_first(%struct.net_device* %11, i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = call i32 @read_unlock(i32* @dev_base_lock)
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @dev_put(%struct.net_device* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load %struct.net_device*, %struct.net_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_net, i32 0, i32 0), align 8
  %22 = icmp eq %struct.net_device* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %9
  %24 = load i32, i32* %4, align 4
  ret i32 %24

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %6
  %27 = load %struct.net_device*, %struct.net_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_net, i32 0, i32 0), align 8
  store %struct.net_device* %27, %struct.net_device** %3, align 8
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @dev_hold(%struct.net_device* %28)
  br label %6
}

declare dso_local %struct.net_device* @dn_dev_get_default(...) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @dn_dev_get_first(%struct.net_device*, i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

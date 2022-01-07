; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_device_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i64 }
%struct.x25_neigh = type { i32 }

@init_net = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@ARPHRD_X25 = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @x25_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.x25_neigh*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %8, align 8
  %13 = call i32 @dev_net(%struct.net_device* %12)
  %14 = call i32 @net_eq(i32 %13, i32* @init_net)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %17, i32* %4, align 4
  br label %50

18:                                               ; preds = %3
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ARPHRD_X25, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  switch i64 %25, label %47 [
    i64 128, label %26
    i64 129, label %29
    i64 130, label %40
  ]

26:                                               ; preds = %24
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = call i32 @x25_link_device_up(%struct.net_device* %27)
  br label %47

29:                                               ; preds = %24
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = call %struct.x25_neigh* @x25_get_neigh(%struct.net_device* %30)
  store %struct.x25_neigh* %31, %struct.x25_neigh** %9, align 8
  %32 = load %struct.x25_neigh*, %struct.x25_neigh** %9, align 8
  %33 = icmp ne %struct.x25_neigh* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.x25_neigh*, %struct.x25_neigh** %9, align 8
  %36 = call i32 @x25_terminate_link(%struct.x25_neigh* %35)
  %37 = load %struct.x25_neigh*, %struct.x25_neigh** %9, align 8
  %38 = call i32 @x25_neigh_put(%struct.x25_neigh* %37)
  br label %39

39:                                               ; preds = %34, %29
  br label %47

40:                                               ; preds = %24
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = call i32 @x25_kill_by_device(%struct.net_device* %41)
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = call i32 @x25_route_device_down(%struct.net_device* %43)
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = call i32 @x25_link_device_down(%struct.net_device* %45)
  br label %47

47:                                               ; preds = %24, %40, %39, %26
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %16
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @x25_link_device_up(%struct.net_device*) #1

declare dso_local %struct.x25_neigh* @x25_get_neigh(%struct.net_device*) #1

declare dso_local i32 @x25_terminate_link(%struct.x25_neigh*) #1

declare dso_local i32 @x25_neigh_put(%struct.x25_neigh*) #1

declare dso_local i32 @x25_kill_by_device(%struct.net_device*) #1

declare dso_local i32 @x25_route_device_down(%struct.net_device*) #1

declare dso_local i32 @x25_link_device_down(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

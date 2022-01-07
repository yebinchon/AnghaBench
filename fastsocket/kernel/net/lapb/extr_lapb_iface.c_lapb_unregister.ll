; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_iface.c_lapb_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_iface.c_lapb_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lapb_cb = type { i32 }

@LAPB_BADTOKEN = common dso_local global i32 0, align 4
@lapb_list_lock = common dso_local global i32 0, align 4
@LAPB_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lapb_unregister(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lapb_cb*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load i32, i32* @LAPB_BADTOKEN, align 4
  store i32 %5, i32* %4, align 4
  %6 = call i32 @write_lock_bh(i32* @lapb_list_lock)
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.lapb_cb* @__lapb_devtostruct(%struct.net_device* %7)
  store %struct.lapb_cb* %8, %struct.lapb_cb** %3, align 8
  %9 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %10 = icmp ne %struct.lapb_cb* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %14 = call i32 @lapb_stop_t1timer(%struct.lapb_cb* %13)
  %15 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %16 = call i32 @lapb_stop_t2timer(%struct.lapb_cb* %15)
  %17 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %18 = call i32 @lapb_clear_queues(%struct.lapb_cb* %17)
  %19 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %20 = call i32 @__lapb_remove_cb(%struct.lapb_cb* %19)
  %21 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %22 = call i32 @lapb_put(%struct.lapb_cb* %21)
  %23 = load i32, i32* @LAPB_OK, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %12, %11
  %25 = call i32 @write_unlock_bh(i32* @lapb_list_lock)
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.lapb_cb* @__lapb_devtostruct(%struct.net_device*) #1

declare dso_local i32 @lapb_stop_t1timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_stop_t2timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_clear_queues(%struct.lapb_cb*) #1

declare dso_local i32 @__lapb_remove_cb(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_put(%struct.lapb_cb*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

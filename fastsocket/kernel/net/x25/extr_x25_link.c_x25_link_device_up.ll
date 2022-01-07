; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_link.c_x25_link_device_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_link.c_x25_link_device_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.x25_neigh = type { i32, i32, i32, i32, i64, i32, %struct.net_device*, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@x25_t20timer_expiry = common dso_local global i32 0, align 4
@X25_LINK_STATE_0 = common dso_local global i32 0, align 4
@X25_MASK_REVERSE = common dso_local global i32 0, align 4
@X25_MASK_THROUGHPUT = common dso_local global i32 0, align 4
@X25_MASK_PACKET_SIZE = common dso_local global i32 0, align 4
@X25_MASK_WINDOW_SIZE = common dso_local global i32 0, align 4
@sysctl_x25_restart_request_timeout = common dso_local global i32 0, align 4
@x25_neigh_list_lock = common dso_local global i32 0, align 4
@x25_neigh_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x25_link_device_up(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.x25_neigh*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call %struct.x25_neigh* @kmalloc(i32 48, i32 %4)
  store %struct.x25_neigh* %5, %struct.x25_neigh** %3, align 8
  %6 = load %struct.x25_neigh*, %struct.x25_neigh** %3, align 8
  %7 = icmp ne %struct.x25_neigh* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %49

9:                                                ; preds = %1
  %10 = load %struct.x25_neigh*, %struct.x25_neigh** %3, align 8
  %11 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %10, i32 0, i32 8
  %12 = call i32 @skb_queue_head_init(i32* %11)
  %13 = load %struct.x25_neigh*, %struct.x25_neigh** %3, align 8
  %14 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %13, i32 0, i32 7
  %15 = load i32, i32* @x25_t20timer_expiry, align 4
  %16 = load %struct.x25_neigh*, %struct.x25_neigh** %3, align 8
  %17 = ptrtoint %struct.x25_neigh* %16 to i64
  %18 = call i32 @setup_timer(i32* %14, i32 %15, i64 %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @dev_hold(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load %struct.x25_neigh*, %struct.x25_neigh** %3, align 8
  %23 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %22, i32 0, i32 6
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load i32, i32* @X25_LINK_STATE_0, align 4
  %25 = load %struct.x25_neigh*, %struct.x25_neigh** %3, align 8
  %26 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.x25_neigh*, %struct.x25_neigh** %3, align 8
  %28 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @X25_MASK_REVERSE, align 4
  %30 = load i32, i32* @X25_MASK_THROUGHPUT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @X25_MASK_PACKET_SIZE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @X25_MASK_WINDOW_SIZE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.x25_neigh*, %struct.x25_neigh** %3, align 8
  %37 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @sysctl_x25_restart_request_timeout, align 4
  %39 = load %struct.x25_neigh*, %struct.x25_neigh** %3, align 8
  %40 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.x25_neigh*, %struct.x25_neigh** %3, align 8
  %42 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %41, i32 0, i32 2
  %43 = call i32 @atomic_set(i32* %42, i32 1)
  %44 = call i32 @write_lock_bh(i32* @x25_neigh_list_lock)
  %45 = load %struct.x25_neigh*, %struct.x25_neigh** %3, align 8
  %46 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %45, i32 0, i32 1
  %47 = call i32 @list_add(i32* %46, i32* @x25_neigh_list)
  %48 = call i32 @write_unlock_bh(i32* @x25_neigh_list_lock)
  br label %49

49:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.x25_neigh* @kmalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

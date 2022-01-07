; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_dec_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_dec_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { i32, i32, i32, %struct.ip_mc_list* }
%struct.ip_mc_list = type { i64, i64, %struct.ip_mc_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_mc_dec_group(%struct.in_device* %0, i64 %1) #0 {
  %3 = alloca %struct.in_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ip_mc_list*, align 8
  %6 = alloca %struct.ip_mc_list**, align 8
  store %struct.in_device* %0, %struct.in_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 (...) @ASSERT_RTNL()
  %8 = load %struct.in_device*, %struct.in_device** %3, align 8
  %9 = getelementptr inbounds %struct.in_device, %struct.in_device* %8, i32 0, i32 3
  store %struct.ip_mc_list** %9, %struct.ip_mc_list*** %6, align 8
  br label %10

10:                                               ; preds = %57, %2
  %11 = load %struct.ip_mc_list**, %struct.ip_mc_list*** %6, align 8
  %12 = load %struct.ip_mc_list*, %struct.ip_mc_list** %11, align 8
  store %struct.ip_mc_list* %12, %struct.ip_mc_list** %5, align 8
  %13 = icmp ne %struct.ip_mc_list* %12, null
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %16 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  %21 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %22 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load %struct.in_device*, %struct.in_device** %3, align 8
  %28 = getelementptr inbounds %struct.in_device, %struct.in_device* %27, i32 0, i32 1
  %29 = call i32 @write_lock_bh(i32* %28)
  %30 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %31 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %30, i32 0, i32 2
  %32 = load %struct.ip_mc_list*, %struct.ip_mc_list** %31, align 8
  %33 = load %struct.ip_mc_list**, %struct.ip_mc_list*** %6, align 8
  store %struct.ip_mc_list* %32, %struct.ip_mc_list** %33, align 8
  %34 = load %struct.in_device*, %struct.in_device** %3, align 8
  %35 = getelementptr inbounds %struct.in_device, %struct.in_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.in_device*, %struct.in_device** %3, align 8
  %39 = getelementptr inbounds %struct.in_device, %struct.in_device* %38, i32 0, i32 1
  %40 = call i32 @write_unlock_bh(i32* %39)
  %41 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %42 = call i32 @igmp_group_dropped(%struct.ip_mc_list* %41)
  %43 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %44 = call i32 @ip_mc_clear_src(%struct.ip_mc_list* %43)
  %45 = load %struct.in_device*, %struct.in_device** %3, align 8
  %46 = getelementptr inbounds %struct.in_device, %struct.in_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %26
  %50 = load %struct.in_device*, %struct.in_device** %3, align 8
  %51 = call i32 @ip_rt_multicast_event(%struct.in_device* %50)
  br label %52

52:                                               ; preds = %49, %26
  %53 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %54 = call i32 @ip_ma_put(%struct.ip_mc_list* %53)
  br label %60

55:                                               ; preds = %20
  br label %60

56:                                               ; preds = %14
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %59 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %58, i32 0, i32 2
  store %struct.ip_mc_list** %59, %struct.ip_mc_list*** %6, align 8
  br label %10

60:                                               ; preds = %52, %55, %10
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @igmp_group_dropped(%struct.ip_mc_list*) #1

declare dso_local i32 @ip_mc_clear_src(%struct.ip_mc_list*) #1

declare dso_local i32 @ip_rt_multicast_event(%struct.in_device*) #1

declare dso_local i32 @ip_ma_put(%struct.ip_mc_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

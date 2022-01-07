; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_rt_update_pmtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_rt_update_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32* }

@RTAX_MTU = common dso_local global i32 0, align 4
@ip_rt_min_pmtu = common dso_local global i32 0, align 4
@RTAX_LOCK = common dso_local global i32 0, align 4
@ip_rt_mtu_expires = common dso_local global i32 0, align 4
@NETEVENT_PMTU_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, i32)* @ip_rt_update_pmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_rt_update_pmtu(%struct.dst_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.dst_entry* %0, %struct.dst_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %6 = call i32 @dst_mtu(%struct.dst_entry* %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %49

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 68
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  %13 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %14 = load i32, i32* @RTAX_MTU, align 4
  %15 = call i32 @dst_metric_locked(%struct.dst_entry* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ip_rt_min_pmtu, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* @ip_rt_min_pmtu, align 4
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @RTAX_MTU, align 4
  %24 = shl i32 1, %23
  %25 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %26 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @RTAX_LOCK, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %24
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %21, %17
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %37 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @RTAX_MTU, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 %35, i32* %42, align 4
  %43 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %44 = load i32, i32* @ip_rt_mtu_expires, align 4
  %45 = call i32 @dst_set_expires(%struct.dst_entry* %43, i32 %44)
  %46 = load i32, i32* @NETEVENT_PMTU_UPDATE, align 4
  %47 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %48 = call i32 @call_netevent_notifiers(i32 %46, %struct.dst_entry* %47)
  br label %49

49:                                               ; preds = %34, %12, %9, %2
  ret void
}

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @dst_metric_locked(%struct.dst_entry*, i32) #1

declare dso_local i32 @dst_set_expires(%struct.dst_entry*, i32) #1

declare dso_local i32 @call_netevent_notifiers(i32, %struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

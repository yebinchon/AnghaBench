; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_leave_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_leave_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ip_mc_socklist = type { %struct.ip_sf_socklist*, i32, %struct.TYPE_4__ }
%struct.ip_sf_socklist = type { i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.in_device = type { i32 }

@ip_sf_socklist_reclaim = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.ip_mc_socklist*, %struct.in_device*)* @ip_mc_leave_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_mc_leave_src(%struct.sock* %0, %struct.ip_mc_socklist* %1, %struct.in_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.ip_mc_socklist*, align 8
  %7 = alloca %struct.in_device*, align 8
  %8 = alloca %struct.ip_sf_socklist*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.ip_mc_socklist* %1, %struct.ip_mc_socklist** %6, align 8
  store %struct.in_device* %2, %struct.in_device** %7, align 8
  %10 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %6, align 8
  %11 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %10, i32 0, i32 0
  %12 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %11, align 8
  store %struct.ip_sf_socklist* %12, %struct.ip_sf_socklist** %8, align 8
  %13 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %8, align 8
  %14 = icmp eq %struct.ip_sf_socklist* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.in_device*, %struct.in_device** %7, align 8
  %17 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %6, align 8
  %18 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %6, align 8
  %22 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ip_mc_del_src(%struct.in_device* %16, i32* %20, i32 %23, i32 0, i32* null, i32 0)
  store i32 %24, i32* %4, align 4
  br label %57

25:                                               ; preds = %3
  %26 = load %struct.in_device*, %struct.in_device** %7, align 8
  %27 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %6, align 8
  %28 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %6, align 8
  %32 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %8, align 8
  %35 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %8, align 8
  %38 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @ip_mc_del_src(%struct.in_device* %26, i32* %30, i32 %33, i32 %36, i32* %39, i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.ip_mc_socklist*, %struct.ip_mc_socklist** %6, align 8
  %42 = getelementptr inbounds %struct.ip_mc_socklist, %struct.ip_mc_socklist* %41, i32 0, i32 0
  %43 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %42, align 8
  %44 = call i32 @rcu_assign_pointer(%struct.ip_sf_socklist* %43, i32* null)
  %45 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %8, align 8
  %46 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @IP_SFLSIZE(i32 %47)
  %49 = load %struct.sock*, %struct.sock** %5, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = call i32 @atomic_sub(i32 %48, i32* %50)
  %52 = load %struct.ip_sf_socklist*, %struct.ip_sf_socklist** %8, align 8
  %53 = getelementptr inbounds %struct.ip_sf_socklist, %struct.ip_sf_socklist* %52, i32 0, i32 0
  %54 = load i32, i32* @ip_sf_socklist_reclaim, align 4
  %55 = call i32 @call_rcu(i32* %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %25, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ip_mc_del_src(%struct.in_device*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.ip_sf_socklist*, i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @IP_SFLSIZE(i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_clip.c_clip_constructor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_clip.c_clip_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.neighbour = type { i32, %struct.TYPE_2__*, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.atmarp_entry = type { i64, i32*, %struct.neighbour*, i32 }
%struct.in_device = type { %struct.neigh_parms* }
%struct.neigh_parms = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"clip_constructor (neigh %p, entry %p)\0A\00", align 1
@init_net = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@clip_neigh_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neighbour*)* @clip_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clip_constructor(%struct.neighbour* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca %struct.atmarp_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.in_device*, align 8
  %7 = alloca %struct.neigh_parms*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  %8 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %9 = call %struct.atmarp_entry* @NEIGH2ENTRY(%struct.neighbour* %8)
  store %struct.atmarp_entry* %9, %struct.atmarp_entry** %4, align 8
  %10 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %11 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %10, i32 0, i32 5
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %14 = load %struct.atmarp_entry*, %struct.atmarp_entry** %4, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.neighbour* %13, %struct.atmarp_entry* %14)
  %16 = load %struct.atmarp_entry*, %struct.atmarp_entry** %4, align 8
  %17 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @inet_addr_type(i32* @init_net, i32 %18)
  %20 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %21 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %23 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RTN_UNICAST, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %86

30:                                               ; preds = %1
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %32)
  store %struct.in_device* %33, %struct.in_device** %6, align 8
  %34 = load %struct.in_device*, %struct.in_device** %6, align 8
  %35 = icmp ne %struct.in_device* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %86

40:                                               ; preds = %30
  %41 = load %struct.in_device*, %struct.in_device** %6, align 8
  %42 = getelementptr inbounds %struct.in_device, %struct.in_device* %41, i32 0, i32 0
  %43 = load %struct.neigh_parms*, %struct.neigh_parms** %42, align 8
  store %struct.neigh_parms* %43, %struct.neigh_parms** %7, align 8
  %44 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %45 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__neigh_parms_put(i32 %46)
  %48 = load %struct.neigh_parms*, %struct.neigh_parms** %7, align 8
  %49 = call i32 @neigh_parms_clone(%struct.neigh_parms* %48)
  %50 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %51 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = call i32 (...) @rcu_read_unlock()
  %53 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %54 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %53, i32 0, i32 1
  store %struct.TYPE_2__* @clip_neigh_ops, %struct.TYPE_2__** %54, align 8
  %55 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %56 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NUD_VALID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %40
  %62 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %63 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  br label %73

67:                                               ; preds = %40
  %68 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %69 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  br label %73

73:                                               ; preds = %67, %61
  %74 = phi i32 [ %66, %61 ], [ %72, %67 ]
  %75 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %76 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %78 = load %struct.atmarp_entry*, %struct.atmarp_entry** %4, align 8
  %79 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %78, i32 0, i32 2
  store %struct.neighbour* %77, %struct.neighbour** %79, align 8
  %80 = load %struct.atmarp_entry*, %struct.atmarp_entry** %4, align 8
  %81 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  %82 = load i64, i64* @jiffies, align 8
  %83 = sub nsw i64 %82, 1
  %84 = load %struct.atmarp_entry*, %struct.atmarp_entry** %4, align 8
  %85 = getelementptr inbounds %struct.atmarp_entry, %struct.atmarp_entry* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %73, %36, %27
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.atmarp_entry* @NEIGH2ENTRY(%struct.neighbour*) #1

declare dso_local i32 @pr_debug(i8*, %struct.neighbour*, %struct.atmarp_entry*) #1

declare dso_local i32 @inet_addr_type(i32*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @__neigh_parms_put(i32) #1

declare dso_local i32 @neigh_parms_clone(%struct.neigh_parms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_sysfs_if.c_brport_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_sysfs_if.c_brport_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.brport_attribute = type { i64 (%struct.net_bridge_port*, i64)* }
%struct.net_bridge_port = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @brport_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brport_store(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.brport_attribute*, align 8
  %11 = alloca %struct.net_bridge_port*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.attribute* %1, %struct.attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.attribute*, %struct.attribute** %7, align 8
  %16 = call %struct.brport_attribute* @to_brport_attr(%struct.attribute* %15)
  store %struct.brport_attribute* %16, %struct.brport_attribute** %10, align 8
  %17 = load %struct.kobject*, %struct.kobject** %6, align 8
  %18 = call %struct.net_bridge_port* @to_brport(%struct.kobject* %17)
  store %struct.net_bridge_port* %18, %struct.net_bridge_port** %11, align 8
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %12, align 8
  %21 = load i32, i32* @CAP_NET_ADMIN, align 4
  %22 = call i32 @capable(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* @EPERM, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %79

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @simple_strtoul(i8* %28, i8** %13, i32 0)
  store i64 %29, i64* %14, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %30, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %27
  %34 = call i32 (...) @rtnl_trylock()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = call i64 (...) @restart_syscall()
  store i64 %37, i64* %5, align 8
  br label %79

38:                                               ; preds = %33
  %39 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %40 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %38
  %44 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %45 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %75

48:                                               ; preds = %43
  %49 = load %struct.brport_attribute*, %struct.brport_attribute** %10, align 8
  %50 = getelementptr inbounds %struct.brport_attribute, %struct.brport_attribute* %49, i32 0, i32 0
  %51 = load i64 (%struct.net_bridge_port*, i64)*, i64 (%struct.net_bridge_port*, i64)** %50, align 8
  %52 = icmp ne i64 (%struct.net_bridge_port*, i64)* %51, null
  br i1 %52, label %53, label %75

53:                                               ; preds = %48
  %54 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %55 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @spin_lock_bh(i32* %57)
  %59 = load %struct.brport_attribute*, %struct.brport_attribute** %10, align 8
  %60 = getelementptr inbounds %struct.brport_attribute, %struct.brport_attribute* %59, i32 0, i32 0
  %61 = load i64 (%struct.net_bridge_port*, i64)*, i64 (%struct.net_bridge_port*, i64)** %60, align 8
  %62 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call i64 %61(%struct.net_bridge_port* %62, i64 %63)
  store i64 %64, i64* %12, align 8
  %65 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %66 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock_bh(i32* %68)
  %70 = load i64, i64* %12, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %53
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %12, align 8
  br label %74

74:                                               ; preds = %72, %53
  br label %75

75:                                               ; preds = %74, %48, %43, %38
  %76 = call i32 (...) @rtnl_unlock()
  br label %77

77:                                               ; preds = %75, %27
  %78 = load i64, i64* %12, align 8
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %77, %36, %24
  %80 = load i64, i64* %5, align 8
  ret i64 %80
}

declare dso_local %struct.brport_attribute* @to_brport_attr(%struct.attribute*) #1

declare dso_local %struct.net_bridge_port* @to_brport(%struct.kobject*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @rtnl_trylock(...) #1

declare dso_local i64 @restart_syscall(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

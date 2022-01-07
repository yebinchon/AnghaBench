; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_find_primary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_find_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_iface = type { %struct.atalk_addr, %struct.TYPE_2__*, %struct.atalk_iface* }
%struct.atalk_addr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@atalk_interfaces_lock = common dso_local global i32 0, align 4
@atalk_interfaces = common dso_local global %struct.atalk_iface* null, align 8
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atalk_addr* ()* @atalk_find_primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atalk_addr* @atalk_find_primary() #0 {
  %1 = alloca %struct.atalk_iface*, align 8
  %2 = alloca %struct.atalk_addr*, align 8
  %3 = alloca %struct.atalk_iface*, align 8
  store %struct.atalk_iface* null, %struct.atalk_iface** %1, align 8
  %4 = call i32 @read_lock_bh(i32* @atalk_interfaces_lock)
  %5 = load %struct.atalk_iface*, %struct.atalk_iface** @atalk_interfaces, align 8
  store %struct.atalk_iface* %5, %struct.atalk_iface** %3, align 8
  br label %6

6:                                                ; preds = %38, %0
  %7 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %8 = icmp ne %struct.atalk_iface* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  %10 = load %struct.atalk_iface*, %struct.atalk_iface** %1, align 8
  %11 = icmp ne %struct.atalk_iface* %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  %13 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %14 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_LOOPBACK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  store %struct.atalk_iface* %22, %struct.atalk_iface** %1, align 8
  br label %23

23:                                               ; preds = %21, %12, %9
  %24 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %25 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_LOOPBACK, align 4
  %30 = load i32, i32* @IFF_POINTOPOINT, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %36 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %35, i32 0, i32 0
  store %struct.atalk_addr* %36, %struct.atalk_addr** %2, align 8
  br label %57

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %40 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %39, i32 0, i32 2
  %41 = load %struct.atalk_iface*, %struct.atalk_iface** %40, align 8
  store %struct.atalk_iface* %41, %struct.atalk_iface** %3, align 8
  br label %6

42:                                               ; preds = %6
  %43 = load %struct.atalk_iface*, %struct.atalk_iface** %1, align 8
  %44 = icmp ne %struct.atalk_iface* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.atalk_iface*, %struct.atalk_iface** %1, align 8
  %47 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %46, i32 0, i32 0
  store %struct.atalk_addr* %47, %struct.atalk_addr** %2, align 8
  br label %56

48:                                               ; preds = %42
  %49 = load %struct.atalk_iface*, %struct.atalk_iface** @atalk_interfaces, align 8
  %50 = icmp ne %struct.atalk_iface* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.atalk_iface*, %struct.atalk_iface** @atalk_interfaces, align 8
  %53 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %52, i32 0, i32 0
  store %struct.atalk_addr* %53, %struct.atalk_addr** %2, align 8
  br label %55

54:                                               ; preds = %48
  store %struct.atalk_addr* null, %struct.atalk_addr** %2, align 8
  br label %55

55:                                               ; preds = %54, %51
  br label %56

56:                                               ; preds = %55, %45
  br label %57

57:                                               ; preds = %56, %34
  %58 = call i32 @read_unlock_bh(i32* @atalk_interfaces_lock)
  %59 = load %struct.atalk_addr*, %struct.atalk_addr** %2, align 8
  ret %struct.atalk_addr* %59
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

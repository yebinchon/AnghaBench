; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.dn_dev* }
%struct.dn_dev = type { i64, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)* }

@dn_neigh_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dn_dev_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_dev_delete(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dn_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load %struct.dn_dev*, %struct.dn_dev** %5, align 8
  store %struct.dn_dev* %6, %struct.dn_dev** %3, align 8
  %7 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %8 = icmp eq %struct.dn_dev* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %64

10:                                               ; preds = %1
  %11 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %12 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %11, i32 0, i32 4
  %13 = call i32 @del_timer_sync(i32* %12)
  %14 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %15 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %14, i32 0, i32 3
  %16 = call i32 @dn_dev_sysctl_unregister(%struct.TYPE_2__* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @dn_dev_check_default(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @neigh_ifdown(i32* @dn_neigh_table, %struct.net_device* %19)
  %21 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %22 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %23, align 8
  %25 = icmp ne i32 (%struct.net_device*)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %10
  %27 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %28 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %29, align 8
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 %30(%struct.net_device* %31)
  br label %33

33:                                               ; preds = %26, %10
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  store %struct.dn_dev* null, %struct.dn_dev** %35, align 8
  %36 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %37 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @neigh_parms_release(i32* @dn_neigh_table, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @neigh_ifdown(i32* @dn_neigh_table, %struct.net_device* %40)
  %42 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %43 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %48 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @neigh_release(i64 %49)
  br label %51

51:                                               ; preds = %46, %33
  %52 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %53 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %58 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @neigh_release(i64 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  %63 = call i32 @kfree(%struct.dn_dev* %62)
  br label %64

64:                                               ; preds = %61, %9
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @dn_dev_sysctl_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @dn_dev_check_default(%struct.net_device*) #1

declare dso_local i32 @neigh_ifdown(i32*, %struct.net_device*) #1

declare dso_local i32 @neigh_parms_release(i32*, i32) #1

declare dso_local i32 @neigh_release(i64) #1

declare dso_local i32 @kfree(%struct.dn_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_dev_parms = type { i64 }
%struct.dn_dev = type { %struct.TYPE_3__, i32, i32, i32, %struct.net_device* }
%struct.TYPE_3__ = type { i64 (%struct.net_device*)* }
%struct.net_device = type { i64, %struct.dn_dev* }

@dn_dev_list = common dso_local global %struct.dn_dev_parms* null, align 8
@DN_DEV_LIST_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@dn_neigh_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dn_dev* (%struct.net_device*, i32*)* @dn_dev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dn_dev* @dn_dev_create(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.dn_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_dev_parms*, align 8
  %8 = alloca %struct.dn_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dn_dev_parms*, %struct.dn_dev_parms** @dn_dev_list, align 8
  store %struct.dn_dev_parms* %9, %struct.dn_dev_parms** %7, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DN_DEV_LIST_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.dn_dev_parms*, %struct.dn_dev_parms** %7, align 8
  %16 = getelementptr inbounds %struct.dn_dev_parms, %struct.dn_dev_parms* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %29

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load %struct.dn_dev_parms*, %struct.dn_dev_parms** %7, align 8
  %28 = getelementptr inbounds %struct.dn_dev_parms, %struct.dn_dev_parms* %27, i32 1
  store %struct.dn_dev_parms* %28, %struct.dn_dev_parms** %7, align 8
  br label %10

29:                                               ; preds = %22, %10
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DN_DEV_LIST_SIZE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store %struct.dn_dev* null, %struct.dn_dev** %3, align 8
  br label %109

37:                                               ; preds = %29
  %38 = load i32, i32* @ENOBUFS, align 4
  %39 = sub nsw i32 0, %38
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.dn_dev* @kzalloc(i32 32, i32 %41)
  store %struct.dn_dev* %42, %struct.dn_dev** %8, align 8
  %43 = icmp eq %struct.dn_dev* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store %struct.dn_dev* null, %struct.dn_dev** %3, align 8
  br label %109

45:                                               ; preds = %37
  %46 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %47 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %46, i32 0, i32 0
  %48 = load %struct.dn_dev_parms*, %struct.dn_dev_parms** %7, align 8
  %49 = call i32 @memcpy(%struct.TYPE_3__* %47, %struct.dn_dev_parms* %48, i32 8)
  %50 = call i32 (...) @smp_wmb()
  %51 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  store %struct.dn_dev* %51, %struct.dn_dev** %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %56 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %55, i32 0, i32 4
  store %struct.net_device* %54, %struct.net_device** %56, align 8
  %57 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %58 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %57, i32 0, i32 3
  %59 = call i32 @init_timer(i32* %58)
  %60 = load i32, i32* @jiffies, align 4
  %61 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %62 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = call i32 @neigh_parms_alloc(%struct.net_device* %63, i32* @dn_neigh_table)
  %65 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %66 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %68 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %45
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  store %struct.dn_dev* null, %struct.dn_dev** %73, align 8
  %74 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %75 = call i32 @kfree(%struct.dn_dev* %74)
  store %struct.dn_dev* null, %struct.dn_dev** %3, align 8
  br label %109

76:                                               ; preds = %45
  %77 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %78 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %79, align 8
  %81 = icmp ne i64 (%struct.net_device*)* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  %83 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %84 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %85, align 8
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = call i64 %86(%struct.net_device* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %92 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @neigh_parms_release(i32* @dn_neigh_table, i32 %93)
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 1
  store %struct.dn_dev* null, %struct.dn_dev** %96, align 8
  %97 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %98 = call i32 @kfree(%struct.dn_dev* %97)
  store %struct.dn_dev* null, %struct.dn_dev** %3, align 8
  br label %109

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %99, %76
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %103 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %102, i32 0, i32 0
  %104 = call i32 @dn_dev_sysctl_register(%struct.net_device* %101, %struct.TYPE_3__* %103)
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = call i32 @dn_dev_set_timer(%struct.net_device* %105)
  %107 = load i32*, i32** %5, align 8
  store i32 0, i32* %107, align 4
  %108 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  store %struct.dn_dev* %108, %struct.dn_dev** %3, align 8
  br label %109

109:                                              ; preds = %100, %90, %71, %44, %36
  %110 = load %struct.dn_dev*, %struct.dn_dev** %3, align 8
  ret %struct.dn_dev* %110
}

declare dso_local %struct.dn_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.dn_dev_parms*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @neigh_parms_alloc(%struct.net_device*, i32*) #1

declare dso_local i32 @kfree(%struct.dn_dev*) #1

declare dso_local i32 @neigh_parms_release(i32*, i32) #1

declare dso_local i32 @dn_dev_sysctl_register(%struct.net_device*, %struct.TYPE_3__*) #1

declare dso_local i32 @dn_dev_set_timer(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

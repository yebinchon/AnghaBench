; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_timer_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.dn_dev* }
%struct.dn_dev = type { i64, %struct.TYPE_2__, %struct.dn_ifaddr* }
%struct.TYPE_2__ = type { i64, i64, i32 (%struct.net_device*, %struct.dn_ifaddr*)* }
%struct.dn_ifaddr = type { i32, %struct.dn_ifaddr* }

@IFA_F_SECONDARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dn_dev_timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_dev_timer_func(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dn_dev*, align 8
  %5 = alloca %struct.dn_ifaddr*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.net_device*
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.dn_dev*, %struct.dn_dev** %9, align 8
  store %struct.dn_dev* %10, %struct.dn_dev** %4, align 8
  %11 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %12 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %15 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %13, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %1
  %20 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %21 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32 (%struct.net_device*, %struct.dn_ifaddr*)*, i32 (%struct.net_device*, %struct.dn_ifaddr*)** %22, align 8
  %24 = icmp ne i32 (%struct.net_device*, %struct.dn_ifaddr*)* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %19
  %26 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %27 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %26, i32 0, i32 2
  %28 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %27, align 8
  store %struct.dn_ifaddr* %28, %struct.dn_ifaddr** %5, align 8
  br label %29

29:                                               ; preds = %48, %25
  %30 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %31 = icmp ne %struct.dn_ifaddr* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %34 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IFA_F_SECONDARY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %32
  %40 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %41 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32 (%struct.net_device*, %struct.dn_ifaddr*)*, i32 (%struct.net_device*, %struct.dn_ifaddr*)** %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %46 = call i32 %43(%struct.net_device* %44, %struct.dn_ifaddr* %45)
  br label %47

47:                                               ; preds = %39, %32
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %50 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %49, i32 0, i32 1
  %51 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %50, align 8
  store %struct.dn_ifaddr* %51, %struct.dn_ifaddr** %5, align 8
  br label %29

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %19
  %54 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %55 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %59 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %69

60:                                               ; preds = %1
  %61 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %62 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %66 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %60, %53
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i32 @dn_dev_set_timer(%struct.net_device* %70)
  ret void
}

declare dso_local i32 @dn_dev_set_timer(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

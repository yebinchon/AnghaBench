; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_write_scan_unevictable_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_write_scan_unevictable_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }
%struct.sysdev_attribute = type { i32 }
%struct.zone = type { i32 }
%struct.TYPE_2__ = type { %struct.zone* }

@MAX_NR_ZONES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*, %struct.sysdev_attribute*, i8*, i64)* @write_scan_unevictable_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_scan_unevictable_node(%struct.sys_device* %0, %struct.sysdev_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sys_device*, align 8
  %7 = alloca %struct.sysdev_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zone*, align 8
  %11 = alloca %struct.zone*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.sys_device* %0, %struct.sys_device** %6, align 8
  store %struct.sysdev_attribute* %1, %struct.sysdev_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %15 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_2__* @NODE_DATA(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.zone*, %struct.zone** %18, align 8
  store %struct.zone* %19, %struct.zone** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strict_strtoul(i8* %20, i32 10, i64* %12)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %49

25:                                               ; preds = %4
  %26 = load %struct.zone*, %struct.zone** %10, align 8
  store %struct.zone* %26, %struct.zone** %11, align 8
  br label %27

27:                                               ; preds = %45, %25
  %28 = load %struct.zone*, %struct.zone** %11, align 8
  %29 = load %struct.zone*, %struct.zone** %10, align 8
  %30 = ptrtoint %struct.zone* %28 to i64
  %31 = ptrtoint %struct.zone* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  %34 = load i32, i32* @MAX_NR_ZONES, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %27
  %38 = load %struct.zone*, %struct.zone** %11, align 8
  %39 = call i32 @populated_zone(%struct.zone* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %45

42:                                               ; preds = %37
  %43 = load %struct.zone*, %struct.zone** %11, align 8
  %44 = call i32 @scan_zone_unevictable_pages(%struct.zone* %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = load %struct.zone*, %struct.zone** %11, align 8
  %47 = getelementptr inbounds %struct.zone, %struct.zone* %46, i32 1
  store %struct.zone* %47, %struct.zone** %11, align 8
  br label %27

48:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_2__* @NODE_DATA(i32) #1

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @populated_zone(%struct.zone*) #1

declare dso_local i32 @scan_zone_unevictable_pages(%struct.zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

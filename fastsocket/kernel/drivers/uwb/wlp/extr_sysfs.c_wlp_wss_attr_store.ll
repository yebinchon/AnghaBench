; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_wss_attr_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_wss_attr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.wlp_wss_attribute = type { i32 (%struct.wlp_wss*, i8*, i64)* }
%struct.wlp_wss = type opaque
%struct.wlp_wss.0 = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*, i64)* @wlp_wss_attr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_wss_attr_store(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wlp_wss_attribute*, align 8
  %10 = alloca %struct.wlp_wss.0*, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.attribute*, %struct.attribute** %6, align 8
  %13 = call %struct.wlp_wss_attribute* @attr_to_wlp_wss_attr(%struct.attribute* %12)
  store %struct.wlp_wss_attribute* %13, %struct.wlp_wss_attribute** %9, align 8
  %14 = load %struct.kobject*, %struct.kobject** %5, align 8
  %15 = call %struct.wlp_wss.0* @kobj_to_wlp_wss(%struct.kobject* %14)
  store %struct.wlp_wss.0* %15, %struct.wlp_wss.0** %10, align 8
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.wlp_wss_attribute*, %struct.wlp_wss_attribute** %9, align 8
  %19 = getelementptr inbounds %struct.wlp_wss_attribute, %struct.wlp_wss_attribute* %18, i32 0, i32 0
  %20 = load i32 (%struct.wlp_wss*, i8*, i64)*, i32 (%struct.wlp_wss*, i8*, i64)** %19, align 8
  %21 = icmp ne i32 (%struct.wlp_wss*, i8*, i64)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.wlp_wss_attribute*, %struct.wlp_wss_attribute** %9, align 8
  %24 = getelementptr inbounds %struct.wlp_wss_attribute, %struct.wlp_wss_attribute* %23, i32 0, i32 0
  %25 = load i32 (%struct.wlp_wss*, i8*, i64)*, i32 (%struct.wlp_wss*, i8*, i64)** %24, align 8
  %26 = load %struct.wlp_wss.0*, %struct.wlp_wss.0** %10, align 8
  %27 = bitcast %struct.wlp_wss.0* %26 to %struct.wlp_wss*
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 %25(%struct.wlp_wss* %27, i8* %28, i64 %29)
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %22, %4
  %32 = load i32, i32* %11, align 4
  ret i32 %32
}

declare dso_local %struct.wlp_wss_attribute* @attr_to_wlp_wss_attr(%struct.attribute*) #1

declare dso_local %struct.wlp_wss.0* @kobj_to_wlp_wss(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

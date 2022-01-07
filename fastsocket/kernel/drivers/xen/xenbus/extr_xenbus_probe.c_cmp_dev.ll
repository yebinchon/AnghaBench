; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_cmp_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_cmp_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.xenbus_device = type { i32 }
%struct.xb_find_info = type { %struct.xenbus_device*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @cmp_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_dev(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xenbus_device*, align 8
  %7 = alloca %struct.xb_find_info*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %8)
  store %struct.xenbus_device* %9, %struct.xenbus_device** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.xb_find_info*
  store %struct.xb_find_info* %11, %struct.xb_find_info** %7, align 8
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %13 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xb_find_info*, %struct.xb_find_info** %7, align 8
  %16 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @strcmp(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %22 = load %struct.xb_find_info*, %struct.xb_find_info** %7, align 8
  %23 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %22, i32 0, i32 0
  store %struct.xenbus_device* %21, %struct.xenbus_device** %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @get_device(%struct.device* %24)
  store i32 1, i32* %3, align 4
  br label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.xenbus_device* @to_xenbus_device(%struct.device*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

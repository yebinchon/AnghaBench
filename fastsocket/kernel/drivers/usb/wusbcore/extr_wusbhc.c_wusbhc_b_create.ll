; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wusbhc.c_wusbhc_b_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wusbhc.c_wusbhc_b_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@wusbhc_attr_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot register WUSBHC attributes: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_b_create(%struct.wusbhc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %7 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %12 = call i32 @wusbhc_kobj(%struct.wusbhc* %11)
  %13 = call i32 @sysfs_create_group(i32 %12, i32* @wusbhc_attr_group)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %22 = call i32 @wusbhc_pal_register(%struct.wusbhc* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %33

27:                                               ; preds = %25
  %28 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %29 = call i32 @wusbhc_kobj(%struct.wusbhc* %28)
  %30 = call i32 @sysfs_remove_group(i32 %29, i32* @wusbhc_attr_group)
  br label %31

31:                                               ; preds = %27, %16
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @sysfs_create_group(i32, i32*) #1

declare dso_local i32 @wusbhc_kobj(%struct.wusbhc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @wusbhc_pal_register(%struct.wusbhc*) #1

declare dso_local i32 @sysfs_remove_group(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

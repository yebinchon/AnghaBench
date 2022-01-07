; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_root_plug.c_rootplug_bprm_check_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_root_plug.c_rootplug_bprm_check_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"file %s, e_uid = %d, e_gid = %d\0A\00", align 1
@vendor_id = common dso_local global i32 0, align 4
@product_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"e_gid = 0, and device not found, task not allowed to run...\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*)* @rootplug_bprm_check_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rootplug_bprm_check_security(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %5 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %6 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %9 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %14 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 (i8*, ...) @root_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %12, i64 %17)
  %19 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %20 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %1
  %26 = load i32, i32* @vendor_id, align 4
  %27 = load i32, i32* @product_id, align 4
  %28 = call %struct.usb_device* @usb_find_device(i32 %26, i32 %27)
  store %struct.usb_device* %28, %struct.usb_device** %4, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %30 = icmp ne %struct.usb_device* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = call i32 (i8*, ...) @root_dbg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %37 = call i32 @usb_put_dev(%struct.usb_device* %36)
  br label %38

38:                                               ; preds = %35, %1
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @root_dbg(i8*, ...) #1

declare dso_local %struct.usb_device* @usb_find_device(i32, i32) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

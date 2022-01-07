; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_sysfs.c_show_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_sysfs.c_show_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vhci_device = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@the_controller = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"prt sta spd bus dev socket           local_busid\0A\00", align 1
@VHCI_NPORTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%03u %03u \00", align 1
@VDEV_ST_USED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%03u %08x \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%16p \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"000 000 000 0000000000000000 0-0\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_status(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vhci_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_controller, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ true, %3 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_controller, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %6, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %104, %17
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @VHCI_NPORTS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %107

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.vhci_device* @port_to_vdev(i32 %34)
  store %struct.vhci_device* %35, %struct.vhci_device** %9, align 8
  %36 = load %struct.vhci_device*, %struct.vhci_device** %9, align 8
  %37 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.vhci_device*, %struct.vhci_device** %9, align 8
  %43 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %45)
  %47 = load i8*, i8** %6, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %6, align 8
  %50 = load %struct.vhci_device*, %struct.vhci_device** %9, align 8
  %51 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @VDEV_ST_USED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %33
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.vhci_device*, %struct.vhci_device** %9, align 8
  %60 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.vhci_device*, %struct.vhci_device** %9, align 8
  %63 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i8*, i8** %6, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.vhci_device*, %struct.vhci_device** %9, align 8
  %71 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i8*, i8** %6, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load %struct.vhci_device*, %struct.vhci_device** %9, align 8
  %80 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = call i8* @dev_name(i32* %82)
  %84 = call i32 (i8*, i8*, ...) @sprintf(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  %85 = load i8*, i8** %6, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %6, align 8
  br label %94

88:                                               ; preds = %33
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i8*, i8** %6, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %6, align 8
  br label %94

94:                                               ; preds = %88, %57
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %97 = load i8*, i8** %6, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %6, align 8
  %100 = load %struct.vhci_device*, %struct.vhci_device** %9, align 8
  %101 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = call i32 @spin_unlock(i32* %102)
  br label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %29

107:                                              ; preds = %29
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_controller, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock(i32* %109)
  %111 = load i8*, i8** %6, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  ret i32 %116
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local %struct.vhci_device* @port_to_vdev(i32) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

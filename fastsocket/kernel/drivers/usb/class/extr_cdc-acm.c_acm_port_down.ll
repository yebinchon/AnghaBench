; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_port_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_port_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i64, i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@open_mutex = common dso_local global i32 0, align 4
@ACM_NW = common dso_local global i32 0, align 4
@ACM_CLOSE_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acm*, i32)* @acm_port_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_port_down(%struct.acm* %0, i32 %1) #0 {
  %3 = alloca %struct.acm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acm* %0, %struct.acm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.acm*, %struct.acm** %3, align 8
  %8 = getelementptr inbounds %struct.acm, %struct.acm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = call i32 @mutex_lock(i32* @open_mutex)
  %11 = load %struct.acm*, %struct.acm** %3, align 8
  %12 = getelementptr inbounds %struct.acm, %struct.acm* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %96

15:                                               ; preds = %2
  %16 = load %struct.acm*, %struct.acm** %3, align 8
  %17 = getelementptr inbounds %struct.acm, %struct.acm* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = call i32 @usb_autopm_get_interface(%struct.TYPE_7__* %18)
  %20 = load %struct.acm*, %struct.acm** %3, align 8
  %21 = load %struct.acm*, %struct.acm** %3, align 8
  %22 = getelementptr inbounds %struct.acm, %struct.acm* %21, i32 0, i32 7
  store i64 0, i64* %22, align 8
  %23 = call i32 @acm_set_control(%struct.acm* %20, i64 0)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %15
  %27 = load %struct.acm*, %struct.acm** %3, align 8
  %28 = getelementptr inbounds %struct.acm, %struct.acm* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ACM_NW, align 4
  %31 = load %struct.acm*, %struct.acm** %3, align 8
  %32 = call i32 @acm_wb_is_avail(%struct.acm* %31)
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = load %struct.acm*, %struct.acm** %3, align 8
  %36 = getelementptr inbounds %struct.acm, %struct.acm* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %34, %26
  %41 = phi i1 [ true, %26 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @ACM_CLOSE_TIMEOUT, align 4
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 %43, %44
  %46 = call i32 @wait_event_interruptible_timeout(i32 %29, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %40, %15
  %48 = load %struct.acm*, %struct.acm** %3, align 8
  %49 = getelementptr inbounds %struct.acm, %struct.acm* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_kill_urb(i32 %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %66, %47
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ACM_NW, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.acm*, %struct.acm** %3, align 8
  %58 = getelementptr inbounds %struct.acm, %struct.acm* %57, i32 0, i32 3
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @usb_kill_urb(i32 %64)
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %52

69:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %84, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load %struct.acm*, %struct.acm** %3, align 8
  %76 = getelementptr inbounds %struct.acm, %struct.acm* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @usb_kill_urb(i32 %82)
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %70

87:                                               ; preds = %70
  %88 = load %struct.acm*, %struct.acm** %3, align 8
  %89 = getelementptr inbounds %struct.acm, %struct.acm* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.acm*, %struct.acm** %3, align 8
  %93 = getelementptr inbounds %struct.acm, %struct.acm* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = call i32 @usb_autopm_put_interface(%struct.TYPE_7__* %94)
  br label %96

96:                                               ; preds = %87, %2
  %97 = call i32 @mutex_unlock(i32* @open_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_7__*) #1

declare dso_local i32 @acm_set_control(%struct.acm*, i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @acm_wb_is_avail(%struct.acm*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

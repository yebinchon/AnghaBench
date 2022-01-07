; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_uwb-debug.c_cmd_rsv_establish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_uwb-debug.c_cmd_rsv_establish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.uwb_dbg_cmd_rsv_establish = type { i32, i32, i32, i32, i32 }
%struct.uwb_mac_addr = type { i32 }
%struct.uwb_rsv = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.uwb_dev*, i32 }
%struct.uwb_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@uwb_dbg_rsv_cb = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UWB_RSV_TARGET_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*, %struct.uwb_dbg_cmd_rsv_establish*)* @cmd_rsv_establish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_rsv_establish(%struct.uwb_rc* %0, %struct.uwb_dbg_cmd_rsv_establish* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_dbg_cmd_rsv_establish*, align 8
  %6 = alloca %struct.uwb_mac_addr, align 4
  %7 = alloca %struct.uwb_rsv*, align 8
  %8 = alloca %struct.uwb_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_dbg_cmd_rsv_establish* %1, %struct.uwb_dbg_cmd_rsv_establish** %5, align 8
  %10 = load %struct.uwb_dbg_cmd_rsv_establish*, %struct.uwb_dbg_cmd_rsv_establish** %5, align 8
  %11 = getelementptr inbounds %struct.uwb_dbg_cmd_rsv_establish, %struct.uwb_dbg_cmd_rsv_establish* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(%struct.uwb_mac_addr* %6, i32 %12, i32 4)
  %14 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %15 = call %struct.uwb_dev* @uwb_dev_get_by_macaddr(%struct.uwb_rc* %14, %struct.uwb_mac_addr* %6)
  store %struct.uwb_dev* %15, %struct.uwb_dev** %8, align 8
  %16 = load %struct.uwb_dev*, %struct.uwb_dev** %8, align 8
  %17 = icmp eq %struct.uwb_dev* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %91

21:                                               ; preds = %2
  %22 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %23 = load i32, i32* @uwb_dbg_rsv_cb, align 4
  %24 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %25 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call %struct.uwb_rsv* @uwb_rsv_create(%struct.uwb_rc* %22, i32 %23, %struct.TYPE_4__* %26)
  store %struct.uwb_rsv* %27, %struct.uwb_rsv** %7, align 8
  %28 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %29 = icmp eq %struct.uwb_rsv* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.uwb_dev*, %struct.uwb_dev** %8, align 8
  %32 = call i32 @uwb_dev_put(%struct.uwb_dev* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %91

35:                                               ; preds = %21
  %36 = load i32, i32* @UWB_RSV_TARGET_DEV, align 4
  %37 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %38 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load %struct.uwb_dev*, %struct.uwb_dev** %8, align 8
  %41 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %42 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.uwb_dev* %40, %struct.uwb_dev** %43, align 8
  %44 = load %struct.uwb_dbg_cmd_rsv_establish*, %struct.uwb_dbg_cmd_rsv_establish** %5, align 8
  %45 = getelementptr inbounds %struct.uwb_dbg_cmd_rsv_establish, %struct.uwb_dbg_cmd_rsv_establish* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %48 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.uwb_dbg_cmd_rsv_establish*, %struct.uwb_dbg_cmd_rsv_establish** %5, align 8
  %50 = getelementptr inbounds %struct.uwb_dbg_cmd_rsv_establish, %struct.uwb_dbg_cmd_rsv_establish* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %53 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.uwb_dbg_cmd_rsv_establish*, %struct.uwb_dbg_cmd_rsv_establish** %5, align 8
  %55 = getelementptr inbounds %struct.uwb_dbg_cmd_rsv_establish, %struct.uwb_dbg_cmd_rsv_establish* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %58 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.uwb_dbg_cmd_rsv_establish*, %struct.uwb_dbg_cmd_rsv_establish** %5, align 8
  %60 = getelementptr inbounds %struct.uwb_dbg_cmd_rsv_establish, %struct.uwb_dbg_cmd_rsv_establish* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %63 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %65 = call i32 @uwb_rsv_establish(%struct.uwb_rsv* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %35
  %69 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %70 = call i32 @uwb_rsv_destroy(%struct.uwb_rsv* %69)
  br label %89

71:                                               ; preds = %35
  %72 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %73 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load %struct.uwb_rsv*, %struct.uwb_rsv** %7, align 8
  %78 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %77, i32 0, i32 0
  %79 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %80 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = call i32 @list_add_tail(i32* %78, i32* %82)
  %84 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %85 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock(i32* %87)
  br label %89

89:                                               ; preds = %71, %68
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %30, %18
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @memcpy(%struct.uwb_mac_addr*, i32, i32) #1

declare dso_local %struct.uwb_dev* @uwb_dev_get_by_macaddr(%struct.uwb_rc*, %struct.uwb_mac_addr*) #1

declare dso_local %struct.uwb_rsv* @uwb_rsv_create(%struct.uwb_rc*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @uwb_dev_put(%struct.uwb_dev*) #1

declare dso_local i32 @uwb_rsv_establish(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_rsv_destroy(%struct.uwb_rsv*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

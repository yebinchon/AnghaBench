; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp.c_uwb_rc_set_drp_cmd_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp.c_uwb_rc_set_drp_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uwb_rceb = type { i32 }
%struct.uwb_rc_evt_set_drp_ie = type { i64 }

@UWB_RC_RES_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"SET-DRP-IE failed: %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"SET-DRP-IE: timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, i8*, %struct.uwb_rceb*, i32)* @uwb_rc_set_drp_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_rc_set_drp_cmd_done(%struct.uwb_rc* %0, i8* %1, %struct.uwb_rceb* %2, i32 %3) #0 {
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uwb_rceb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uwb_rc_evt_set_drp_ie*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.uwb_rceb* %2, %struct.uwb_rceb** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.uwb_rceb*, %struct.uwb_rceb** %7, align 8
  %11 = bitcast %struct.uwb_rceb* %10 to %struct.uwb_rc_evt_set_drp_ie*
  store %struct.uwb_rc_evt_set_drp_ie* %11, %struct.uwb_rc_evt_set_drp_ie** %9, align 8
  %12 = load %struct.uwb_rc_evt_set_drp_ie*, %struct.uwb_rc_evt_set_drp_ie** %9, align 8
  %13 = icmp ne %struct.uwb_rc_evt_set_drp_ie* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  %15 = load %struct.uwb_rc_evt_set_drp_ie*, %struct.uwb_rc_evt_set_drp_ie** %9, align 8
  %16 = getelementptr inbounds %struct.uwb_rc_evt_set_drp_ie, %struct.uwb_rc_evt_set_drp_ie* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UWB_RC_RES_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %22 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.uwb_rc_evt_set_drp_ie*, %struct.uwb_rc_evt_set_drp_ie** %9, align 8
  %25 = getelementptr inbounds %struct.uwb_rc_evt_set_drp_ie, %struct.uwb_rc_evt_set_drp_ie* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @uwb_rc_strerror(i64 %26)
  %28 = load %struct.uwb_rc_evt_set_drp_ie*, %struct.uwb_rc_evt_set_drp_ie** %9, align 8
  %29 = getelementptr inbounds %struct.uwb_rc_evt_set_drp_ie, %struct.uwb_rc_evt_set_drp_ie* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %30)
  br label %32

32:                                               ; preds = %20, %14
  br label %38

33:                                               ; preds = %4
  %34 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %35 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %32
  %39 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %40 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %39, i32 0, i32 1
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %43 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %48 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %50 = call i32 @uwb_rsv_queue_update(%struct.uwb_rc* %49)
  br label %54

51:                                               ; preds = %38
  %52 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %53 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %56 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock_bh(i32* %56)
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @uwb_rc_strerror(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @uwb_rsv_queue_update(%struct.uwb_rc*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

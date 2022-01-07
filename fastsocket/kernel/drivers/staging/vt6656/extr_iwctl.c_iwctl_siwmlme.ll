; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_iwctl.c_iwctl_siwmlme.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_iwctl.c_iwctl_siwmlme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iw_mlme = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"iwctl_siwmlme--->send DISASSOCIATE\0A\00", align 1
@WLAN_CMD_DISASSOCIATE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwctl_siwmlme(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.iw_mlme*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call i32 @netdev_priv(%struct.net_device* %14)
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %10, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %11, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.iw_mlme*
  store %struct.iw_mlme* %21, %struct.iw_mlme** %12, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iw_mlme*, %struct.iw_mlme** %12, align 8
  %26 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i64 @memcmp(i32 %24, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %58

36:                                               ; preds = %4
  %37 = load %struct.iw_mlme*, %struct.iw_mlme** %12, align 8
  %38 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %53 [
    i32 129, label %40
    i32 128, label %40
  ]

40:                                               ; preds = %36, %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = call i32 @PRINT_K(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = ptrtoint %struct.TYPE_6__* %48 to i32
  %50 = load i32, i32* @WLAN_CMD_DISASSOCIATE, align 4
  %51 = call i32 @bScheduleCommand(i32 %49, i32 %50, i32* null)
  br label %52

52:                                               ; preds = %46, %40
  br label %56

53:                                               ; preds = %36
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %32
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @PRINT_K(i8*) #1

declare dso_local i32 @bScheduleCommand(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

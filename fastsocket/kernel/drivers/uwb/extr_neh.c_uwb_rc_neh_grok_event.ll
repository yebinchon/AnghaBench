; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_neh.c_uwb_rc_neh_grok_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_neh.c_uwb_rc_neh_grok_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rceb = type { i64, i32, i32 }
%struct.uwb_rc_neh = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"event 0x%02x/%04x/%02x (%zu bytes): no memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"event 0x%02x/%04x/%02x (%zu bytes): nobody cared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_rceb*, i64)* @uwb_rc_neh_grok_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_rc_neh_grok_event(%struct.uwb_rc* %0, %struct.uwb_rceb* %1, i64 %2) #0 {
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_rceb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.uwb_rc_neh*, align 8
  %9 = alloca %struct.uwb_rceb*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_rceb* %1, %struct.uwb_rceb** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %11 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %14 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.uwb_rceb* @kmalloc(i64 %18, i32 %19)
  store %struct.uwb_rceb* %20, %struct.uwb_rceb** %9, align 8
  %21 = load %struct.uwb_rceb*, %struct.uwb_rceb** %9, align 8
  %22 = icmp ne %struct.uwb_rceb* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.uwb_rceb*, %struct.uwb_rceb** %9, align 8
  %25 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @memcpy(%struct.uwb_rceb* %24, %struct.uwb_rceb* %25, i64 %26)
  %28 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %29 = load %struct.uwb_rceb*, %struct.uwb_rceb** %9, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @uwb_rc_notif(%struct.uwb_rc* %28, %struct.uwb_rceb* %29, i64 %30)
  br label %46

32:                                               ; preds = %17
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %35 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %38 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %42 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40, i64 %43, i64 %44)
  br label %46

46:                                               ; preds = %32, %23
  br label %76

47:                                               ; preds = %3
  %48 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %49 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %50 = call %struct.uwb_rc_neh* @uwb_rc_neh_lookup(%struct.uwb_rc* %48, %struct.uwb_rceb* %49)
  store %struct.uwb_rc_neh* %50, %struct.uwb_rc_neh** %8, align 8
  %51 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %8, align 8
  %52 = icmp ne %struct.uwb_rc_neh* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %8, align 8
  %55 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %54, i32 0, i32 0
  %56 = call i32 @del_timer_sync(i32* %55)
  %57 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %8, align 8
  %58 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @uwb_rc_neh_cb(%struct.uwb_rc_neh* %57, %struct.uwb_rceb* %58, i64 %59)
  br label %75

61:                                               ; preds = %47
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %64 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %67 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = load %struct.uwb_rceb*, %struct.uwb_rceb** %5, align 8
  %71 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @dev_warn(%struct.device* %62, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %69, i64 %72, i64 %73)
  br label %75

75:                                               ; preds = %61, %53
  br label %76

76:                                               ; preds = %75, %46
  ret void
}

declare dso_local %struct.uwb_rceb* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(%struct.uwb_rceb*, %struct.uwb_rceb*, i64) #1

declare dso_local i32 @uwb_rc_notif(%struct.uwb_rc*, %struct.uwb_rceb*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.uwb_rc_neh* @uwb_rc_neh_lookup(%struct.uwb_rc*, %struct.uwb_rceb*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @uwb_rc_neh_cb(%struct.uwb_rc_neh*, %struct.uwb_rceb*, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

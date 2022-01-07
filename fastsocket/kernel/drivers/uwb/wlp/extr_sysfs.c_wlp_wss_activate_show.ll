; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_wss_activate_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c_wlp_wss_activate_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp_wss = type { i64, i32 }

@WLP_WSS_STATE_ACTIVE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"No local WSS active.\0A\00", align 1
@.str.1 = private unnamed_addr constant [429 x i8] c"\0A\0A# echo WSSID SECURE_STATUS ACCEPT_ENROLLMENT NAME #create new WSS\0A# echo WSSID [DEV ADDR] #enroll in and activate existing WSS, can request registrar\0A#\0A# WSSID is a 16 byte hex array. Eg. 12 A3 3B ... \0A# SECURE_STATUS 0 - unsecure, 1 - secure (default)\0A# ACCEPT_ENROLLMENT 0 - no, 1 - yes (default)\0A# NAME is the text string identifying the WSS\0A# DEV ADDR is the device address of neighbor that should be registrar. Eg. 32:AB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_wss_activate_show(%struct.wlp_wss* %0, i8* %1) #0 {
  %3 = alloca %struct.wlp_wss*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.wlp_wss* %0, %struct.wlp_wss** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.wlp_wss*, %struct.wlp_wss** %3, align 8
  %7 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %6, i32 0, i32 1
  %8 = call i64 @mutex_lock_interruptible(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %41

11:                                               ; preds = %2
  %12 = load %struct.wlp_wss*, %struct.wlp_wss** %3, align 8
  %13 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WLP_WSS_STATE_ACTIVE, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.wlp_wss*, %struct.wlp_wss** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = call i32 @__wlp_wss_properties_show(%struct.wlp_wss* %18, i8* %19, i64 %20)
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %11
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = call i32 @scnprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %31, %33
  %35 = call i32 @scnprintf(i8* %30, i64 %34, i8* getelementptr inbounds ([429 x i8], [429 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.wlp_wss*, %struct.wlp_wss** %3, align 8
  %39 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %41

41:                                               ; preds = %26, %10
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @__wlp_wss_properties_show(%struct.wlp_wss*, i8*, i64) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

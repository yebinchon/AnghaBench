; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_compliance_mode_recovery_timer_quirk_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_compliance_mode_recovery_timer_quirk_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMI_PRODUCT_NAME = common dso_local global i32 0, align 4
@DMI_SYS_VENDOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Hewlett-Packard\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Z420\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Z620\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Z820\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Z1 Workstation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @compliance_mode_recovery_timer_quirk_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compliance_mode_recovery_timer_quirk_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @DMI_PRODUCT_NAME, align 4
  %5 = call i8* @dmi_get_system_info(i32 %4)
  store i8* %5, i8** %2, align 8
  %6 = load i32, i32* @DMI_SYS_VENDOR, align 4
  %7 = call i8* @dmi_get_system_info(i32 %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %0
  store i32 0, i32* %1, align 4
  br label %37

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strstr(i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %37

19:                                               ; preds = %14
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @strstr(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %2, align 8
  %25 = call i64 @strstr(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %2, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %2, align 8
  %33 = call i64 @strstr(i8* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27, %23, %19
  store i32 1, i32* %1, align 4
  br label %37

36:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %36, %35, %18, %13
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i8* @dmi_get_system_info(i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

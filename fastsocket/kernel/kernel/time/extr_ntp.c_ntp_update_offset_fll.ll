; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_ntp.c_ntp_update_offset_fll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_ntp.c_ntp_update_offset_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STA_MODE = common dso_local global i32 0, align 4
@time_status = common dso_local global i32 0, align 4
@MINSEC = common dso_local global i64 0, align 8
@STA_FLL = common dso_local global i32 0, align 4
@MAXSEC = common dso_local global i64 0, align 8
@NTP_SCALE_SHIFT = common dso_local global i32 0, align 4
@SHIFT_FLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @ntp_update_offset_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntp_update_offset_fll(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @STA_MODE, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* @time_status, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* @time_status, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @MINSEC, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load i32, i32* @time_status, align 4
  %16 = load i32, i32* @STA_FLL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @MAXSEC, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %35

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @STA_MODE, align 4
  %26 = load i32, i32* @time_status, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @time_status, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @NTP_SCALE_SHIFT, align 4
  %30 = load i32, i32* @SHIFT_FLL, align 4
  %31 = sub nsw i32 %29, %30
  %32 = shl i32 %28, %31
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @div_s64(i32 %32, i64 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %24, %23, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @div_s64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

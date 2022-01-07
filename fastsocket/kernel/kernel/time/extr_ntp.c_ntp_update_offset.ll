; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_ntp.c_ntp_update_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_ntp.c_ntp_update_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@time_status = common dso_local global i32 0, align 4
@STA_PLL = common dso_local global i32 0, align 4
@STA_NANO = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@MAXPHASE = common dso_local global i32 0, align 4
@time_reftime = common dso_local global i64 0, align 8
@STA_FREQHOLD = common dso_local global i32 0, align 4
@NTP_SCALE_SHIFT = common dso_local global i32 0, align 4
@SHIFT_PLL = common dso_local global i32 0, align 4
@time_constant = common dso_local global i32 0, align 4
@time_freq = common dso_local global i64 0, align 8
@MAXFREQ_SCALED = common dso_local global i32 0, align 4
@NTP_INTERVAL_FREQ = common dso_local global i32 0, align 4
@time_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ntp_update_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntp_update_offset(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @time_status, align 4
  %7 = load i32, i32* @STA_PLL, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %72

11:                                               ; preds = %1
  %12 = load i32, i32* @time_status, align 4
  %13 = load i32, i32* @STA_NANO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* @NSEC_PER_USEC, align 8
  %18 = load i64, i64* %2, align 8
  %19 = mul nsw i64 %18, %17
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i64, i64* %2, align 8
  %22 = load i32, i32* @MAXPHASE, align 4
  %23 = call i64 @min(i64 %21, i32 %22)
  store i64 %23, i64* %2, align 8
  %24 = load i64, i64* %2, align 8
  %25 = load i32, i32* @MAXPHASE, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i64 @max(i64 %24, i32 %26)
  store i64 %27, i64* %2, align 8
  %28 = call i64 (...) @get_seconds()
  %29 = load i64, i64* @time_reftime, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %5, align 8
  %31 = load i32, i32* @time_status, align 4
  %32 = load i32, i32* @STA_FREQHOLD, align 4
  %33 = and i32 %31, %32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %36, %20
  %38 = call i64 (...) @get_seconds()
  store i64 %38, i64* @time_reftime, align 8
  %39 = load i64, i64* %2, align 8
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = mul nsw i64 %40, %41
  %43 = load i32, i32* @NTP_SCALE_SHIFT, align 4
  %44 = load i32, i32* @SHIFT_PLL, align 4
  %45 = add nsw i32 %44, 2
  %46 = load i32, i32* @time_constant, align 4
  %47 = add nsw i32 %45, %46
  %48 = mul nsw i32 2, %47
  %49 = sub nsw i32 %43, %48
  %50 = zext i32 %49 to i64
  %51 = shl i64 %42, %50
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @ntp_update_offset_fll(i64 %52, i64 %53)
  %55 = load i64, i64* %3, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @time_freq, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i32, i32* @MAXFREQ_SCALED, align 4
  %61 = call i64 @min(i64 %59, i32 %60)
  store i64 %61, i64* %3, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i32, i32* @MAXFREQ_SCALED, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i64 @max(i64 %62, i32 %64)
  store i64 %65, i64* @time_freq, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i32, i32* @NTP_SCALE_SHIFT, align 4
  %68 = zext i32 %67 to i64
  %69 = shl i64 %66, %68
  %70 = load i32, i32* @NTP_INTERVAL_FREQ, align 4
  %71 = call i32 @div_s64(i64 %69, i32 %70)
  store i32 %71, i32* @time_offset, align 4
  br label %72

72:                                               ; preds = %37, %10
  ret void
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ntp_update_offset_fll(i64, i64) #1

declare dso_local i32 @div_s64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

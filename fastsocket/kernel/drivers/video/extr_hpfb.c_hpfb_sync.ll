; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hpfb.c_hpfb_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hpfb.c_hpfb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@fb_regs = common dso_local global i64 0, align 8
@BUSY = common dso_local global i64 0, align 8
@fb_bitmask = common dso_local global i32 0, align 4
@TC_WEN = common dso_local global i64 0, align 8
@TC_PRR = common dso_local global i64 0, align 8
@RR_COPY = common dso_local global i32 0, align 4
@TC_FBEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @hpfb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfb_sync(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  br label %3

3:                                                ; preds = %11, %1
  %4 = load i64, i64* @fb_regs, align 8
  %5 = load i64, i64* @BUSY, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @in_8(i64 %6)
  %8 = load i32, i32* @fb_bitmask, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %3

12:                                               ; preds = %3
  %13 = load i64, i64* @fb_regs, align 8
  %14 = load i64, i64* @TC_WEN, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* @fb_bitmask, align 4
  %17 = call i32 @out_8(i64 %15, i32 %16)
  %18 = load i64, i64* @fb_regs, align 8
  %19 = load i64, i64* @TC_PRR, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* @RR_COPY, align 4
  %22 = call i32 @out_8(i64 %20, i32 %21)
  %23 = load i64, i64* @fb_regs, align 8
  %24 = load i64, i64* @TC_FBEN, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* @fb_bitmask, align 4
  %27 = call i32 @out_8(i64 %25, i32 %26)
  ret i32 0
}

declare dso_local i32 @in_8(i64) #1

declare dso_local i32 @out_8(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

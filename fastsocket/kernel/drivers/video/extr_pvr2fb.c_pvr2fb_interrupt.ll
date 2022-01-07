; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pvr2fb.c_pvr2fb_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pvr2fb.c_pvr2fb_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@do_vmode_pan = common dso_local global i64 0, align 8
@do_vmode_full = common dso_local global i64 0, align 8
@do_blank = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pvr2fb_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2fb_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.fb_info*
  store %struct.fb_info* %7, %struct.fb_info** %5, align 8
  %8 = load i64, i64* @do_vmode_pan, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @do_vmode_full, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %2
  %14 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %15 = call i32 @pvr2_update_display(%struct.fb_info* %14)
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i64, i64* @do_vmode_full, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %21 = call i32 @pvr2_init_display(%struct.fb_info* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i64, i64* @do_vmode_pan, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i64 0, i64* @do_vmode_pan, align 8
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i64, i64* @do_vmode_full, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 0, i64* @do_vmode_full, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i64, i64* @do_blank, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (...) @pvr2_do_blank()
  store i64 0, i64* @do_blank, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

declare dso_local i32 @pvr2_update_display(%struct.fb_info*) #1

declare dso_local i32 @pvr2_init_display(%struct.fb_info*) #1

declare dso_local i32 @pvr2_do_blank(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

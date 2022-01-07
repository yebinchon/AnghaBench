; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_atyfb_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_atyfb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.atyfb_par = type { i32, i64 }

@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@default_var = common dso_local global %struct.fb_var_screeninfo zeroinitializer, align 8
@noaccel = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @atyfb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atyfb_release(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atyfb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.atyfb_par*
  store %struct.atyfb_par* %10, %struct.atyfb_par** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %16 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = call i32 @mdelay(i32 1)
  %20 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %21 = call i32 @wait_for_idle(%struct.atyfb_par* %20)
  %22 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %23 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %30

27:                                               ; preds = %14
  %28 = load %struct.atyfb_par*, %struct.atyfb_par** %6, align 8
  %29 = call i32 @aty_disable_irq(%struct.atyfb_par* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %26, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @wait_for_idle(%struct.atyfb_par*) #1

declare dso_local i32 @aty_disable_irq(%struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

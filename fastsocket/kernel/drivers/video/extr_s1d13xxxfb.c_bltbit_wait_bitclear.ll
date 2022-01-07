; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s1d13xxxfb.c_bltbit_wait_bitclear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s1d13xxxfb.c_bltbit_wait_bitclear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@S1DREG_BBLT_CTL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"wait_bitclear timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32, i32)* @bltbit_wait_bitclear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bltbit_wait_bitclear(%struct.fb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %23, %3
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @S1DREG_BBLT_CTL0, align 4
  %12 = call i32 @s1d13xxxfb_readreg(i32 %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %7
  %17 = call i32 @udelay(i32 10)
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @dbg_blit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %24

23:                                               ; preds = %16
  br label %7

24:                                               ; preds = %21, %7
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local i32 @s1d13xxxfb_readreg(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dbg_blit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

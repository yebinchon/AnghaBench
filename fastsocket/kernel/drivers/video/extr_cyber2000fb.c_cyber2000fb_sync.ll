; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.cfb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@CO_REG_CONTROL = common dso_local global i32 0, align 4
@CO_CTRL_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"accel_wait timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @cyber2000fb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyber2000fb_sync(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.cfb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = bitcast %struct.fb_info* %6 to %struct.cfb_info*
  store %struct.cfb_info* %7, %struct.cfb_info** %4, align 8
  store i32 100000, i32* %5, align 4
  %8 = load %struct.cfb_info*, %struct.cfb_info** %4, align 8
  %9 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i32, i32* @CO_REG_CONTROL, align 4
  %20 = load %struct.cfb_info*, %struct.cfb_info** %4, align 8
  %21 = call i32 @cyber2000fb_readb(i32 %19, %struct.cfb_info* %20)
  %22 = load i32, i32* @CO_CTRL_BUSY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %5, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = call i32 @debug_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @CO_REG_CONTROL, align 4
  %32 = load %struct.cfb_info*, %struct.cfb_info** %4, align 8
  %33 = call i32 @cyber2000fb_writeb(i32 0, i32 %31, %struct.cfb_info* %32)
  br label %36

34:                                               ; preds = %25
  %35 = call i32 @udelay(i32 1)
  br label %18

36:                                               ; preds = %29, %18
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @cyber2000fb_readb(i32, %struct.cfb_info*) #1

declare dso_local i32 @debug_printf(i8*) #1

declare dso_local i32 @cyber2000fb_writeb(i32, i32, %struct.cfb_info*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

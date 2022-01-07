; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ps3fb.c_ps3fb_native_vmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ps3fb.c_ps3fb_native_vmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32 }

@ps3fb_modedb = common dso_local global %struct.fb_videomode* null, align 8
@FIRST_NATIVE_MODE_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fb_videomode* (i32)* @ps3fb_native_vmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fb_videomode* @ps3fb_native_vmode(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.fb_videomode*, %struct.fb_videomode** @ps3fb_modedb, align 8
  %4 = load i32, i32* @FIRST_NATIVE_MODE_INDEX, align 4
  %5 = load i32, i32* %2, align 4
  %6 = add i32 %4, %5
  %7 = sub i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %3, i64 %8
  ret %struct.fb_videomode* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

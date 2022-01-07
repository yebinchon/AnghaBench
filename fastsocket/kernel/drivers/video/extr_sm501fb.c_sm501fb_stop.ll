; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sm501fb.c_sm501fb_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sm501fb.c_sm501fb_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501fb_info = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SM501_GATE_DISPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sm501fb_info*)* @sm501fb_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm501fb_stop(%struct.sm501fb_info* %0) #0 {
  %2 = alloca %struct.sm501fb_info*, align 8
  store %struct.sm501fb_info* %0, %struct.sm501fb_info** %2, align 8
  %3 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %4 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %3, i32 0, i32 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SM501_GATE_DISPLAY, align 4
  %9 = call i32 @sm501_unit_power(i32 %7, i32 %8, i32 0)
  %10 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @iounmap(i32 %12)
  %14 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @release_resource(i32 %16)
  %18 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %19 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @kfree(i32 %20)
  %22 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %23 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @iounmap(i32 %24)
  %26 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %27 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @release_resource(i32 %28)
  %30 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %31 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @kfree(i32 %32)
  ret void
}

declare dso_local i32 @sm501_unit_power(i32, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

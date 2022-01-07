; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tmiofb.c_tmiofb_clearscreen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tmiofb.c_tmiofb_clearscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.fb_info*, %struct.fb_fillrect*)* }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ROP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @tmiofb_clearscreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmiofb_clearscreen(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fb_fillrect, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %3, i32 0, i32 0
  %5 = load i32, i32* @ROP_COPY, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %3, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %3, i32 0, i32 2
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %3, i32 0, i32 3
  %14 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %3, i32 0, i32 4
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %3, i32 0, i32 5
  store i32 0, i32* %20, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %24, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %27 = call i32 %25(%struct.fb_info* %26, %struct.fb_fillrect* %3)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_stifb.c_ngleSetupAttrPlanes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_stifb.c_ngleSetupAttrPlanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stifb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stifb_info*, i32)* @ngleSetupAttrPlanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngleSetupAttrPlanes(%struct.stifb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.stifb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.stifb_info* %0, %struct.stifb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @SETUP_ATTR_ACCESS(%struct.stifb_info* %5, i32 %6)
  %8 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %9 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %10 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %15 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @SET_ATTR_SIZE(%struct.stifb_info* %8, i32 %13, i32 %18)
  %20 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %21 = call i32 @FINISH_ATTR_ACCESS(%struct.stifb_info* %20)
  %22 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %23 = call i32 @SETUP_FB(%struct.stifb_info* %22)
  ret void
}

declare dso_local i32 @SETUP_ATTR_ACCESS(%struct.stifb_info*, i32) #1

declare dso_local i32 @SET_ATTR_SIZE(%struct.stifb_info*, i32, i32) #1

declare dso_local i32 @FINISH_ATTR_ACCESS(%struct.stifb_info*) #1

declare dso_local i32 @SETUP_FB(%struct.stifb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_sdc_disable_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_sdc_disable_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx3fb_info = type { i32, %struct.TYPE_4__*, %struct.mx3fb_data* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }
%struct.mx3fb_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mx3fb_info*)* @sdc_disable_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdc_disable_channel(%struct.mx3fb_info* %0) #0 {
  %2 = alloca %struct.mx3fb_info*, align 8
  %3 = alloca %struct.mx3fb_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mx3fb_info* %0, %struct.mx3fb_info** %2, align 8
  %6 = load %struct.mx3fb_info*, %struct.mx3fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %6, i32 0, i32 2
  %8 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  store %struct.mx3fb_data* %8, %struct.mx3fb_data** %3, align 8
  %9 = load %struct.mx3fb_data*, %struct.mx3fb_data** %3, align 8
  %10 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.mx3fb_info*, %struct.mx3fb_info** %2, align 8
  %14 = call i32 @sdc_fb_uninit(%struct.mx3fb_info* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.mx3fb_data*, %struct.mx3fb_data** %3, align 8
  %16 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load %struct.mx3fb_info*, %struct.mx3fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %26, align 8
  %28 = load %struct.mx3fb_info*, %struct.mx3fb_info** %2, align 8
  %29 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = call i32 %27(%struct.TYPE_6__* %32)
  %34 = load %struct.mx3fb_info*, %struct.mx3fb_info** %2, align 8
  %35 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %34, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %35, align 8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = load %struct.mx3fb_info*, %struct.mx3fb_info** %2, align 8
  %39 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sdc_fb_uninit(%struct.mx3fb_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

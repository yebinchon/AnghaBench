; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedidev.h_comedi_set_hw_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedidev.h_comedi_set_hw_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.device* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.device*)* @comedi_set_hw_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comedi_set_hw_dev(%struct.comedi_device* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 0
  %7 = load %struct.device*, %struct.device** %6, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  %13 = call i32 @put_device(%struct.device* %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  store %struct.device* %15, %struct.device** %17, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  %21 = icmp ne %struct.device* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %24, align 8
  %26 = call %struct.device* @get_device(%struct.device* %25)
  %27 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load %struct.device*, %struct.device** %30, align 8
  %32 = icmp eq %struct.device* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  br label %35

35:                                               ; preds = %22, %14
  ret void
}

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local %struct.device* @get_device(%struct.device*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

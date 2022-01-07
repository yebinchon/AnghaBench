; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_asl.c_asl_qset_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_asl.c_asl_qset_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32 }
%struct.whc_qset = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.whc*, %struct.whc_qset*)* @asl_qset_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asl_qset_insert(%struct.whc* %0, %struct.whc_qset* %1) #0 {
  %3 = alloca %struct.whc*, align 8
  %4 = alloca %struct.whc_qset*, align 8
  %5 = alloca %struct.whc_qset*, align 8
  %6 = alloca %struct.whc_qset*, align 8
  store %struct.whc* %0, %struct.whc** %3, align 8
  store %struct.whc_qset* %1, %struct.whc_qset** %4, align 8
  %7 = load %struct.whc*, %struct.whc** %3, align 8
  %8 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %9 = call i32 @qset_clear(%struct.whc* %7, %struct.whc_qset* %8)
  %10 = load %struct.whc*, %struct.whc** %3, align 8
  %11 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %12 = call i32 @qset_get_next_prev(%struct.whc* %10, %struct.whc_qset* %11, %struct.whc_qset** %5, %struct.whc_qset** %6)
  %13 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %14 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %17 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @whc_qset_set_link_ptr(i32* %15, i32 %18)
  %20 = load %struct.whc_qset*, %struct.whc_qset** %6, align 8
  %21 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %24 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @whc_qset_set_link_ptr(i32* %22, i32 %25)
  %27 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %28 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  ret void
}

declare dso_local i32 @qset_clear(%struct.whc*, %struct.whc_qset*) #1

declare dso_local i32 @qset_get_next_prev(%struct.whc*, %struct.whc_qset*, %struct.whc_qset**, %struct.whc_qset**) #1

declare dso_local i32 @whc_qset_set_link_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

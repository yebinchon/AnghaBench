; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_asl.c_asl_qset_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_asl.c_asl_qset_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32, i32 }
%struct.whc_qset = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.whc*, %struct.whc_qset*)* @asl_qset_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asl_qset_remove(%struct.whc* %0, %struct.whc_qset* %1) #0 {
  %3 = alloca %struct.whc*, align 8
  %4 = alloca %struct.whc_qset*, align 8
  %5 = alloca %struct.whc_qset*, align 8
  %6 = alloca %struct.whc_qset*, align 8
  store %struct.whc* %0, %struct.whc** %3, align 8
  store %struct.whc_qset* %1, %struct.whc_qset** %4, align 8
  %7 = load %struct.whc*, %struct.whc** %3, align 8
  %8 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %9 = call i32 @qset_get_next_prev(%struct.whc* %7, %struct.whc_qset* %8, %struct.whc_qset** %6, %struct.whc_qset** %5)
  %10 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %11 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %10, i32 0, i32 4
  %12 = load %struct.whc*, %struct.whc** %3, align 8
  %13 = getelementptr inbounds %struct.whc, %struct.whc* %12, i32 0, i32 1
  %14 = call i32 @list_move(i32* %11, i32* %13)
  %15 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %16 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.whc*, %struct.whc** %3, align 8
  %18 = getelementptr inbounds %struct.whc, %struct.whc* %17, i32 0, i32 0
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %32

22:                                               ; preds = %2
  %23 = load %struct.whc_qset*, %struct.whc_qset** %5, align 8
  %24 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.whc_qset*, %struct.whc_qset** %6, align 8
  %27 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @whc_qset_set_link_ptr(i32* %25, i32 %28)
  %30 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %31 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @qset_get_next_prev(%struct.whc*, %struct.whc_qset*, %struct.whc_qset**, %struct.whc_qset**) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @whc_qset_set_link_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

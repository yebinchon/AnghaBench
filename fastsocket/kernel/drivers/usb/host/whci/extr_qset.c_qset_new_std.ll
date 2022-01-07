; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_qset_new_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_qset_new_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc_std = type { i32, i32*, %struct.urb* }
%struct.whc = type { i32 }
%struct.whc_qset = type { i32 }
%struct.urb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.whc_std* (%struct.whc*, %struct.whc_qset*, %struct.urb*, i32)* @qset_new_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.whc_std* @qset_new_std(%struct.whc* %0, %struct.whc_qset* %1, %struct.urb* %2, i32 %3) #0 {
  %5 = alloca %struct.whc_std*, align 8
  %6 = alloca %struct.whc*, align 8
  %7 = alloca %struct.whc_qset*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.whc_std*, align 8
  store %struct.whc* %0, %struct.whc** %6, align 8
  store %struct.whc_qset* %1, %struct.whc_qset** %7, align 8
  store %struct.urb* %2, %struct.urb** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call %struct.whc_std* @kzalloc(i32 24, i32 %11)
  store %struct.whc_std* %12, %struct.whc_std** %10, align 8
  %13 = load %struct.whc_std*, %struct.whc_std** %10, align 8
  %14 = icmp eq %struct.whc_std* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.whc_std* null, %struct.whc_std** %5, align 8
  br label %31

16:                                               ; preds = %4
  %17 = load %struct.urb*, %struct.urb** %8, align 8
  %18 = load %struct.whc_std*, %struct.whc_std** %10, align 8
  %19 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %18, i32 0, i32 2
  store %struct.urb* %17, %struct.urb** %19, align 8
  %20 = load %struct.whc_std*, %struct.whc_std** %10, align 8
  %21 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.whc_std*, %struct.whc_std** %10, align 8
  %23 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %22, i32 0, i32 0
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.whc_std*, %struct.whc_std** %10, align 8
  %26 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %25, i32 0, i32 0
  %27 = load %struct.whc_qset*, %struct.whc_qset** %7, align 8
  %28 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  %30 = load %struct.whc_std*, %struct.whc_std** %10, align 8
  store %struct.whc_std* %30, %struct.whc_std** %5, align 8
  br label %31

31:                                               ; preds = %16, %15
  %32 = load %struct.whc_std*, %struct.whc_std** %5, align 8
  ret %struct.whc_std* %32
}

declare dso_local %struct.whc_std* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

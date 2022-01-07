; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_phonet.c_pn_unbind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_phonet.c_pn_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32 }
%struct.usb_function = type { i32 }
%struct.f_phonet = type { i64*, i32, i64, i32 }

@phonet_rxq_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_configuration*, %struct.usb_function*)* @pn_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn_unbind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca %struct.f_phonet*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  store %struct.usb_function* %1, %struct.usb_function** %4, align 8
  %7 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %8 = call %struct.f_phonet* @func_to_pn(%struct.usb_function* %7)
  store %struct.f_phonet* %8, %struct.f_phonet** %5, align 8
  %9 = load %struct.f_phonet*, %struct.f_phonet** %5, align 8
  %10 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.f_phonet*, %struct.f_phonet** %5, align 8
  %15 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.f_phonet*, %struct.f_phonet** %5, align 8
  %18 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @usb_ep_free_request(i32 %16, i64 %19)
  br label %21

21:                                               ; preds = %13, %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @phonet_rxq_size, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load %struct.f_phonet*, %struct.f_phonet** %5, align 8
  %28 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %26
  %36 = load %struct.f_phonet*, %struct.f_phonet** %5, align 8
  %37 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.f_phonet*, %struct.f_phonet** %5, align 8
  %40 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @usb_ep_free_request(i32 %38, i64 %45)
  br label %47

47:                                               ; preds = %35, %26
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %22

51:                                               ; preds = %22
  %52 = load %struct.f_phonet*, %struct.f_phonet** %5, align 8
  %53 = call i32 @kfree(%struct.f_phonet* %52)
  ret void
}

declare dso_local %struct.f_phonet* @func_to_pn(%struct.usb_function*) #1

declare dso_local i32 @usb_ep_free_request(i32, i64) #1

declare dso_local i32 @kfree(%struct.f_phonet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

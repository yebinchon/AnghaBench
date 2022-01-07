; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_trytx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_trytx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsotg = type { i32 }
%struct.s3c_hsotg_ep = type { i32, i32, %struct.s3c_hsotg_req* }
%struct.s3c_hsotg_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"trying to write more for ep%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c_hsotg*, %struct.s3c_hsotg_ep*)* @s3c_hsotg_trytx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hsotg_trytx(%struct.s3c_hsotg* %0, %struct.s3c_hsotg_ep* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c_hsotg*, align 8
  %5 = alloca %struct.s3c_hsotg_ep*, align 8
  %6 = alloca %struct.s3c_hsotg_req*, align 8
  store %struct.s3c_hsotg* %0, %struct.s3c_hsotg** %4, align 8
  store %struct.s3c_hsotg_ep* %1, %struct.s3c_hsotg_ep** %5, align 8
  %7 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %8 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %7, i32 0, i32 2
  %9 = load %struct.s3c_hsotg_req*, %struct.s3c_hsotg_req** %8, align 8
  store %struct.s3c_hsotg_req* %9, %struct.s3c_hsotg_req** %6, align 8
  %10 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %11 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.s3c_hsotg_req*, %struct.s3c_hsotg_req** %6, align 8
  %16 = icmp ne %struct.s3c_hsotg_req* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %41

18:                                               ; preds = %14
  %19 = load %struct.s3c_hsotg_req*, %struct.s3c_hsotg_req** %6, align 8
  %20 = getelementptr inbounds %struct.s3c_hsotg_req, %struct.s3c_hsotg_req* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.s3c_hsotg_req*, %struct.s3c_hsotg_req** %6, align 8
  %24 = getelementptr inbounds %struct.s3c_hsotg_req, %struct.s3c_hsotg_req* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %22, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %18
  %29 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %30 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %33 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %37 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %38 = load %struct.s3c_hsotg_req*, %struct.s3c_hsotg_req** %6, align 8
  %39 = call i32 @s3c_hsotg_write_fifo(%struct.s3c_hsotg* %36, %struct.s3c_hsotg_ep* %37, %struct.s3c_hsotg_req* %38)
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %28, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @s3c_hsotg_write_fifo(%struct.s3c_hsotg*, %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

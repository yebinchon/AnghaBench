; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_lh7a40x_udc.c_write_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_lh7a40x_udc.c_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lh7a40x_ep = type { i64 }
%struct.lh7a40x_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"Write %d (max %d), fifo %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lh7a40x_ep*, %struct.lh7a40x_request*, i32)* @write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_packet(%struct.lh7a40x_ep* %0, %struct.lh7a40x_request* %1, i32 %2) #0 {
  %4 = alloca %struct.lh7a40x_ep*, align 8
  %5 = alloca %struct.lh7a40x_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.lh7a40x_ep* %0, %struct.lh7a40x_ep** %4, align 8
  store %struct.lh7a40x_request* %1, %struct.lh7a40x_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.lh7a40x_ep*, %struct.lh7a40x_ep** %4, align 8
  %12 = getelementptr inbounds %struct.lh7a40x_ep, %struct.lh7a40x_ep* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %10, align 8
  %15 = load %struct.lh7a40x_request*, %struct.lh7a40x_request** %5, align 8
  %16 = getelementptr inbounds %struct.lh7a40x_request, %struct.lh7a40x_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.lh7a40x_request*, %struct.lh7a40x_request** %5, align 8
  %20 = getelementptr inbounds %struct.lh7a40x_request, %struct.lh7a40x_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @prefetch(i32* %25)
  %27 = load %struct.lh7a40x_request*, %struct.lh7a40x_request** %5, align 8
  %28 = getelementptr inbounds %struct.lh7a40x_request, %struct.lh7a40x_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.lh7a40x_request*, %struct.lh7a40x_request** %5, align 8
  %32 = getelementptr inbounds %struct.lh7a40x_request, %struct.lh7a40x_request* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %30, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @min(i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.lh7a40x_request*, %struct.lh7a40x_request** %5, align 8
  %41 = getelementptr inbounds %struct.lh7a40x_request, %struct.lh7a40x_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, %39
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %54, %3
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %9, align 4
  %53 = icmp ne i32 %51, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %7, align 8
  %57 = load i32, i32* %55, align 4
  %58 = load i32*, i32** %10, align 8
  store volatile i32 %57, i32* %58, align 4
  br label %50

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DEBUG(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_read_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@UDC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.omap_req*, i32)* @read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_packet(i32* %0, %struct.omap_req* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.omap_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.omap_req* %1, %struct.omap_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %10 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %14 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %12, %16
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @min(i64 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %23 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %21
  store i64 %26, i64* %24, align 8
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = ptrtoint i32* %28 to i32
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %3
  %36 = load i32*, i32** %4, align 8
  store i32* %36, i32** %8, align 8
  br label %37

37:                                               ; preds = %40, %35
  %38 = load i32, i32* %6, align 4
  %39 = icmp uge i32 %38, 2
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* @UDC_DATA, align 4
  %42 = call i32 @omap_readw(i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub i32 %45, 2
  store i32 %46, i32* %6, align 4
  br label %37

47:                                               ; preds = %37
  %48 = load i32*, i32** %8, align 8
  store i32* %48, i32** %4, align 8
  br label %49

49:                                               ; preds = %47, %3
  br label %50

50:                                               ; preds = %54, %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, -1
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %51, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @UDC_DATA, align 4
  %56 = call i32 @omap_readb(i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  br label %50

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i32 @omap_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

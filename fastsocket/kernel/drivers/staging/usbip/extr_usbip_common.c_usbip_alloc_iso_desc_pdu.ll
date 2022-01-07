; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_alloc_iso_desc_pdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_usbip_common.c_usbip_alloc_iso_desc_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32* }
%struct.usbip_iso_packet_descriptor = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @usbip_alloc_iso_desc_pdu(%struct.urb* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usbip_iso_packet_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.urb*, %struct.urb** %4, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 %18, i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %53

24:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = getelementptr i8, i8* %30, i64 %33
  %35 = bitcast i8* %34 to %struct.usbip_iso_packet_descriptor*
  store %struct.usbip_iso_packet_descriptor* %35, %struct.usbip_iso_packet_descriptor** %7, align 8
  %36 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %7, align 8
  %37 = load %struct.urb*, %struct.urb** %4, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @usbip_pack_iso(%struct.usbip_iso_packet_descriptor* %36, i32* %42, i32 1)
  %44 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %7, align 8
  %45 = call i32 @usbip_iso_pakcet_correct_endian(%struct.usbip_iso_packet_descriptor* %44, i32 1)
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i8*, i8** %6, align 8
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %49, %23
  %54 = load i8*, i8** %3, align 8
  ret i8* %54
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usbip_pack_iso(%struct.usbip_iso_packet_descriptor*, i32*, i32) #1

declare dso_local i32 @usbip_iso_pakcet_correct_endian(%struct.usbip_iso_packet_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_bin_get_isodesc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_bin_get_isodesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_bin = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.urb = type { %struct.usb_iso_packet_descriptor* }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.mon_bin_isodesc = type { i64, i32, i32, i32 }

@CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_reader_bin*, i32, %struct.urb*, i8, i32)* @mon_bin_get_isodesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_bin_get_isodesc(%struct.mon_reader_bin* %0, i32 %1, %struct.urb* %2, i8 signext %3, i32 %4) #0 {
  %6 = alloca %struct.mon_reader_bin*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.mon_bin_isodesc*, align 8
  %12 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.mon_reader_bin* %0, %struct.mon_reader_bin** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.urb* %2, %struct.urb** %8, align 8
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  %13 = load %struct.urb*, %struct.urb** %8, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %14, align 8
  store %struct.usb_iso_packet_descriptor* %15, %struct.usb_iso_packet_descriptor** %12, align 8
  br label %16

16:                                               ; preds = %73, %5
  %17 = load i32, i32* %10, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %10, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %76

20:                                               ; preds = %16
  %21 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %6, align 8
  %22 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CHUNK_SIZE, align 4
  %26 = udiv i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @CHUNK_SIZE, align 4
  %33 = urem i32 %31, %32
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = inttoptr i64 %35 to %struct.mon_bin_isodesc*
  store %struct.mon_bin_isodesc* %36, %struct.mon_bin_isodesc** %11, align 8
  %37 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %12, align 8
  %38 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mon_bin_isodesc*, %struct.mon_bin_isodesc** %11, align 8
  %41 = getelementptr inbounds %struct.mon_bin_isodesc, %struct.mon_bin_isodesc* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %12, align 8
  %43 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mon_bin_isodesc*, %struct.mon_bin_isodesc** %11, align 8
  %46 = getelementptr inbounds %struct.mon_bin_isodesc, %struct.mon_bin_isodesc* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i8, i8* %9, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 83
  br i1 %49, label %50, label %54

50:                                               ; preds = %20
  %51 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %12, align 8
  %52 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  br label %58

54:                                               ; preds = %20
  %55 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %12, align 8
  %56 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %53, %50 ], [ %57, %54 ]
  %60 = load %struct.mon_bin_isodesc*, %struct.mon_bin_isodesc** %11, align 8
  %61 = getelementptr inbounds %struct.mon_bin_isodesc, %struct.mon_bin_isodesc* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.mon_bin_isodesc*, %struct.mon_bin_isodesc** %11, align 8
  %63 = getelementptr inbounds %struct.mon_bin_isodesc, %struct.mon_bin_isodesc* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = add i64 %65, 24
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %7, align 4
  %68 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %6, align 8
  %69 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp uge i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %58
  %74 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %12, align 8
  %75 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %74, i32 1
  store %struct.usb_iso_packet_descriptor* %75, %struct.usb_iso_packet_descriptor** %12, align 8
  br label %16

76:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

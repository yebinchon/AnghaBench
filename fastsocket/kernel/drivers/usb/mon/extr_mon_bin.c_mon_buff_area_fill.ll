; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_buff_area_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_buff_area_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_bin = type { i32 }
%struct.mon_bin_hdr = type { i8, i64 }

@PKT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_reader_bin*, i32, i32)* @mon_buff_area_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_buff_area_fill(%struct.mon_reader_bin* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mon_reader_bin*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mon_bin_hdr*, align 8
  store %struct.mon_reader_bin* %0, %struct.mon_reader_bin** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin* %8, i32 %9)
  store %struct.mon_bin_hdr* %10, %struct.mon_bin_hdr** %7, align 8
  %11 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %7, align 8
  %12 = load i64, i64* @PKT_SIZE, align 8
  %13 = call i32 @memset(%struct.mon_bin_hdr* %11, i32 0, i64 %12)
  %14 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %7, align 8
  %15 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %14, i32 0, i32 0
  store i8 64, i8* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* @PKT_SIZE, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %7, align 8
  %21 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  ret void
}

declare dso_local %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @memset(%struct.mon_bin_hdr*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

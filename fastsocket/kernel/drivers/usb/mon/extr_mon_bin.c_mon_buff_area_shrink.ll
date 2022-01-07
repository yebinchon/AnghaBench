; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_buff_area_shrink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_buff_area_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_bin = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_reader_bin*, i32)* @mon_buff_area_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_buff_area_shrink(%struct.mon_reader_bin* %0, i32 %1) #0 {
  %3 = alloca %struct.mon_reader_bin*, align 8
  %4 = alloca i32, align 4
  store %struct.mon_reader_bin* %0, %struct.mon_reader_bin** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %7 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %11 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %17 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %20 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  br label %25

25:                                               ; preds = %15, %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %3, align 8
  %28 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %29, %26
  store i32 %30, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

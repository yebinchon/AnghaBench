; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_buff_area_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_buff_area_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_bin = type { i64, i64, i32 }

@PKT_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mon_reader_bin*, i32)* @mon_buff_area_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_buff_area_alloc(%struct.mon_reader_bin* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mon_reader_bin*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mon_reader_bin* %0, %struct.mon_reader_bin** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @PKT_ALIGN, align 4
  %9 = add i32 %7, %8
  %10 = sub i32 %9, 1
  %11 = load i32, i32* @PKT_ALIGN, align 4
  %12 = sub i32 %11, 1
  %13 = xor i32 %12, -1
  %14 = and i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %16 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %22 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %58

26:                                               ; preds = %2
  %27 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %28 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %33 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %38 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = zext i32 %40 to i64
  %42 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %43 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %26
  %47 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %48 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %51 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = zext i32 %52 to i64
  %54 = sub nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  br label %56

56:                                               ; preds = %46, %26
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %25
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

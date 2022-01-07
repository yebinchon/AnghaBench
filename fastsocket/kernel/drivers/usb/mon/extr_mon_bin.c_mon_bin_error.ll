; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_bin_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_bin_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mon_reader_bin = type { i32, i32 }
%struct.mon_bin_hdr = type { i8, i64, i32, i8, i8, i32, i32, i32, i32 }

@PKT_SIZE = common dso_local global i32 0, align 4
@xfer_to_pipe = common dso_local global i32* null, align 8
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.urb*, i32)* @mon_bin_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_bin_error(i8* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mon_reader_bin*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mon_bin_hdr*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.mon_reader_bin*
  store %struct.mon_reader_bin* %12, %struct.mon_reader_bin** %7, align 8
  %13 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %7, align 8
  %14 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %13, i32 0, i32 1
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %7, align 8
  %18 = load i32, i32* @PKT_SIZE, align 4
  %19 = call i32 @mon_buff_area_alloc(%struct.mon_reader_bin* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %7, align 8
  %24 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %23, i32 0, i32 1
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %99

27:                                               ; preds = %3
  %28 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin* %28, i32 %29)
  store %struct.mon_bin_hdr* %30, %struct.mon_bin_hdr** %10, align 8
  %31 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %10, align 8
  %32 = load i32, i32* @PKT_SIZE, align 4
  %33 = call i32 @memset(%struct.mon_bin_hdr* %31, i32 0, i32 %32)
  %34 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %10, align 8
  %35 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %34, i32 0, i32 0
  store i8 69, i8* %35, align 8
  %36 = load i32*, i32** @xfer_to_pipe, align 8
  %37 = load %struct.urb*, %struct.urb** %5, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i64 @usb_endpoint_type(i32* %40)
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %10, align 8
  %45 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load %struct.urb*, %struct.urb** %5, align 8
  %47 = call i64 @usb_urb_dir_in(%struct.urb* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %27
  %50 = load i32, i32* @USB_DIR_IN, align 4
  br label %52

51:                                               ; preds = %27
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %10, align 8
  %55 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load %struct.urb*, %struct.urb** %5, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @usb_endpoint_num(i32* %59)
  %61 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %10, align 8
  %62 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.urb*, %struct.urb** %5, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %10, align 8
  %71 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load %struct.urb*, %struct.urb** %5, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %10, align 8
  %80 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.urb*, %struct.urb** %5, align 8
  %82 = ptrtoint %struct.urb* %81 to i64
  %83 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %10, align 8
  %84 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %10, align 8
  %87 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %10, align 8
  %89 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %88, i32 0, i32 3
  store i8 45, i8* %89, align 4
  %90 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %10, align 8
  %91 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %90, i32 0, i32 4
  store i8 69, i8* %91, align 1
  %92 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %7, align 8
  %93 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %92, i32 0, i32 1
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %7, align 8
  %97 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %96, i32 0, i32 0
  %98 = call i32 @wake_up(i32* %97)
  br label %99

99:                                               ; preds = %52, %22
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mon_buff_area_alloc(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @memset(%struct.mon_bin_hdr*, i32, i32) #1

declare dso_local i64 @usb_endpoint_type(i32*) #1

declare dso_local i64 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i32 @usb_endpoint_num(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

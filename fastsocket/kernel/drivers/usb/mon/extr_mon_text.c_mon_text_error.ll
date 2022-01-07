; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_text.c_mon_text_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_text.c_mon_text_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mon_reader_text = type { i64, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mon_event_text = type { i8, i64, i32, i8, i8, i32, i64, i64, i32, i32, i32, i32, i64 }

@EVENT_MAX = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.urb*, i32)* @mon_text_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_text_error(i8* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mon_reader_text*, align 8
  %8 = alloca %struct.mon_event_text*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mon_reader_text*
  store %struct.mon_reader_text* %10, %struct.mon_reader_text** %7, align 8
  %11 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %12 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EVENT_MAX, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %18 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.mon_event_text* @kmem_cache_alloc(i32 %19, i32 %20)
  store %struct.mon_event_text* %21, %struct.mon_event_text** %8, align 8
  %22 = icmp eq %struct.mon_event_text* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %16, %3
  %24 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %25 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %88

31:                                               ; preds = %16
  %32 = load %struct.mon_event_text*, %struct.mon_event_text** %8, align 8
  %33 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %32, i32 0, i32 0
  store i8 69, i8* %33, align 8
  %34 = load %struct.urb*, %struct.urb** %5, align 8
  %35 = ptrtoint %struct.urb* %34 to i64
  %36 = load %struct.mon_event_text*, %struct.mon_event_text** %8, align 8
  %37 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.mon_event_text*, %struct.mon_event_text** %8, align 8
  %39 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %38, i32 0, i32 12
  store i64 0, i64* %39, align 8
  %40 = load %struct.urb*, %struct.urb** %5, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mon_event_text*, %struct.mon_event_text** %8, align 8
  %46 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %45, i32 0, i32 11
  store i32 %44, i32* %46, align 4
  %47 = load %struct.urb*, %struct.urb** %5, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = call i32 @usb_endpoint_num(i32* %50)
  %52 = load %struct.mon_event_text*, %struct.mon_event_text** %8, align 8
  %53 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 8
  %54 = load %struct.urb*, %struct.urb** %5, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = call i32 @usb_endpoint_type(i32* %57)
  %59 = load %struct.mon_event_text*, %struct.mon_event_text** %8, align 8
  %60 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 4
  %61 = load %struct.urb*, %struct.urb** %5, align 8
  %62 = call i32 @usb_urb_dir_in(%struct.urb* %61)
  %63 = load %struct.mon_event_text*, %struct.mon_event_text** %8, align 8
  %64 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mon_event_text*, %struct.mon_event_text** %8, align 8
  %66 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %65, i32 0, i32 7
  store i64 0, i64* %66, align 8
  %67 = load %struct.mon_event_text*, %struct.mon_event_text** %8, align 8
  %68 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %67, i32 0, i32 6
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.mon_event_text*, %struct.mon_event_text** %8, align 8
  %71 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.mon_event_text*, %struct.mon_event_text** %8, align 8
  %73 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %72, i32 0, i32 3
  store i8 45, i8* %73, align 4
  %74 = load %struct.mon_event_text*, %struct.mon_event_text** %8, align 8
  %75 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %74, i32 0, i32 4
  store i8 69, i8* %75, align 1
  %76 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %77 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.mon_event_text*, %struct.mon_event_text** %8, align 8
  %81 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %80, i32 0, i32 5
  %82 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %83 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %82, i32 0, i32 2
  %84 = call i32 @list_add_tail(i32* %81, i32* %83)
  %85 = load %struct.mon_reader_text*, %struct.mon_reader_text** %7, align 8
  %86 = getelementptr inbounds %struct.mon_reader_text, %struct.mon_reader_text* %85, i32 0, i32 1
  %87 = call i32 @wake_up(i32* %86)
  br label %88

88:                                               ; preds = %31, %23
  ret void
}

declare dso_local %struct.mon_event_text* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @usb_endpoint_num(i32*) #1

declare dso_local i32 @usb_endpoint_type(i32*) #1

declare dso_local i32 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

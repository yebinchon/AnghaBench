; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_text.c_mon_text_read_intstat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_text.c_mon_text_read_intstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_text = type { i32 }
%struct.mon_text_ptr = type { i64, i64, i64 }
%struct.mon_event_text = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c" %d:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_reader_text*, %struct.mon_text_ptr*, %struct.mon_event_text*)* @mon_text_read_intstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_text_read_intstat(%struct.mon_reader_text* %0, %struct.mon_text_ptr* %1, %struct.mon_event_text* %2) #0 {
  %4 = alloca %struct.mon_reader_text*, align 8
  %5 = alloca %struct.mon_text_ptr*, align 8
  %6 = alloca %struct.mon_event_text*, align 8
  store %struct.mon_reader_text* %0, %struct.mon_reader_text** %4, align 8
  store %struct.mon_text_ptr* %1, %struct.mon_text_ptr** %5, align 8
  store %struct.mon_event_text* %2, %struct.mon_event_text** %6, align 8
  %7 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %8 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %11 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %15 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %18 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %22 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %25 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @snprintf(i64 %13, i64 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %29 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  ret void
}

declare dso_local i64 @snprintf(i64, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

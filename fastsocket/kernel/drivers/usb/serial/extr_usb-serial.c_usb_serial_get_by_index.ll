; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_usb-serial.c_usb_serial_get_by_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_usb-serial.c_usb_serial_get_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32, i32, i64 }

@table_lock = common dso_local global i32 0, align 4
@serial_table = common dso_local global %struct.usb_serial** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_serial* @usb_serial_get_by_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @mutex_lock(i32* @table_lock)
  %5 = load %struct.usb_serial**, %struct.usb_serial*** @serial_table, align 8
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.usb_serial*, %struct.usb_serial** %5, i64 %7
  %9 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  store %struct.usb_serial* %9, %struct.usb_serial** %3, align 8
  %10 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %11 = icmp ne %struct.usb_serial* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %14 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %17 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %22 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  store %struct.usb_serial* null, %struct.usb_serial** %3, align 8
  br label %28

24:                                               ; preds = %12
  %25 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %26 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %25, i32 0, i32 0
  %27 = call i32 @kref_get(i32* %26)
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %1
  %30 = call i32 @mutex_unlock(i32* @table_lock)
  %31 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  ret %struct.usb_serial* %31
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/serqt_usb2/extr_serqt_usb2.c_serial_paranoia_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/serqt_usb2/extr_serqt_usb2.c_serial_paranoia_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s - serial == NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s - serial->type == NULL!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i8*)* @serial_paranoia_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_paranoia_check(%struct.usb_serial* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca i8*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %7 = icmp ne %struct.usb_serial* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %9)
  store i32 -1, i32* %3, align 4
  br label %20

11:                                               ; preds = %2
  %12 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %13 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %3, align 4
  br label %20

19:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %16, %8
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @dbg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

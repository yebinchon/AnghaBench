; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_obex.c_obex_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_obex.c_obex_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gserial = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_obex = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"obex ttyGS%d function deactivate --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gserial*)* @obex_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obex_disconnect(%struct.gserial* %0) #0 {
  %2 = alloca %struct.gserial*, align 8
  %3 = alloca %struct.f_obex*, align 8
  %4 = alloca %struct.usb_composite_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.gserial* %0, %struct.gserial** %2, align 8
  %6 = load %struct.gserial*, %struct.gserial** %2, align 8
  %7 = call %struct.f_obex* @port_to_obex(%struct.gserial* %6)
  store %struct.f_obex* %7, %struct.f_obex** %3, align 8
  %8 = load %struct.gserial*, %struct.gserial** %2, align 8
  %9 = getelementptr inbounds %struct.gserial, %struct.gserial* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %12, align 8
  store %struct.usb_composite_dev* %13, %struct.usb_composite_dev** %4, align 8
  %14 = load %struct.f_obex*, %struct.f_obex** %3, align 8
  %15 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.gserial*, %struct.gserial** %2, align 8
  %21 = getelementptr inbounds %struct.gserial, %struct.gserial* %20, i32 0, i32 0
  %22 = call i32 @usb_function_deactivate(%struct.TYPE_4__* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %4, align 8
  %27 = load %struct.f_obex*, %struct.f_obex** %3, align 8
  %28 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @DBG(%struct.usb_composite_dev* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %18, %25, %19
  ret void
}

declare dso_local %struct.f_obex* @port_to_obex(%struct.gserial*) #1

declare dso_local i32 @usb_function_deactivate(%struct.TYPE_4__*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

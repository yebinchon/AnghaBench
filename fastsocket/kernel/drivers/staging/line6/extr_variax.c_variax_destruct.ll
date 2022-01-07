; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_variax.c_variax_destruct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_variax.c_variax_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_line6_variax = type { i32, i32, i32, %struct.usb_line6 }
%struct.usb_line6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @variax_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @variax_destruct(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_line6_variax*, align 8
  %4 = alloca %struct.usb_line6*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.usb_line6_variax* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.usb_line6_variax* %6, %struct.usb_line6_variax** %3, align 8
  %7 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %3, align 8
  %8 = icmp eq %struct.usb_line6_variax* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %3, align 8
  %12 = getelementptr inbounds %struct.usb_line6_variax, %struct.usb_line6_variax* %11, i32 0, i32 3
  store %struct.usb_line6* %12, %struct.usb_line6** %4, align 8
  %13 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %14 = icmp eq %struct.usb_line6* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %35

16:                                               ; preds = %10
  %17 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %18 = call i32 @line6_cleanup_audio(%struct.usb_line6* %17)
  %19 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %3, align 8
  %20 = getelementptr inbounds %struct.usb_line6_variax, %struct.usb_line6_variax* %19, i32 0, i32 2
  %21 = call i32 @line6_dumpreq_destructbuf(i32* %20, i32 2)
  %22 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %3, align 8
  %23 = getelementptr inbounds %struct.usb_line6_variax, %struct.usb_line6_variax* %22, i32 0, i32 2
  %24 = call i32 @line6_dumpreq_destructbuf(i32* %23, i32 1)
  %25 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %3, align 8
  %26 = getelementptr inbounds %struct.usb_line6_variax, %struct.usb_line6_variax* %25, i32 0, i32 2
  %27 = call i32 @line6_dumpreq_destruct(i32* %26)
  %28 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %3, align 8
  %29 = getelementptr inbounds %struct.usb_line6_variax, %struct.usb_line6_variax* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kfree(i32 %30)
  %32 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %3, align 8
  %33 = getelementptr inbounds %struct.usb_line6_variax, %struct.usb_line6_variax* %32, i32 0, i32 0
  %34 = call i32 @del_timer_sync(i32* %33)
  br label %35

35:                                               ; preds = %16, %15, %9
  ret void
}

declare dso_local %struct.usb_line6_variax* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @line6_cleanup_audio(%struct.usb_line6*) #1

declare dso_local i32 @line6_dumpreq_destructbuf(i32*, i32) #1

declare dso_local i32 @line6_dumpreq_destruct(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

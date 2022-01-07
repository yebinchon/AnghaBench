; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_generic.c_flush_and_resubmit_read_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_generic.c_flush_and_resubmit_read_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, i32, i32, %struct.urb* }
%struct.urb = type { i32, i64 }
%struct.tty_struct = type { i32 }

@TTY_NORMAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @flush_and_resubmit_read_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_and_resubmit_read_urb(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %8 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %7, i32 0, i32 3
  %9 = load %struct.urb*, %struct.urb** %8, align 8
  store %struct.urb* %9, %struct.urb** %3, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %11 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %10, i32 0, i32 2
  %12 = call %struct.tty_struct* @tty_port_tty_get(i32* %11)
  store %struct.tty_struct* %12, %struct.tty_struct** %4, align 8
  %13 = load %struct.urb*, %struct.urb** %3, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %5, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %18 = icmp ne %struct.tty_struct* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %69

20:                                               ; preds = %1
  %21 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %22 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %27 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.urb*, %struct.urb** %3, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @tty_insert_flip_string(%struct.tty_struct* %31, i8* %32, i32 %35)
  br label %64

37:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %58, %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.urb*, %struct.urb** %3, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @usb_serial_handle_sysrq_char(%struct.tty_struct* %45, %struct.usb_serial_port* %46, i8 signext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i8, i8* %53, align 1
  %55 = load i32, i32* @TTY_NORMAL, align 4
  %56 = call i32 @tty_insert_flip_char(%struct.tty_struct* %52, i8 signext %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  br label %38

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63, %30
  %65 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %66 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %65)
  %67 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %68 = call i32 @tty_kref_put(%struct.tty_struct* %67)
  br label %69

69:                                               ; preds = %64, %19
  %70 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %71 = load i32, i32* @GFP_ATOMIC, align 4
  %72 = call i32 @usb_serial_generic_resubmit_read_urb(%struct.usb_serial_port* %70, i32 %71)
  ret void
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_struct*, i8*, i32) #1

declare dso_local i32 @usb_serial_handle_sysrq_char(%struct.tty_struct*, %struct.usb_serial_port*, i8 signext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 signext, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @usb_serial_generic_resubmit_read_urb(%struct.usb_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

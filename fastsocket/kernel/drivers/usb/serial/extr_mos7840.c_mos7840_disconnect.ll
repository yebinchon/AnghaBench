; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7840.c_mos7840_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7840.c_mos7840_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32, i32* }
%struct.moschip_port = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c" disconnect :entering..........\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Invalid Handler\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"mos7840_port %d = %p\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Thank u :: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial*)* @mos7840_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos7840_disconnect(%struct.usb_serial* %0) #0 {
  %2 = alloca %struct.usb_serial*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.moschip_port*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %2, align 8
  %6 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %7 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %8 = icmp ne %struct.usb_serial* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %53

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %48, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %15 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %12
  %19 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %20 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.moschip_port* @mos7840_get_port_private(i32 %25)
  store %struct.moschip_port* %26, %struct.moschip_port** %5, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.moschip_port*, %struct.moschip_port** %5, align 8
  %29 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %27, %struct.moschip_port* %28)
  %30 = load %struct.moschip_port*, %struct.moschip_port** %5, align 8
  %31 = icmp ne %struct.moschip_port* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %18
  %33 = load %struct.moschip_port*, %struct.moschip_port** %5, align 8
  %34 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %33, i32 0, i32 2
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.moschip_port*, %struct.moschip_port** %5, align 8
  %38 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.moschip_port*, %struct.moschip_port** %5, align 8
  %40 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %39, i32 0, i32 2
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.moschip_port*, %struct.moschip_port** %5, align 8
  %44 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @usb_kill_urb(i32 %45)
  br label %47

47:                                               ; preds = %32, %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %12

51:                                               ; preds = %12
  %52 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %9
  ret void
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local %struct.moschip_port* @mos7840_get_port_private(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

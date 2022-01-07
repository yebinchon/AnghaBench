; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_receive_dux_commands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_receive_dux_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbduxsub = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@RETRIES = common dso_local global i32 0, align 4
@COMMAND_IN_EP = common dso_local global i32 0, align 4
@SIZEINSNBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"comedi%d: insn: USB error %d while receiving DUX command\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"comedi%d: insn: wrong data returned from firmware: want cmd %d, got cmd %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbduxsub*, i32)* @receive_dux_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_dux_commands(%struct.usbduxsub* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbduxsub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usbduxsub* %0, %struct.usbduxsub** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @EFAULT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %56, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @RETRIES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %17 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %20 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @COMMAND_IN_EP, align 4
  %23 = call i32 @usb_rcvbulkpipe(i32 %21, i32 %22)
  %24 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %25 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @SIZEINSNBUF, align 4
  %28 = call i32 @usb_bulk_msg(i32 %18, i32 %23, i32* %26, i32 %27, i32* %7, i32 1)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %15
  %32 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %33 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %37 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %79

44:                                               ; preds = %15
  %45 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %46 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %79

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %11

59:                                               ; preds = %11
  %60 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %61 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %65 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.usbduxsub*, %struct.usbduxsub** %4, align 8
  %71 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %63, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69, i32 %75)
  %77 = load i32, i32* @EFAULT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %59, %53, %31
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

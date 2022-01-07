; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7720.c_send_mos_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7720.c_send_mos_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MOS_MAX_PORT = common dso_local global i32 0, align 4
@MOSCHIP_DEVICE_ID_7715 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"serial->product== MOSCHIP_DEVICE_ID_7715\00", align 1
@MOS_WRITE = common dso_local global i64 0, align 8
@MOS_READ = common dso_local global i64 0, align 8
@MOS_WDR_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Command Write failed Value %x index %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i64, i32, i32, i8*)* @send_mos_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_mos_cmd(%struct.usb_serial* %0, i64 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.usb_serial*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %17 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le16_to_cpu(i32 %21)
  store i64 %22, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MOS_MAX_PORT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %5
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @MOSCHIP_DEVICE_ID_7715, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 %31, 256
  %33 = add nsw i32 %32, 256
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %35, 256
  %37 = add nsw i32 %36, 512
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %30
  br label %49

39:                                               ; preds = %5
  store i32 0, i32* %8, align 4
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @MOSCHIP_DEVICE_ID_7715, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 8
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43, %39
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @MOS_WRITE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i64, i64* @MOS_WRITE, align 8
  store i64 %54, i64* %7, align 8
  store i64 64, i64* %14, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %55, %58
  store i32 %59, i32* %8, align 4
  store i8* null, i8** %10, align 8
  %60 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %61 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i32 @usb_sndctrlpipe(%struct.TYPE_6__* %62, i32 0)
  store i32 %63, i32* %12, align 4
  br label %70

64:                                               ; preds = %49
  %65 = load i64, i64* @MOS_READ, align 8
  store i64 %65, i64* %7, align 8
  store i64 192, i64* %14, align 8
  store i32 1, i32* %15, align 4
  %66 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %67 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = call i32 @usb_rcvctrlpipe(%struct.TYPE_6__* %68, i32 0)
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %64, %53
  %71 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %72 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @MOS_WDR_TIMEOUT, align 4
  %82 = call i32 @usb_control_msg(%struct.TYPE_6__* %73, i32 %74, i64 %75, i64 %76, i32 %77, i32 %78, i8* %79, i32 %80, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %70
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %70
  %90 = load i32, i32* %11, align 4
  ret i32 %90
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_6__*, i32, i64, i64, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

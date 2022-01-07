; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_protocol.c_usb_stor_set_xfer_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_protocol.c_usb_stor_set_xfer_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.scatterlist = type { i32 }

@TO_XFER_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_stor_set_xfer_buf(i8* %0, i32 %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %11 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %10)
  %12 = call i32 @min(i32 %9, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %16 = load i32, i32* @TO_XFER_BUF, align 4
  %17 = call i32 @usb_stor_access_xfer_buf(i8* %13, i32 %14, %struct.scsi_cmnd* %15, %struct.scatterlist** %8, i32* %7, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %20 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %25 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %24)
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %25, %26
  %28 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %23, i32 %27)
  br label %29

29:                                               ; preds = %22, %3
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, %struct.scsi_cmnd*, %struct.scatterlist**, i32*, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

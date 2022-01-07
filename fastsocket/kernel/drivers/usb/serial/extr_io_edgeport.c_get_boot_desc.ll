; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_io_edgeport.c_get_boot_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_io_edgeport.c_get_boot_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edgeport_serial = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"getting boot descriptor\00", align 1
@EDGE_BOOT_DESC_ADDR = common dso_local global i32 0, align 4
@EDGE_BOOT_DESC_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"error in getting boot descriptor\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"**Boot Descriptor:\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"  BootCodeLength: %d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"  MajorVersion:   %d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"  MinorVersion:   %d\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"  BuildNumber:    %d\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"  Capabilities:   0x%x\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"  UConfig0:       %d\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"  UConfig1:       %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edgeport_serial*)* @get_boot_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_boot_desc(%struct.edgeport_serial* %0) #0 {
  %2 = alloca %struct.edgeport_serial*, align 8
  %3 = alloca i32, align 4
  store %struct.edgeport_serial* %0, %struct.edgeport_serial** %2, align 8
  %4 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %6 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = load i32, i32* @EDGE_BOOT_DESC_ADDR, align 4
  %9 = and i32 %8, -65536
  %10 = lshr i32 %9, 16
  %11 = load i32, i32* @EDGE_BOOT_DESC_ADDR, align 4
  %12 = and i32 %11, 65535
  %13 = load i32, i32* @EDGE_BOOT_DESC_LEN, align 4
  %14 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %15 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %14, i32 0, i32 0
  %16 = bitcast %struct.TYPE_5__* %15 to i32*
  %17 = call i32 @rom_read(%struct.TYPE_6__* %7, i32 %10, i32 %12, i32 %13, i32* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %22 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %68

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %31 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %37 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %42 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %47 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  %52 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %53 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %56)
  %58 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %59 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %61)
  %63 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %64 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %28, %20
  ret void
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @rom_read(%struct.TYPE_6__*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

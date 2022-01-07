; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i64, i32, i32, i32, %struct.u132_command* }
%struct.u132_command = type { i32, i32, i32, i32, i32, i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@COMMAND_SIZE = common dso_local global i32 0, align 4
@COMMAND_MASK = common dso_local global i64 0, align 8
@cPCIu132wr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*, i32)* @ftdi_elan_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_write_reg(%struct.usb_ftdi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ftdi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.u132_command*, align 8
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %69, %2
  %9 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %10 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %74

16:                                               ; preds = %8
  %17 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %18 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %17, i32 0, i32 3
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %21 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %24 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @COMMAND_SIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %16
  %31 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %32 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %31, i32 0, i32 4
  %33 = load %struct.u132_command*, %struct.u132_command** %32, align 8
  %34 = load i64, i64* @COMMAND_MASK, align 8
  %35 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %36 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = and i64 %34, %38
  %40 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %33, i64 %39
  store %struct.u132_command* %40, %struct.u132_command** %7, align 8
  %41 = load i32, i32* @cPCIu132wr, align 4
  %42 = or i32 0, %41
  %43 = load %struct.u132_command*, %struct.u132_command** %7, align 8
  %44 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.u132_command*, %struct.u132_command** %7, align 8
  %46 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %45, i32 0, i32 1
  store i32 4, i32* %46, align 4
  %47 = load %struct.u132_command*, %struct.u132_command** %7, align 8
  %48 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  %49 = load %struct.u132_command*, %struct.u132_command** %7, align 8
  %50 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %49, i32 0, i32 3
  store i32 0, i32* %50, align 4
  %51 = load %struct.u132_command*, %struct.u132_command** %7, align 8
  %52 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %51, i32 0, i32 4
  store i32 4, i32* %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.u132_command*, %struct.u132_command** %7, align 8
  %55 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.u132_command*, %struct.u132_command** %7, align 8
  %57 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %56, i32 0, i32 5
  %58 = load %struct.u132_command*, %struct.u132_command** %7, align 8
  %59 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %58, i32 0, i32 6
  store i32* %57, i32** %59, align 8
  %60 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %61 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %65 = call i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi* %64)
  %66 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %67 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %66, i32 0, i32 3
  %68 = call i32 @mutex_unlock(i32* %67)
  store i32 0, i32* %3, align 4
  br label %74

69:                                               ; preds = %16
  %70 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %71 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %70, i32 0, i32 3
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = call i32 @msleep(i32 100)
  br label %8

74:                                               ; preds = %30, %13
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

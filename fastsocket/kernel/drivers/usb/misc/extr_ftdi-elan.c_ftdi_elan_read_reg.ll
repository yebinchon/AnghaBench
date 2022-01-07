; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_read_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i64, i32, i32, i32, i32, i32, %struct.u132_respond*, %struct.u132_command* }
%struct.u132_respond = type { i32*, i32, i32, i32*, i32 }
%struct.u132_command = type { i32, i32, i32, i32*, i64, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@COMMAND_SIZE = common dso_local global i32 0, align 4
@RESPOND_SIZE = common dso_local global i32 0, align 4
@COMMAND_MASK = common dso_local global i64 0, align 8
@RESPOND_MASK = common dso_local global i64 0, align 8
@cPCIu132rd = common dso_local global i32 0, align 4
@cU132cmd_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*, i32*)* @ftdi_elan_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_read_reg(%struct.usb_ftdi* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ftdi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.u132_command*, align 8
  %9 = alloca %struct.u132_respond*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %11

11:                                               ; preds = %113, %2
  %12 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %13 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %118

19:                                               ; preds = %11
  %20 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %21 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %20, i32 0, i32 5
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %24 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %27 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %31 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %34 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @COMMAND_SIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %113

40:                                               ; preds = %19
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @RESPOND_SIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %113

44:                                               ; preds = %40
  %45 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %46 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %45, i32 0, i32 7
  %47 = load %struct.u132_command*, %struct.u132_command** %46, align 8
  %48 = load i64, i64* @COMMAND_MASK, align 8
  %49 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %50 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = and i64 %48, %52
  %54 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %47, i64 %53
  store %struct.u132_command* %54, %struct.u132_command** %8, align 8
  %55 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %56 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %55, i32 0, i32 6
  %57 = load %struct.u132_respond*, %struct.u132_respond** %56, align 8
  %58 = load i64, i64* @RESPOND_MASK, align 8
  %59 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %60 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = and i64 %58, %62
  %64 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %57, i64 %63
  store %struct.u132_respond* %64, %struct.u132_respond** %9, align 8
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  %67 = load %struct.u132_respond*, %struct.u132_respond** %9, align 8
  %68 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %67, i32 0, i32 0
  store i32* %10, i32** %68, align 8
  %69 = load i32, i32* @cPCIu132rd, align 4
  %70 = or i32 0, %69
  %71 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %72 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.u132_respond*, %struct.u132_respond** %9, align 8
  %74 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 8
  %75 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %76 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %75, i32 0, i32 1
  store i32 4, i32* %76, align 4
  %77 = load i32, i32* @cU132cmd_status, align 4
  %78 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %79 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load %struct.u132_respond*, %struct.u132_respond** %9, align 8
  %81 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %80, i32 0, i32 4
  store i32 %77, i32* %81, align 8
  %82 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %83 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %82, i32 0, i32 2
  store i32 0, i32* %83, align 8
  %84 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %85 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %84, i32 0, i32 5
  store i64 0, i64* %85, align 8
  %86 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %87 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %86, i32 0, i32 4
  store i64 0, i64* %87, align 8
  %88 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %89 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %88, i32 0, i32 3
  store i32* null, i32** %89, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.u132_respond*, %struct.u132_respond** %9, align 8
  %92 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %91, i32 0, i32 3
  store i32* %90, i32** %92, align 8
  %93 = load %struct.u132_respond*, %struct.u132_respond** %9, align 8
  %94 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %93, i32 0, i32 2
  %95 = call i32 @init_completion(i32* %94)
  %96 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %97 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %101 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %105 = call i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi* %104)
  %106 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %107 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %106, i32 0, i32 5
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load %struct.u132_respond*, %struct.u132_respond** %9, align 8
  %110 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %109, i32 0, i32 2
  %111 = call i32 @wait_for_completion(i32* %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %3, align 4
  br label %118

113:                                              ; preds = %40, %19
  %114 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %115 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %114, i32 0, i32 5
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = call i32 @msleep(i32 100)
  br label %11

118:                                              ; preds = %44, %16
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i64, i32, i32, i32, i32, i32, %struct.u132_respond*, %struct.u132_command* }
%struct.u132_respond = type { i32*, i32, i32, i32, i32* }
%struct.u132_command = type { i32, i32, i32, i32, i32*, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@COMMAND_SIZE = common dso_local global i32 0, align 4
@RESPOND_SIZE = common dso_local global i32 0, align 4
@COMMAND_MASK = common dso_local global i64 0, align 8
@RESPOND_MASK = common dso_local global i64 0, align 8
@cPCIcfgrd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*, i32, i32, i32*)* @ftdi_elan_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_read_config(%struct.usb_ftdi* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_ftdi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.u132_command*, align 8
  %14 = alloca %struct.u132_respond*, align 8
  %15 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sdiv i32 %16, 4
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %124, %4
  %19 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %20 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %129

26:                                               ; preds = %18
  %27 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %28 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %27, i32 0, i32 5
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %31 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %34 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %11, align 4
  %37 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %38 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %41 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @COMMAND_SIZE, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %124

47:                                               ; preds = %26
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @RESPOND_SIZE, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %124

51:                                               ; preds = %47
  %52 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %53 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %52, i32 0, i32 7
  %54 = load %struct.u132_command*, %struct.u132_command** %53, align 8
  %55 = load i64, i64* @COMMAND_MASK, align 8
  %56 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %57 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = and i64 %55, %59
  %61 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %54, i64 %60
  store %struct.u132_command* %61, %struct.u132_command** %13, align 8
  %62 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %63 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %62, i32 0, i32 6
  %64 = load %struct.u132_respond*, %struct.u132_respond** %63, align 8
  %65 = load i64, i64* @RESPOND_MASK, align 8
  %66 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %67 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = and i64 %65, %69
  %71 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %64, i64 %70
  store %struct.u132_respond* %71, %struct.u132_respond** %14, align 8
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %15, align 4
  %74 = load %struct.u132_respond*, %struct.u132_respond** %14, align 8
  %75 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %74, i32 0, i32 0
  store i32* %15, i32** %75, align 8
  %76 = load i32, i32* @cPCIcfgrd, align 4
  %77 = and i32 %76, 15
  %78 = or i32 0, %77
  %79 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %80 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.u132_respond*, %struct.u132_respond** %14, align 8
  %82 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 8
  %83 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %84 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %83, i32 0, i32 1
  store i32 4, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %87 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.u132_respond*, %struct.u132_respond** %14, align 8
  %89 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %88, i32 0, i32 2
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 15
  %92 = or i32 0, %91
  %93 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %94 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %96 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %95, i32 0, i32 6
  store i64 0, i64* %96, align 8
  %97 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %98 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %97, i32 0, i32 5
  store i64 0, i64* %98, align 8
  %99 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %100 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %99, i32 0, i32 4
  store i32* null, i32** %100, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load %struct.u132_respond*, %struct.u132_respond** %14, align 8
  %103 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %102, i32 0, i32 4
  store i32* %101, i32** %103, align 8
  %104 = load %struct.u132_respond*, %struct.u132_respond** %14, align 8
  %105 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %104, i32 0, i32 3
  %106 = call i32 @init_completion(i32* %105)
  %107 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %108 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %112 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %116 = call i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi* %115)
  %117 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %118 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %117, i32 0, i32 5
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load %struct.u132_respond*, %struct.u132_respond** %14, align 8
  %121 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %120, i32 0, i32 3
  %122 = call i32 @wait_for_completion(i32* %121)
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %5, align 4
  br label %129

124:                                              ; preds = %47, %26
  %125 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %126 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %125, i32 0, i32 5
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = call i32 @msleep(i32 100)
  br label %18

129:                                              ; preds = %51, %23
  %130 = load i32, i32* %5, align 4
  ret i32 %130
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

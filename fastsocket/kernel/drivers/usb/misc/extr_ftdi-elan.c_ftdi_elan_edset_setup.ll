; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_edset_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_edset_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i64, i64, i32, i32, i32, %struct.u132_command*, %struct.u132_target* }
%struct.u132_command = type { i32, i32, i64, i32, i32, i64, i32 }
%struct.u132_target = type { void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32, %struct.urb*, i8* }
%struct.urb = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@COMMAND_SIZE = common dso_local global i32 0, align 4
@COMMAND_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*, i64, i8*, %struct.urb*, i64, i64, i64, void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*)* @ftdi_elan_edset_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_edset_setup(%struct.usb_ftdi* %0, i64 %1, i8* %2, %struct.urb* %3, i64 %4, i64 %5, i64 %6, void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_ftdi*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.urb*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.u132_target*, align 8
  %21 = alloca %struct.u132_command*, align 8
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.urb* %3, %struct.urb** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %7, void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %17, align 8
  %22 = load i64, i64* %11, align 8
  %23 = sub i64 %22, 1
  store i64 %23, i64* %18, align 8
  br label %24

24:                                               ; preds = %130, %8
  %25 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %26 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %135

32:                                               ; preds = %24
  %33 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %34 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %135

40:                                               ; preds = %32
  %41 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %42 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %41, i32 0, i32 4
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %45 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %48 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* @COMMAND_SIZE, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %130

54:                                               ; preds = %40
  %55 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %56 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %55, i32 0, i32 6
  %57 = load %struct.u132_target*, %struct.u132_target** %56, align 8
  %58 = load i64, i64* %18, align 8
  %59 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %57, i64 %58
  store %struct.u132_target* %59, %struct.u132_target** %20, align 8
  %60 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %61 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %60, i32 0, i32 5
  %62 = load %struct.u132_command*, %struct.u132_command** %61, align 8
  %63 = load i64, i64* @COMMAND_MASK, align 8
  %64 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %65 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = and i64 %63, %67
  %69 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %62, i64 %68
  store %struct.u132_command* %69, %struct.u132_command** %21, align 8
  %70 = load i64, i64* %18, align 8
  %71 = shl i64 %70, 5
  %72 = or i64 128, %71
  %73 = trunc i64 %72 to i32
  %74 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %75 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %77 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %76, i32 0, i32 1
  store i32 32775, i32* %77, align 4
  %78 = load i64, i64* %16, align 8
  %79 = shl i64 %78, 6
  %80 = load i64, i64* %15, align 8
  %81 = shl i64 %80, 2
  %82 = or i64 %79, %81
  %83 = load i64, i64* %14, align 8
  %84 = shl i64 %83, 0
  %85 = or i64 %82, %84
  %86 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %87 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load %struct.urb*, %struct.urb** %13, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.urb*, %struct.urb** %13, align 8
  %92 = getelementptr inbounds %struct.urb, %struct.urb* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.urb*, %struct.urb** %13, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @usb_pipeout(i32 %96)
  %98 = call i32 @usb_maxpacket(i32 %90, i32 %93, i32 %97)
  %99 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %100 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 8
  %101 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %102 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %101, i32 0, i32 3
  store i32 8, i32* %102, align 8
  %103 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %104 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %103, i32 0, i32 5
  store i64 0, i64* %104, align 8
  %105 = load %struct.urb*, %struct.urb** %13, align 8
  %106 = getelementptr inbounds %struct.urb, %struct.urb* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %109 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %17, align 8
  %111 = load %struct.u132_target*, %struct.u132_target** %20, align 8
  %112 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %111, i32 0, i32 0
  store void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %110, void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %112, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load %struct.u132_target*, %struct.u132_target** %20, align 8
  %115 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load %struct.urb*, %struct.urb** %13, align 8
  %117 = load %struct.u132_target*, %struct.u132_target** %20, align 8
  %118 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %117, i32 0, i32 2
  store %struct.urb* %116, %struct.urb** %118, align 8
  %119 = load %struct.u132_target*, %struct.u132_target** %20, align 8
  %120 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %119, i32 0, i32 1
  store i32 1, i32* %120, align 8
  %121 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %122 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %126 = call i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi* %125)
  %127 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %128 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %127, i32 0, i32 4
  %129 = call i32 @mutex_unlock(i32* %128)
  store i32 0, i32* %9, align 4
  br label %135

130:                                              ; preds = %40
  %131 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %132 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %131, i32 0, i32 4
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = call i32 @msleep(i32 100)
  br label %24

135:                                              ; preds = %54, %37, %29
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

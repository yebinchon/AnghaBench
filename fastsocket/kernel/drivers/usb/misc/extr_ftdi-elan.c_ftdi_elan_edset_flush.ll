; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_edset_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_edset_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i64, i64, i32, i32, i32, %struct.u132_command*, %struct.u132_target* }
%struct.u132_command = type { i32, i32, i32, i32, i64, i64*, i64 }
%struct.u132_target = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@COMMAND_SIZE = common dso_local global i32 0, align 4
@COMMAND_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*, i64, i8*)* @ftdi_elan_edset_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_edset_flush(%struct.usb_ftdi* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ftdi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.u132_target*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.u132_command*, align 8
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = sub i64 %12, 1
  store i64 %13, i64* %8, align 8
  %14 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %15 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %116

21:                                               ; preds = %3
  %22 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %23 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %116

29:                                               ; preds = %21
  %30 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %31 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %30, i32 0, i32 6
  %32 = load %struct.u132_target*, %struct.u132_target** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %32, i64 %33
  store %struct.u132_target* %34, %struct.u132_target** %9, align 8
  %35 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %36 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %35, i32 0, i32 4
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %39 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %44 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %43, i32 0, i32 4
  %45 = call i32 @mutex_unlock(i32* %44)
  store i32 0, i32* %4, align 4
  br label %116

46:                                               ; preds = %29
  %47 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %48 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %103, %46
  %50 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %51 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %112

54:                                               ; preds = %49
  %55 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %56 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %59 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @COMMAND_SIZE, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %54
  %66 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %67 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %66, i32 0, i32 5
  %68 = load %struct.u132_command*, %struct.u132_command** %67, align 8
  %69 = load i64, i64* @COMMAND_MASK, align 8
  %70 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %71 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = and i64 %69, %73
  %75 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %68, i64 %74
  store %struct.u132_command* %75, %struct.u132_command** %11, align 8
  %76 = load i64, i64* %8, align 8
  %77 = shl i64 %76, 5
  %78 = or i64 128, %77
  %79 = or i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = load %struct.u132_command*, %struct.u132_command** %11, align 8
  %82 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.u132_command*, %struct.u132_command** %11, align 8
  %84 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  %85 = load %struct.u132_command*, %struct.u132_command** %11, align 8
  %86 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %85, i32 0, i32 2
  store i32 0, i32* %86, align 8
  %87 = load %struct.u132_command*, %struct.u132_command** %11, align 8
  %88 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %87, i32 0, i32 3
  store i32 0, i32* %88, align 4
  %89 = load %struct.u132_command*, %struct.u132_command** %11, align 8
  %90 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %89, i32 0, i32 6
  store i64 0, i64* %90, align 8
  %91 = load %struct.u132_command*, %struct.u132_command** %11, align 8
  %92 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = load %struct.u132_command*, %struct.u132_command** %11, align 8
  %94 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %93, i32 0, i32 4
  %95 = load %struct.u132_command*, %struct.u132_command** %11, align 8
  %96 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %95, i32 0, i32 5
  store i64* %94, i64** %96, align 8
  %97 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %98 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %102 = call i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi* %101)
  br label %111

103:                                              ; preds = %54
  %104 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %105 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %104, i32 0, i32 4
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = call i32 @msleep(i32 100)
  %108 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %109 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %108, i32 0, i32 4
  %110 = call i32 @mutex_lock(i32* %109)
  br label %49

111:                                              ; preds = %65
  br label %112

112:                                              ; preds = %111, %49
  %113 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %114 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %113, i32 0, i32 4
  %115 = call i32 @mutex_unlock(i32* %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %112, %42, %26, %18
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

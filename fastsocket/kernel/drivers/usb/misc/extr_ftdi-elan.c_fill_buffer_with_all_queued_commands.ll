; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_fill_buffer_with_all_queued_commands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_fill_buffer_with_all_queued_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32, %struct.u132_command* }
%struct.u132_command = type { i32, i32, i32, i8, i8, i32* }

@COMMAND_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*, i8*, i32, i32)* @fill_buffer_with_all_queued_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_buffer_with_all_queued_commands(%struct.usb_ftdi* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.usb_ftdi*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.u132_command*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %18 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %116, %4
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %11, align 4
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %24, label %117

24:                                               ; preds = %20
  %25 = load %struct.usb_ftdi*, %struct.usb_ftdi** %5, align 8
  %26 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %25, i32 0, i32 1
  %27 = load %struct.u132_command*, %struct.u132_command** %26, align 8
  %28 = load i64, i64* @COMMAND_MASK, align 8
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %12, align 4
  %31 = sext i32 %29 to i64
  %32 = and i64 %28, %31
  %33 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %27, i64 %32
  store %struct.u132_command* %33, %struct.u132_command** %13, align 8
  %34 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %35 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %14, align 4
  %37 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %38 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %15, align 8
  %40 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %41 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %24
  %46 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %47 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 5
  %50 = and i32 3, %49
  %51 = shl i32 1, %50
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %45, %24
  %55 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %56 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 %58, i8* %63, align 1
  %64 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %65 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 0
  %68 = and i32 %67, 255
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 %69, i8* %74, align 1
  %75 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %76 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 8
  %79 = and i32 %78, 255
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  store i8 %80, i8* %85, align 1
  %86 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %87 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %86, i32 0, i32 3
  %88 = load i8, i8* %87, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8 %88, i8* %93, align 1
  %94 = load %struct.u132_command*, %struct.u132_command** %13, align 8
  %95 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %94, i32 0, i32 4
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 %96, i8* %101, align 1
  br label %102

102:                                              ; preds = %106, %54
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %14, align 4
  %105 = icmp sgt i32 %103, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load i32*, i32** %15, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %15, align 8
  %109 = load i32, i32* %107, align 4
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  store i8 %110, i8* %115, align 1
  br label %102

116:                                              ; preds = %102
  br label %20

117:                                              ; preds = %20
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

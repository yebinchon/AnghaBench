; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_audio.c_line6_init_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_audio.c_line6_init_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, %struct.TYPE_2__*, %struct.snd_card* }
%struct.TYPE_2__ = type { i8* }
%struct.snd_card = type { i32, i32, i32 }

@line6_init_audio.dev = internal global i32 0, align 4
@line6_index = common dso_local global i32* null, align 8
@line6_id = common dso_local global i32* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"Line6-USB\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Line6 %s at USB %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_init_audio(%struct.usb_line6* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_line6*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_line6* %0, %struct.usb_line6** %3, align 8
  %6 = load i32*, i32** @line6_index, align 8
  %7 = load i32, i32* @line6_init_audio.dev, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** @line6_id, align 8
  %12 = load i32, i32* @line6_init_audio.dev, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @THIS_MODULE, align 4
  %17 = call i32 @snd_card_create(i32 %10, i32 %15, i32 %16, i32 0, %struct.snd_card** %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %48

22:                                               ; preds = %1
  %23 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %24 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %25 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %24, i32 0, i32 2
  store %struct.snd_card* %23, %struct.snd_card** %25, align 8
  %26 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %27 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** @DRIVER_NAME, align 8
  %30 = call i32 @strcpy(i32 %28, i8* %29)
  %31 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %32 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcpy(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %36 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %39 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %44 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @dev_name(i32 %45)
  %47 = call i32 @sprintf(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %22, %20
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @snd_card_create(i32, i32, i32, i32, %struct.snd_card**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

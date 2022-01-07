; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbsevseg.c_update_display_visual.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbsevseg.c_update_display_visual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_sevsegdev = type { i32, i32, i8*, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"write retval = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"decimal retval = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_sevsegdev*, i32)* @update_display_visual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_display_visual(%struct.usb_sevsegdev* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_sevsegdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_sevsegdev* %0, %struct.usb_sevsegdev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %10 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %121

14:                                               ; preds = %2
  %15 = load i32, i32* @MAXLEN, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %22 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %21, i32 0, i32 5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %121

26:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %30 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %35 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %38 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %36, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 %45, i8* %49, align 1
  br label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %27

53:                                               ; preds = %27
  %54 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %55 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %54, i32 0, i32 5
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %58 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %57, i32 0, i32 5
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %59, i32 0)
  %61 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %62 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 0, %63
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %67 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usb_control_msg(%struct.TYPE_3__* %56, i32 %60, i32 18, i32 72, i32 21770, i32 %64, i8* %65, i32 %68, i32 2000)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %53
  %73 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %74 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %73, i32 0, i32 5
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %72, %53
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @kfree(i8* %80)
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %98, %79
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ult i64 %84, 8
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %88 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %6, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %82

101:                                              ; preds = %82
  %102 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %103 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %102, i32 0, i32 5
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %106 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %105, i32 0, i32 5
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %107, i32 0)
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 0, %109
  %111 = call i32 @usb_control_msg(%struct.TYPE_3__* %104, i32 %108, i32 18, i32 72, i32 22026, i32 %110, i8* null, i32 0, i32 2000)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %101
  %115 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %116 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %115, i32 0, i32 5
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @dev_dbg(i32* %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %13, %20, %114, %101
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

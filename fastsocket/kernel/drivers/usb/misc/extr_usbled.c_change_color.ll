; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbled.c_change_color.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbled.c_change_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_led = type { %struct.TYPE_3__*, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@BLUE = common dso_local global i8 0, align 1
@RED = common dso_local global i8 0, align 1
@GREEN = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"blue = %d, red = %d, green = %d, color = %.2x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"retval = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_led*)* @change_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_color(%struct.usb_led* %0) #0 {
  %2 = alloca %struct.usb_led*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store %struct.usb_led* %0, %struct.usb_led** %2, align 8
  store i8 7, i8* %4, align 1
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kmalloc(i32 8, i32 %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.usb_led*, %struct.usb_led** %2, align 8
  %12 = getelementptr inbounds %struct.usb_led, %struct.usb_led* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %97

16:                                               ; preds = %1
  %17 = load %struct.usb_led*, %struct.usb_led** %2, align 8
  %18 = getelementptr inbounds %struct.usb_led, %struct.usb_led* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i8, i8* @BLUE, align 1
  %23 = zext i8 %22 to i32
  %24 = xor i32 %23, -1
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %4, align 1
  br label %29

29:                                               ; preds = %21, %16
  %30 = load %struct.usb_led*, %struct.usb_led** %2, align 8
  %31 = getelementptr inbounds %struct.usb_led, %struct.usb_led* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i8, i8* @RED, align 1
  %36 = zext i8 %35 to i32
  %37 = xor i32 %36, -1
  %38 = load i8, i8* %4, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %4, align 1
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.usb_led*, %struct.usb_led** %2, align 8
  %44 = getelementptr inbounds %struct.usb_led, %struct.usb_led* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i8, i8* @GREEN, align 1
  %49 = zext i8 %48 to i32
  %50 = xor i32 %49, -1
  %51 = load i8, i8* %4, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %4, align 1
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.usb_led*, %struct.usb_led** %2, align 8
  %57 = getelementptr inbounds %struct.usb_led, %struct.usb_led* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.usb_led*, %struct.usb_led** %2, align 8
  %61 = getelementptr inbounds %struct.usb_led, %struct.usb_led* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.usb_led*, %struct.usb_led** %2, align 8
  %65 = getelementptr inbounds %struct.usb_led, %struct.usb_led* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.usb_led*, %struct.usb_led** %2, align 8
  %68 = getelementptr inbounds %struct.usb_led, %struct.usb_led* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i8, i8* %4, align 1
  %71 = zext i8 %70 to i32
  %72 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %63, i64 %66, i64 %69, i32 %71)
  %73 = load %struct.usb_led*, %struct.usb_led** %2, align 8
  %74 = getelementptr inbounds %struct.usb_led, %struct.usb_led* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load %struct.usb_led*, %struct.usb_led** %2, align 8
  %77 = getelementptr inbounds %struct.usb_led, %struct.usb_led* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %78, i32 0)
  %80 = load i8, i8* %4, align 1
  %81 = zext i8 %80 to i32
  %82 = add nsw i32 0, %81
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @usb_control_msg(%struct.TYPE_3__* %75, i32 %79, i32 18, i32 200, i32 522, i32 %82, i8* %83, i32 8, i32 2000)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %55
  %88 = load %struct.usb_led*, %struct.usb_led** %2, align 8
  %89 = getelementptr inbounds %struct.usb_led, %struct.usb_led* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %3, align 4
  %93 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %87, %55
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @kfree(i8* %95)
  br label %97

97:                                               ; preds = %94, %10
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

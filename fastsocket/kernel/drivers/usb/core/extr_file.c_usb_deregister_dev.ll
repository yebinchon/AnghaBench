; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_file.c_usb_deregister_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_file.c_usb_deregister_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { i32, i32* }
%struct.usb_class_driver = type { i32, i8* }

@.str = private unnamed_addr constant [18 x i8] c"removing %d minor\00", align 1
@minor_rwsem = common dso_local global i32 0, align 4
@usb_minors = common dso_local global i32** null, align 8
@usb_class = common dso_local global %struct.TYPE_2__* null, align 8
@USB_MAJOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_deregister_dev(%struct.usb_interface* %0, %struct.usb_class_driver* %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_class_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [20 x i8], align 16
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store %struct.usb_class_driver* %1, %struct.usb_class_driver** %4, align 8
  %7 = load %struct.usb_class_driver*, %struct.usb_class_driver** %4, align 8
  %8 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %54

15:                                               ; preds = %2
  %16 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @down_write(i32* @minor_rwsem)
  %21 = load i32**, i32*** @usb_minors, align 8
  %22 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %21, i64 %25
  store i32* null, i32** %26, align 8
  %27 = call i32 @up_write(i32* @minor_rwsem)
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %29 = load %struct.usb_class_driver*, %struct.usb_class_driver** %4, align 8
  %30 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %33 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = call i32 @snprintf(i8* %28, i32 20, i8* %31, i64 %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_class, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @USB_MAJOR, align 4
  %43 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %44 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = call i32 @MKDEV(i32 %42, i64 %46)
  %48 = call i32 @device_destroy(i32 %41, i32 %47)
  %49 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %50 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %52 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = call i32 (...) @destroy_usb_class()
  br label %54

54:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @destroy_usb_class(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

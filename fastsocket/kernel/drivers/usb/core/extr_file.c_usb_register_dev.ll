; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_file.c_usb_register_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_file.c_usb_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { i32, i32, i32 }
%struct.usb_class_driver = type { i32, i8*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"looking for a minor, starting at %d\00", align 1
@minor_rwsem = common dso_local global i32 0, align 4
@MAX_USB_MINORS = common dso_local global i32 0, align 4
@usb_minors = common dso_local global i32** null, align 8
@usb_class = common dso_local global %struct.TYPE_2__* null, align 8
@USB_MAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_register_dev(%struct.usb_interface* %0, %struct.usb_class_driver* %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_class_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [20 x i8], align 16
  %9 = alloca i8*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store %struct.usb_class_driver* %1, %struct.usb_class_driver** %4, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.usb_class_driver*, %struct.usb_class_driver** %4, align 8
  %13 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.usb_class_driver*, %struct.usb_class_driver** %4, align 8
  %20 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %120

24:                                               ; preds = %2
  %25 = call i32 @down_write(i32* @minor_rwsem)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %47, %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MAX_USB_MINORS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i32**, i32*** @usb_minors, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %47

39:                                               ; preds = %31
  %40 = load %struct.usb_class_driver*, %struct.usb_class_driver** %4, align 8
  %41 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32**, i32*** @usb_minors, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* %42, i32** %46, align 8
  store i32 0, i32* %5, align 4
  br label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %27

50:                                               ; preds = %39, %27
  %51 = call i32 @up_write(i32* @minor_rwsem)
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %120

55:                                               ; preds = %50
  %56 = call i32 (...) @init_usb_class()
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %120

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %63 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %65 = load %struct.usb_class_driver*, %struct.usb_class_driver** %4, align 8
  %66 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 @snprintf(i8* %64, i32 20, i8* %67, i32 %70)
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %73 = call i8* @strrchr(i8* %72, i8 signext 47)
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %60
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  br label %87

85:                                               ; preds = %76, %60
  %86 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  store i8* %86, i8** %9, align 8
  br label %87

87:                                               ; preds = %85, %82
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_class, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %92 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %91, i32 0, i32 2
  %93 = load i32, i32* @USB_MAJOR, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @MKDEV(i32 %93, i32 %94)
  %96 = load %struct.usb_class_driver*, %struct.usb_class_driver** %4, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @device_create(i32 %90, i32* %92, i32 %95, %struct.usb_class_driver* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %97)
  %99 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %100 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %102 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @IS_ERR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %87
  %107 = call i32 @down_write(i32* @minor_rwsem)
  %108 = load i32**, i32*** @usb_minors, align 8
  %109 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %110 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %108, i64 %112
  store i32* null, i32** %113, align 8
  %114 = call i32 @up_write(i32* @minor_rwsem)
  %115 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %116 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @PTR_ERR(i32 %117)
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %106, %87
  br label %120

120:                                              ; preds = %119, %59, %54, %23
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @init_usb_class(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @device_create(i32, i32*, i32, %struct.usb_class_driver*, i8*, i8*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

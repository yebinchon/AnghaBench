; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_interface_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_interface_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface_cache = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_interface_descriptor }
%struct.usb_interface_descriptor = type { i32, i32, i32, i32, i32, i32 }
%struct.usb_interface = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.usb_interface_descriptor }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@format_iface = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.usb_interface_cache*, %struct.usb_interface*, i32)* @usb_dump_interface_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usb_dump_interface_descriptor(i8* %0, i8* %1, %struct.usb_interface_cache* %2, %struct.usb_interface* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.usb_interface_cache*, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_interface_descriptor*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.usb_interface_cache* %2, %struct.usb_interface_cache** %9, align 8
  store %struct.usb_interface* %3, %struct.usb_interface** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ugt i8* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %6, align 8
  br label %89

20:                                               ; preds = %5
  %21 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %9, align 8
  %22 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.usb_interface_descriptor* %27, %struct.usb_interface_descriptor** %12, align 8
  %28 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %29 = icmp ne %struct.usb_interface* %28, null
  br i1 %29, label %30, label %53

30:                                               ; preds = %20
  %31 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %36
  %45 = phi i8* [ %42, %36 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %43 ]
  store i8* %45, i8** %13, align 8
  %46 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %12, align 8
  %47 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %48 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = icmp eq %struct.usb_interface_descriptor* %46, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %44, %20
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** @format_iface, align 8
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 42, i32 32
  %60 = trunc i32 %59 to i8
  %61 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %12, align 8
  %62 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %12, align 8
  %65 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %12, align 8
  %68 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %12, align 8
  %71 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %12, align 8
  %74 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @class_decode(i32 %75)
  %77 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %12, align 8
  %78 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %12, align 8
  %81 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @sprintf(i8* %54, i8* %55, i8 signext %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %76, i32 %79, i32 %82, i8* %83)
  %85 = load i8*, i8** %7, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  store i8* %88, i8** %6, align 8
  br label %89

89:                                               ; preds = %53, %18
  %90 = load i8*, i8** %6, align 8
  ret i8* %90
}

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @class_decode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

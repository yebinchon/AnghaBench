; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_disable_iso_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_disable_iso_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ua101 = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@DISCONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"interface reset failed; error %d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ua101*, i32)* @disable_iso_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_iso_interface(%struct.ua101* %0, i32 %1) #0 {
  %3 = alloca %struct.ua101*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca i32, align 4
  store %struct.ua101* %0, %struct.ua101** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ua101*, %struct.ua101** %3, align 8
  %8 = getelementptr inbounds %struct.ua101, %struct.ua101* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %9, i64 %11
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.ua101*, %struct.ua101** %3, align 8
  %18 = getelementptr inbounds %struct.ua101, %struct.ua101* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %19, i64 %21
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.usb_host_interface*, %struct.usb_host_interface** %24, align 8
  store %struct.usb_host_interface* %25, %struct.usb_host_interface** %5, align 8
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %27 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %16
  %32 = load %struct.ua101*, %struct.ua101** %3, align 8
  %33 = getelementptr inbounds %struct.ua101, %struct.ua101* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %36 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @usb_set_interface(%struct.TYPE_6__* %34, i32 %38, i32 0)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %31
  %43 = load i32, i32* @DISCONNECTED, align 4
  %44 = load %struct.ua101*, %struct.ua101** %3, align 8
  %45 = getelementptr inbounds %struct.ua101, %struct.ua101* %44, i32 0, i32 1
  %46 = call i32 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %42
  %49 = load %struct.ua101*, %struct.ua101** %3, align 8
  %50 = getelementptr inbounds %struct.ua101, %struct.ua101* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @usb_error_string(i32 %54)
  %56 = call i32 @dev_warn(i32* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %48, %42, %31
  br label %58

58:                                               ; preds = %15, %57, %16
  ret void
}

declare dso_local i32 @usb_set_interface(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @usb_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

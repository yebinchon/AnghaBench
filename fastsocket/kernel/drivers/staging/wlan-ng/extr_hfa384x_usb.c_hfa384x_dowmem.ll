; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_dowmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_dowmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i8*, i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [34 x i8] c"page=0x%04x offset=0x%04x len=%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HFA384x_USB_WMEMREQ = common dso_local global i32 0, align 4
@DOWAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32, i8*, i32, i32, i32, i8*)* @hfa384x_dowmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfa384x_dowmem(i32* %0, i64 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = call %struct.TYPE_12__* (...) @usbctlx_alloc()
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %20, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %29 = icmp eq %struct.TYPE_12__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %9
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %19, align 4
  br label %109

33:                                               ; preds = %9
  %34 = load i32, i32* @HFA384x_USB_WMEMREQ, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 4
  store i8* %35, i8** %39, align 8
  %40 = load i32, i32* %15, align 4
  %41 = zext i32 %40 to i64
  %42 = add i64 16, %41
  %43 = trunc i64 %42 to i32
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  store i8* %44, i8** %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  store i8* %50, i8** %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i8* %56, i8** %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @memcpy(i32 %65, i8* %66, i32 %67)
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = add i64 32, %70
  %72 = trunc i64 %71 to i32
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 5
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** %18, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %89 = call i32 @hfa384x_usbctlx_submit(i32* %87, %struct.TYPE_12__* %88)
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %33
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %94 = call i32 @kfree(%struct.TYPE_12__* %93)
  br label %108

95:                                               ; preds = %33
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* @DOWAIT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i32*, i32** %10, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = call i32 @init_wmem_completor(i32* %21, i32* %104, i32* %22)
  %106 = call i32 @hfa384x_usbctlx_complete_sync(i32* %100, %struct.TYPE_12__* %101, i32 %105)
  store i32 %106, i32* %19, align 4
  br label %107

107:                                              ; preds = %99, %95
  br label %108

108:                                              ; preds = %107, %92
  br label %109

109:                                              ; preds = %108, %30
  %110 = load i32, i32* %19, align 4
  ret i32 %110
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @usbctlx_alloc(...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @hfa384x_usbctlx_submit(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

declare dso_local i32 @hfa384x_usbctlx_complete_sync(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @init_wmem_completor(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

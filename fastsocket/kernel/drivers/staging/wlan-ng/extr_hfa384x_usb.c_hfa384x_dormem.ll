; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_dormem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_dormem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i8*, i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@HFA384x_USB_RMEMREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"type=0x%04x frmlen=%d offset=0x%04x page=0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"pktsize=%zd\0A\00", align 1
@DOWAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32, i8*, i32, i32, i32, i8*)* @hfa384x_dormem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfa384x_dormem(i32* %0, i64 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i8* %8) #0 {
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
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  %22 = call %struct.TYPE_12__* (...) @usbctlx_alloc()
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %20, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %24 = icmp eq %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %9
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %19, align 4
  br label %118

28:                                               ; preds = %9
  %29 = load i32, i32* @HFA384x_USB_RMEMREQ, align 4
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* %15, align 4
  %36 = zext i32 %35 to i64
  %37 = add i64 16, %36
  %38 = trunc i64 %37 to i32
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  store i8* %39, i8** %43, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i8* %45, i8** %49, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i8* %51, i8** %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 32, i32* %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %63, i8* %68, i8* %73, i8* %78)
  %80 = call i32 @ROUNDUP64(i32 32)
  %81 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 5
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** %18, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %96 = call i32 @hfa384x_usbctlx_submit(i32* %94, %struct.TYPE_12__* %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %28
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %101 = call i32 @kfree(%struct.TYPE_12__* %100)
  br label %117

102:                                              ; preds = %28
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* @DOWAIT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load i32*, i32** %10, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i8*, i8** %14, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @init_rmem_completor(i32* %21, i32* %111, i8* %112, i32 %113)
  %115 = call i32 @hfa384x_usbctlx_complete_sync(i32* %107, %struct.TYPE_12__* %108, i32 %114)
  store i32 %115, i32* %19, align 4
  br label %116

116:                                              ; preds = %106, %102
  br label %117

117:                                              ; preds = %116, %99
  br label %118

118:                                              ; preds = %117, %25
  %119 = load i32, i32* %19, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_12__* @usbctlx_alloc(...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ROUNDUP64(i32) #1

declare dso_local i32 @hfa384x_usbctlx_submit(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

declare dso_local i32 @hfa384x_usbctlx_complete_sync(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @init_rmem_completor(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

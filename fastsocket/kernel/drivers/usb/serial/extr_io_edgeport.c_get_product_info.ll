; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_io_edgeport.c_get_product_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_io_edgeport.c_get_product_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edgeport_serial = type { %struct.TYPE_10__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.edgeport_product_info }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.edgeport_product_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@ION_DEVICE_ID_80251_NETCHIP = common dso_local global i32 0, align 4
@EDGE_DOWNLOAD_FILE_80251 = common dso_local global i32 0, align 4
@EDGE_DOWNLOAD_FILE_I930 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edgeport_serial*)* @get_product_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_product_info(%struct.edgeport_serial* %0) #0 {
  %2 = alloca %struct.edgeport_serial*, align 8
  %3 = alloca %struct.edgeport_product_info*, align 8
  store %struct.edgeport_serial* %0, %struct.edgeport_serial** %2, align 8
  %4 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %5 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %4, i32 0, i32 3
  store %struct.edgeport_product_info* %5, %struct.edgeport_product_info** %3, align 8
  %6 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %7 = call i32 @memset(%struct.edgeport_product_info* %6, i32 0, i32 80)
  %8 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %9 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = load i32, i32* @ION_DEVICE_ID_80251_NETCHIP, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = sext i32 %19 to i64
  %21 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %22 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %21, i32 0, i32 3
  store i64 %20, i64* %22, align 8
  %23 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %24 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %28 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %27, i32 0, i32 14
  store i32 %26, i32* %28, align 8
  %29 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %30 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %29, i32 0, i32 13
  store i64 0, i64* %30, align 8
  %31 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %32 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %36 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 8
  %37 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %38 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %42 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %41, i32 0, i32 11
  store i32 %40, i32* %42, align 4
  %43 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %44 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %48 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %47, i32 0, i32 10
  store i32 %46, i32* %48, align 8
  %49 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %50 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %54 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 4
  %55 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %56 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %60 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 8
  %61 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %62 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %66 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %68 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %72 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %74 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %77 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @memcpy(i32 %75, i32 %79, i32 4)
  %81 = load %struct.edgeport_serial*, %struct.edgeport_serial** %2, align 8
  %82 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = load i32, i32* @ION_DEVICE_ID_80251_NETCHIP, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %1
  %94 = load i32, i32* @EDGE_DOWNLOAD_FILE_80251, align 4
  %95 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %96 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  br label %101

97:                                               ; preds = %1
  %98 = load i32, i32* @EDGE_DOWNLOAD_FILE_I930, align 4
  %99 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %100 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %93
  %102 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %103 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @DEVICE_ID_FROM_USB_PRODUCT_ID(i64 %104)
  switch i32 %105, label %117 [
    i32 128, label %106
    i32 133, label %106
    i32 136, label %106
    i32 140, label %106
    i32 129, label %106
    i32 131, label %106
    i32 135, label %106
    i32 139, label %106
    i32 137, label %106
    i32 132, label %106
    i32 141, label %106
    i32 138, label %109
    i32 130, label %114
    i32 134, label %114
  ]

106:                                              ; preds = %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101
  %107 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %108 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  br label %117

109:                                              ; preds = %101
  %110 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %111 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %113 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %112, i32 0, i32 2
  store i32 1, i32* %113, align 8
  br label %117

114:                                              ; preds = %101, %101
  %115 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %116 = getelementptr inbounds %struct.edgeport_product_info, %struct.edgeport_product_info* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %101, %114, %109, %106
  %118 = load %struct.edgeport_product_info*, %struct.edgeport_product_info** %3, align 8
  %119 = call i32 @dump_product_info(%struct.edgeport_product_info* %118)
  ret void
}

declare dso_local i32 @memset(%struct.edgeport_product_info*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @DEVICE_ID_FROM_USB_PRODUCT_ID(i64) #1

declare dso_local i32 @dump_product_info(%struct.edgeport_product_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

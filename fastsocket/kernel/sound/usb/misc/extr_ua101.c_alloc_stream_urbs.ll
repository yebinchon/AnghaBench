; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_alloc_stream_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_alloc_stream_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ua101 = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ua101_stream = type { i32, i32, %struct.ua101_urb**, i32, %struct.TYPE_8__* }
%struct.ua101_urb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, void (%struct.urb*)*, %struct.TYPE_5__*, %struct.ua101*, i32*, i32, %struct.TYPE_6__* }
%struct.urb = type opaque
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.urb.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"internal buffer size error\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ua101*, %struct.ua101_stream*, void (%struct.urb.0*)*)* @alloc_stream_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_stream_urbs(%struct.ua101* %0, %struct.ua101_stream* %1, void (%struct.urb.0*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ua101*, align 8
  %6 = alloca %struct.ua101_stream*, align 8
  %7 = alloca void (%struct.urb.0*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ua101_urb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.ua101* %0, %struct.ua101** %5, align 8
  store %struct.ua101_stream* %1, %struct.ua101_stream** %6, align 8
  store void (%struct.urb.0*)* %2, void (%struct.urb.0*)** %7, align 8
  %15 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %16 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %150, %3
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %21 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %20, i32 0, i32 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %22)
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %153

25:                                               ; preds = %18
  %26 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %27 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %26, i32 0, i32 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  %34 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %35 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %13, align 8
  %42 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %43 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %42, i32 0, i32 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %69, %25
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp uge i32 %51, %52
  br i1 %53, label %54, label %149

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %57 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp uge i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %161

61:                                               ; preds = %54
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.ua101_urb* @kmalloc(i32 72, i32 %62)
  store %struct.ua101_urb* %63, %struct.ua101_urb** %9, align 8
  %64 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %65 = icmp ne %struct.ua101_urb* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %169

69:                                               ; preds = %61
  %70 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %71 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %70, i32 0, i32 0
  %72 = call i32 @usb_init_urb(%struct.TYPE_7__* %71)
  %73 = load %struct.ua101*, %struct.ua101** %5, align 8
  %74 = getelementptr inbounds %struct.ua101, %struct.ua101* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %77 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 10
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %78, align 8
  %79 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %80 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %83 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 9
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @URB_ISO_ASAP, align 4
  %86 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %89 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %93 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 8
  store i32* %91, i32** %94, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %97 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %101 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 8
  %103 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %104 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  store i32 1, i32* %105, align 4
  %106 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %107 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  store i32 1, i32* %108, align 8
  %109 = load %struct.ua101*, %struct.ua101** %5, align 8
  %110 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %111 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 7
  store %struct.ua101* %109, %struct.ua101** %112, align 8
  %113 = load void (%struct.urb.0*)*, void (%struct.urb.0*)** %7, align 8
  %114 = bitcast void (%struct.urb.0*)* %113 to void (%struct.urb*)*
  %115 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %116 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 5
  store void (%struct.urb*)* %114, void (%struct.urb*)** %117, align 8
  %118 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %119 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %126 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 6
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32 %124, i32* %130, align 8
  %131 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %132 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %133 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %132, i32 0, i32 2
  %134 = load %struct.ua101_urb**, %struct.ua101_urb*** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %11, align 4
  %137 = zext i32 %135 to i64
  %138 = getelementptr inbounds %struct.ua101_urb*, %struct.ua101_urb** %134, i64 %137
  store %struct.ua101_urb* %131, %struct.ua101_urb** %138, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %12, align 4
  %141 = sub i32 %140, %139
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32*, i32** %13, align 8
  %144 = zext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %13, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %14, align 4
  %148 = add i32 %147, %146
  store i32 %148, i32* %14, align 4
  br label %50

149:                                              ; preds = %50
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %10, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %18

153:                                              ; preds = %18
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %156 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %154, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %169

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %60
  %162 = load %struct.ua101*, %struct.ua101** %5, align 8
  %163 = getelementptr inbounds %struct.ua101, %struct.ua101* %162, i32 0, i32 0
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = call i32 @dev_err(i32* %165, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %167 = load i32, i32* @ENXIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %161, %159, %66
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local %struct.ua101_urb* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_init_urb(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

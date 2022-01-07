; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_sync_ep_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_sync_ep_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i32, i32, i32, i64, i64, %struct.snd_urb_ctx*, %struct.TYPE_3__* }
%struct.snd_urb_ctx = type { i32, i32, %struct.TYPE_4__*, %struct.snd_usb_endpoint* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.snd_urb_ctx*, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.audioformat = type { i32 }

@SYNC_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@snd_complete_urb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_endpoint*, %struct.audioformat*)* @sync_ep_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_ep_set_params(%struct.snd_usb_endpoint* %0, %struct.audioformat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_endpoint*, align 8
  %5 = alloca %struct.audioformat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_urb_ctx*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %4, align 8
  store %struct.audioformat* %1, %struct.audioformat** %5, align 8
  %8 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %9 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %8, i32 0, i32 6
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SYNC_URBS, align 4
  %14 = mul nsw i32 %13, 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %17 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %16, i32 0, i32 3
  %18 = call i64 @usb_buffer_alloc(i32 %12, i32 %14, i32 %15, i64* %17)
  %19 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %20 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %19, i32 0, i32 4
  store i64 %18, i64* %20, align 8
  %21 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %22 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %132

28:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %120, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SYNC_URBS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %123

33:                                               ; preds = %29
  %34 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %35 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %34, i32 0, i32 5
  %36 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %36, i64 %38
  store %struct.snd_urb_ctx* %39, %struct.snd_urb_ctx** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %44 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %45 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %44, i32 0, i32 3
  store %struct.snd_usb_endpoint* %43, %struct.snd_usb_endpoint** %45, align 8
  %46 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.TYPE_4__* @usb_alloc_urb(i32 1, i32 %48)
  %50 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %50, i32 0, i32 2
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %51, align 8
  %52 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = icmp ne %struct.TYPE_4__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %33
  br label %127

57:                                               ; preds = %33
  %58 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %59 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 8
  store i64 %64, i64* %68, align 8
  %69 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %70 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %77 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 7
  store i64 %75, i64* %79, align 8
  %80 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %81 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 4, i32* %83, align 8
  %84 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %85 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %88 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 6
  store i32 %86, i32* %90, align 8
  %91 = load i32, i32* @URB_ISO_ASAP, align 4
  %92 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %95 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 %93, i32* %97, align 4
  %98 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %99 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i32 1, i32* %101, align 8
  %102 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %103 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = shl i32 1, %104
  %106 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %107 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  store i32 %105, i32* %109, align 4
  %110 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %111 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %112 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 5
  store %struct.snd_urb_ctx* %110, %struct.snd_urb_ctx** %114, align 8
  %115 = load i32, i32* @snd_complete_urb, align 4
  %116 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %7, align 8
  %117 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  store i32 %115, i32* %119, align 8
  br label %120

120:                                              ; preds = %57
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %29

123:                                              ; preds = %29
  %124 = load i32, i32* @SYNC_URBS, align 4
  %125 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %126 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  store i32 0, i32* %3, align 4
  br label %132

127:                                              ; preds = %56
  %128 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %129 = call i32 @release_urbs(%struct.snd_usb_endpoint* %128, i32 0)
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %127, %123, %25
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @usb_buffer_alloc(i32, i32, i32, i64*) #1

declare dso_local %struct.TYPE_4__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @release_urbs(%struct.snd_usb_endpoint*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

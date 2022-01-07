; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usx2yhwdeppcm.c_usX2Y_usbpcm_urbs_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usx2yhwdeppcm.c_usX2Y_usbpcm_urbs_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usX2Y_substream = type { i32, %struct.TYPE_4__*, %struct.urb**, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.usb_device*, %struct.snd_usX2Y_substream** }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.usb_device = type { i32 }
%struct.urb = type { i32, i32, i32, %struct.snd_usX2Y_substream*, i32, %struct.usb_device*, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NRURBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i_usX2Y_usbpcm_subs_startup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usX2Y_substream*)* @usX2Y_usbpcm_urbs_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usX2Y_usbpcm_urbs_allocate(%struct.snd_usX2Y_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_usX2Y_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.urb**, align 8
  store %struct.snd_usX2Y_substream* %0, %struct.snd_usX2Y_substream** %3, align 8
  %9 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %10 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %16 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %14, i64 %15
  %17 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %16, align 8
  %18 = icmp eq %struct.snd_usX2Y_substream* %9, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %21 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  store %struct.usb_device* %24, %struct.usb_device** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %29 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %30 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @usb_sndisocpipe(%struct.usb_device* %28, i32 %31)
  br label %39

33:                                               ; preds = %1
  %34 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %35 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %36 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @usb_rcvisocpipe(%struct.usb_device* %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i32 [ %32, %27 ], [ %38, %33 ]
  store i32 %40, i32* %5, align 4
  %41 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @usb_maxpacket(%struct.usb_device* %41, i32 %42, i32 %43)
  %45 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %46 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %48 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %152

54:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %148, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @NRURBS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %151

59:                                               ; preds = %55
  %60 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %61 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %60, i32 0, i32 2
  %62 = load %struct.urb**, %struct.urb*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.urb*, %struct.urb** %62, i64 %64
  store %struct.urb** %65, %struct.urb*** %8, align 8
  %66 = load %struct.urb**, %struct.urb*** %8, align 8
  %67 = load %struct.urb*, %struct.urb** %66, align 8
  %68 = icmp ne %struct.urb* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load %struct.urb**, %struct.urb*** %8, align 8
  %71 = load %struct.urb*, %struct.urb** %70, align 8
  %72 = call i32 @usb_kill_urb(%struct.urb* %71)
  br label %148

73:                                               ; preds = %59
  %74 = call i32 (...) @nr_of_packs()
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.urb* @usb_alloc_urb(i32 %74, i32 %75)
  %77 = load %struct.urb**, %struct.urb*** %8, align 8
  store %struct.urb* %76, %struct.urb** %77, align 8
  %78 = load %struct.urb**, %struct.urb*** %8, align 8
  %79 = load %struct.urb*, %struct.urb** %78, align 8
  %80 = icmp eq %struct.urb* null, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %83 = call i32 @usX2Y_usbpcm_urbs_release(%struct.snd_usX2Y_substream* %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %152

86:                                               ; preds = %73
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %91 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  br label %120

97:                                               ; preds = %86
  %98 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %99 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 8
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %104 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  br label %118

110:                                              ; preds = %97
  %111 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %112 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  br label %118

118:                                              ; preds = %110, %102
  %119 = phi i32 [ %109, %102 ], [ %117, %110 ]
  br label %120

120:                                              ; preds = %118, %89
  %121 = phi i32 [ %96, %89 ], [ %119, %118 ]
  %122 = load %struct.urb**, %struct.urb*** %8, align 8
  %123 = load %struct.urb*, %struct.urb** %122, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 6
  store i32 %121, i32* %124, align 8
  %125 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %126 = load %struct.urb**, %struct.urb*** %8, align 8
  %127 = load %struct.urb*, %struct.urb** %126, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 5
  store %struct.usb_device* %125, %struct.usb_device** %128, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.urb**, %struct.urb*** %8, align 8
  %131 = load %struct.urb*, %struct.urb** %130, align 8
  %132 = getelementptr inbounds %struct.urb, %struct.urb* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = call i32 (...) @nr_of_packs()
  %134 = load %struct.urb**, %struct.urb*** %8, align 8
  %135 = load %struct.urb*, %struct.urb** %134, align 8
  %136 = getelementptr inbounds %struct.urb, %struct.urb* %135, i32 0, i32 4
  store i32 %133, i32* %136, align 8
  %137 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %138 = load %struct.urb**, %struct.urb*** %8, align 8
  %139 = load %struct.urb*, %struct.urb** %138, align 8
  %140 = getelementptr inbounds %struct.urb, %struct.urb* %139, i32 0, i32 3
  store %struct.snd_usX2Y_substream* %137, %struct.snd_usX2Y_substream** %140, align 8
  %141 = load %struct.urb**, %struct.urb*** %8, align 8
  %142 = load %struct.urb*, %struct.urb** %141, align 8
  %143 = getelementptr inbounds %struct.urb, %struct.urb* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  %144 = load i32, i32* @i_usX2Y_usbpcm_subs_startup, align 4
  %145 = load %struct.urb**, %struct.urb*** %8, align 8
  %146 = load %struct.urb*, %struct.urb** %145, align 8
  %147 = getelementptr inbounds %struct.urb, %struct.urb* %146, i32 0, i32 2
  store i32 %144, i32* %147, align 8
  br label %148

148:                                              ; preds = %120, %69
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %55

151:                                              ; preds = %55
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %81, %51
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @usb_sndisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_maxpacket(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @nr_of_packs(...) #1

declare dso_local i32 @usX2Y_usbpcm_urbs_release(%struct.snd_usX2Y_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

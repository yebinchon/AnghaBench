; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_in_endpoint_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_in_endpoint_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi = type { i32 }
%struct.snd_usb_midi_endpoint_info = type { i32, i32 }
%struct.snd_usb_midi_endpoint = type { %struct.snd_usb_midi_in_endpoint* }
%struct.snd_usb_midi_in_endpoint = type { %struct.TYPE_4__**, %struct.snd_usb_midi* }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INPUT_URBS = common dso_local global i32 0, align 4
@snd_usbmidi_in_urb_complete = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_midi*, %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint*)* @snd_usbmidi_in_endpoint_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usbmidi_in_endpoint_create(%struct.snd_usb_midi* %0, %struct.snd_usb_midi_endpoint_info* %1, %struct.snd_usb_midi_endpoint* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_midi*, align 8
  %6 = alloca %struct.snd_usb_midi_endpoint_info*, align 8
  %7 = alloca %struct.snd_usb_midi_endpoint*, align 8
  %8 = alloca %struct.snd_usb_midi_in_endpoint*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_usb_midi* %0, %struct.snd_usb_midi** %5, align 8
  store %struct.snd_usb_midi_endpoint_info* %1, %struct.snd_usb_midi_endpoint_info** %6, align 8
  store %struct.snd_usb_midi_endpoint* %2, %struct.snd_usb_midi_endpoint** %7, align 8
  %13 = load %struct.snd_usb_midi_endpoint*, %struct.snd_usb_midi_endpoint** %7, align 8
  %14 = getelementptr inbounds %struct.snd_usb_midi_endpoint, %struct.snd_usb_midi_endpoint* %13, i32 0, i32 0
  store %struct.snd_usb_midi_in_endpoint* null, %struct.snd_usb_midi_in_endpoint** %14, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.snd_usb_midi_in_endpoint* @kzalloc(i32 16, i32 %15)
  store %struct.snd_usb_midi_in_endpoint* %16, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %17 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %18 = icmp ne %struct.snd_usb_midi_in_endpoint* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %168

22:                                               ; preds = %3
  %23 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %24 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %25 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %24, i32 0, i32 1
  store %struct.snd_usb_midi* %23, %struct.snd_usb_midi** %25, align 8
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %53, %22
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @INPUT_URBS, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.TYPE_4__* @usb_alloc_urb(i32 0, i32 %31)
  %33 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %34 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %38, align 8
  %39 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %40 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %30
  %48 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %49 = call i32 @snd_usbmidi_in_endpoint_delete(%struct.snd_usb_midi_in_endpoint* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %168

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %12, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %26

56:                                               ; preds = %26
  %57 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %58 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %63 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %66 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @usb_rcvintpipe(i32 %64, i32 %67)
  store i32 %68, i32* %10, align 4
  br label %77

69:                                               ; preds = %56
  %70 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %71 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %74 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @usb_rcvbulkpipe(i32 %72, i32 %75)
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %69, %61
  %78 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %79 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @usb_maxpacket(i32 %80, i32 %81, i32 0)
  store i32 %82, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %161, %77
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @INPUT_URBS, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %164

87:                                               ; preds = %83
  %88 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %89 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %94 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %95, i64 %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = call i8* @usb_buffer_alloc(i32 %90, i32 %91, i32 %92, i32* %100)
  store i8* %101, i8** %9, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %87
  %105 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %106 = call i32 @snd_usbmidi_in_endpoint_delete(%struct.snd_usb_midi_in_endpoint* %105)
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %168

109:                                              ; preds = %87
  %110 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %111 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %109
  %115 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %116 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %117, i64 %119
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %123 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i8*, i8** %9, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @snd_usbmidi_in_urb_complete, align 4
  %129 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %130 = load %struct.snd_usb_midi_endpoint_info*, %struct.snd_usb_midi_endpoint_info** %6, align 8
  %131 = getelementptr inbounds %struct.snd_usb_midi_endpoint_info, %struct.snd_usb_midi_endpoint_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @usb_fill_int_urb(%struct.TYPE_4__* %121, i32 %124, i32 %125, i8* %126, i32 %127, i32 %128, %struct.snd_usb_midi_in_endpoint* %129, i32 %132)
  br label %151

134:                                              ; preds = %109
  %135 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %136 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %137, i64 %139
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %143 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @snd_usbmidi_in_urb_complete, align 4
  %149 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %150 = call i32 @usb_fill_bulk_urb(%struct.TYPE_4__* %141, i32 %144, i32 %145, i8* %146, i32 %147, i32 %148, %struct.snd_usb_midi_in_endpoint* %149)
  br label %151

151:                                              ; preds = %134, %114
  %152 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %153 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %154 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %155, i64 %157
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i32 %152, i32* %160, align 4
  br label %161

161:                                              ; preds = %151
  %162 = load i32, i32* %12, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %83

164:                                              ; preds = %83
  %165 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %8, align 8
  %166 = load %struct.snd_usb_midi_endpoint*, %struct.snd_usb_midi_endpoint** %7, align 8
  %167 = getelementptr inbounds %struct.snd_usb_midi_endpoint, %struct.snd_usb_midi_endpoint* %166, i32 0, i32 0
  store %struct.snd_usb_midi_in_endpoint* %165, %struct.snd_usb_midi_in_endpoint** %167, align 8
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %164, %104, %47, %19
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local %struct.snd_usb_midi_in_endpoint* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_4__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @snd_usbmidi_in_endpoint_delete(%struct.snd_usb_midi_in_endpoint*) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i32) #1

declare dso_local i8* @usb_buffer_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_4__*, i32, i32, i8*, i32, i32, %struct.snd_usb_midi_in_endpoint*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_4__*, i32, i32, i8*, i32, i32, %struct.snd_usb_midi_in_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

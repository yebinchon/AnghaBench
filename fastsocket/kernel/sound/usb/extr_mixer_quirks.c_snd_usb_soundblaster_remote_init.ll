; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_usb_soundblaster_remote_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer_quirks.c_snd_usb_soundblaster_remote_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.usb_mixer_interface = type { i32, %struct.TYPE_11__*, %struct.TYPE_8__*, i32*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i8*, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.snd_hwdep = type { i32, %struct.TYPE_7__, %struct.usb_mixer_interface*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@rc_configs = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"SB remote control\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s remote control\00", align 1
@SNDRV_HWDEP_IFACE_SB_RC = common dso_local global i32 0, align 4
@snd_usb_sbrc_hwdep_read = common dso_local global i32 0, align 4
@snd_usb_sbrc_hwdep_poll = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@UAC_GET_MEM = common dso_local global i32 0, align 4
@snd_usb_soundblaster_remote_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*)* @snd_usb_soundblaster_remote_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_soundblaster_remote_init(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca %struct.snd_hwdep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rc_configs, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rc_configs, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %21 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %31

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %8

31:                                               ; preds = %26, %8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rc_configs, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %33)
  %35 = icmp sge i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %175

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rc_configs, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 %40
  %42 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %43 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %42, i32 0, i32 5
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %43, align 8
  %44 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %45 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %44, i32 0, i32 5
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %6, align 4
  %49 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %50 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %49, i32 0, i32 4
  %51 = call i32 @init_waitqueue_head(i32* %50)
  %52 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %53 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = call i32 @snd_hwdep_new(%struct.TYPE_9__* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 0, %struct.snd_hwdep** %4)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %37
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %175

62:                                               ; preds = %37
  %63 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %64 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %67 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @snprintf(i32 %65, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @SNDRV_HWDEP_IFACE_SB_RC, align 4
  %75 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %76 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %78 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %79 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %78, i32 0, i32 2
  store %struct.usb_mixer_interface* %77, %struct.usb_mixer_interface** %79, align 8
  %80 = load i32, i32* @snd_usb_sbrc_hwdep_read, align 4
  %81 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %82 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @snd_usb_sbrc_hwdep_poll, align 4
  %85 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %86 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %89 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i32* @usb_alloc_urb(i32 0, i32 %90)
  %92 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %93 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %92, i32 0, i32 3
  store i32* %91, i32** %93, align 8
  %94 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %95 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %62
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %175

101:                                              ; preds = %62
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.TYPE_11__* @kmalloc(i32 40, i32 %102)
  %104 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %105 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %104, i32 0, i32 1
  store %struct.TYPE_11__* %103, %struct.TYPE_11__** %105, align 8
  %106 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %107 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %106, i32 0, i32 1
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = icmp ne %struct.TYPE_11__* %108, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %101
  %111 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %112 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @usb_free_urb(i32* %113)
  %115 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %116 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %115, i32 0, i32 3
  store i32* null, i32** %116, align 8
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %175

119:                                              ; preds = %101
  %120 = load i32, i32* @USB_DIR_IN, align 4
  %121 = load i32, i32* @USB_TYPE_CLASS, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %126 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %125, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  %129 = load i32, i32* @UAC_GET_MEM, align 4
  %130 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %131 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %130, i32 0, i32 1
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 4
  store i32 %129, i32* %133, align 8
  %134 = call i8* @cpu_to_le16(i32 0)
  %135 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %136 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %135, i32 0, i32 1
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 3
  store i8* %134, i8** %138, align 8
  %139 = call i8* @cpu_to_le16(i32 0)
  %140 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %141 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %140, i32 0, i32 1
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  store i8* %139, i8** %143, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i8* @cpu_to_le16(i32 %144)
  %146 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %147 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %146, i32 0, i32 1
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  store i8* %145, i8** %149, align 8
  %150 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %151 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %154 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %153, i32 0, i32 2
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %159 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %158, i32 0, i32 2
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @usb_rcvctrlpipe(i32 %162, i32 0)
  %164 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %165 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %164, i32 0, i32 1
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = bitcast %struct.TYPE_11__* %166 to i32*
  %168 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %169 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @snd_usb_soundblaster_remote_complete, align 4
  %173 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %174 = call i32 @usb_fill_control_urb(i32* %152, i32 %157, i32 %163, i32* %167, i32 %170, i32 %171, i32 %172, %struct.usb_mixer_interface* %173)
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %119, %110, %98, %60, %36
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @snd_hwdep_new(%struct.TYPE_9__*, i8*, i32, %struct.snd_hwdep**) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.TYPE_11__* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(i32*, i32, i32, i32*, i32, i32, i32, %struct.usb_mixer_interface*) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_us122l.c_usb_stream_hwdep_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_us122l.c_usb_stream_hwdep_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { i32, %struct.us122l* }
%struct.us122l = type { %struct.TYPE_4__, i32, %struct.file*, %struct.file*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.usb_stream* }
%struct.usb_stream = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.file = type { i32 }
%struct.usb_stream_config = type { i64, i32, i32, i32 }

@SNDRV_USB_STREAM_IOCTL_SET_PARAMS = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@USB_STREAM_INTERFACE_VERSION = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_CTL_POWER_D0 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@usb_stream_xrun = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hwdep*, %struct.file*, i32, i64)* @usb_stream_hwdep_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stream_hwdep_ioctl(%struct.snd_hwdep* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_hwdep*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_stream_config*, align 8
  %11 = alloca %struct.us122l*, align 8
  %12 = alloca %struct.usb_stream*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_hwdep* %0, %struct.snd_hwdep** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  %17 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %16, i32 0, i32 1
  %18 = load %struct.us122l*, %struct.us122l** %17, align 8
  store %struct.us122l* %18, %struct.us122l** %11, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SNDRV_USB_STREAM_IOCTL_SET_PARAMS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOTTY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %199

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call %struct.usb_stream_config* @memdup_user(i8* %27, i32 24)
  store %struct.usb_stream_config* %28, %struct.usb_stream_config** %10, align 8
  %29 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %30 = call i64 @IS_ERR(%struct.usb_stream_config* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %34 = call i32 @PTR_ERR(%struct.usb_stream_config* %33)
  store i32 %34, i32* %5, align 4
  br label %199

35:                                               ; preds = %25
  %36 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %37 = getelementptr inbounds %struct.usb_stream_config, %struct.usb_stream_config* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @USB_STREAM_INTERFACE_VERSION, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %14, align 4
  br label %191

44:                                               ; preds = %35
  %45 = load %struct.us122l*, %struct.us122l** %11, align 8
  %46 = getelementptr inbounds %struct.us122l, %struct.us122l* %45, i32 0, i32 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @USB_SPEED_HIGH, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %15, align 4
  %53 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %54 = getelementptr inbounds %struct.usb_stream_config, %struct.usb_stream_config* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 44100
  br i1 %56, label %57, label %75

57:                                               ; preds = %44
  %58 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %59 = getelementptr inbounds %struct.usb_stream_config, %struct.usb_stream_config* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 48000
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %67 = getelementptr inbounds %struct.usb_stream_config, %struct.usb_stream_config* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 88200
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %72 = getelementptr inbounds %struct.usb_stream_config, %struct.usb_stream_config* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 96000
  br i1 %74, label %85, label %75

75:                                               ; preds = %70, %65, %57, %44
  %76 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %77 = getelementptr inbounds %struct.usb_stream_config, %struct.usb_stream_config* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 6
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %82 = getelementptr inbounds %struct.usb_stream_config, %struct.usb_stream_config* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %83, 12288
  br i1 %84, label %85, label %88

85:                                               ; preds = %80, %75, %70, %62
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %14, align 4
  br label %191

88:                                               ; preds = %80
  %89 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %90 = getelementptr inbounds %struct.usb_stream_config, %struct.usb_stream_config* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %94 [
    i32 44100, label %92
    i32 48000, label %93
  ]

92:                                               ; preds = %88
  store i32 48, i32* %13, align 4
  br label %95

93:                                               ; preds = %88
  store i32 52, i32* %13, align 4
  br label %95

94:                                               ; preds = %88
  store i32 104, i32* %13, align 4
  br label %95

95:                                               ; preds = %94, %93, %92
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %13, align 4
  %100 = shl i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %103 = getelementptr inbounds %struct.usb_stream_config, %struct.usb_stream_config* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %14, align 4
  br label %191

110:                                              ; preds = %101
  %111 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  %112 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SNDRV_CTL_POWER_D0, align 4
  %115 = call i32 @snd_power_wait(i32 %113, i32 %114)
  %116 = load %struct.us122l*, %struct.us122l** %11, align 8
  %117 = getelementptr inbounds %struct.us122l, %struct.us122l* %116, i32 0, i32 1
  %118 = call i32 @mutex_lock(i32* %117)
  %119 = load %struct.us122l*, %struct.us122l** %11, align 8
  %120 = getelementptr inbounds %struct.us122l, %struct.us122l* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load %struct.usb_stream*, %struct.usb_stream** %121, align 8
  store %struct.usb_stream* %122, %struct.usb_stream** %12, align 8
  %123 = load %struct.us122l*, %struct.us122l** %11, align 8
  %124 = getelementptr inbounds %struct.us122l, %struct.us122l* %123, i32 0, i32 3
  %125 = load %struct.file*, %struct.file** %124, align 8
  %126 = icmp ne %struct.file* %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %110
  %128 = load %struct.file*, %struct.file** %7, align 8
  %129 = load %struct.us122l*, %struct.us122l** %11, align 8
  %130 = getelementptr inbounds %struct.us122l, %struct.us122l* %129, i32 0, i32 3
  store %struct.file* %128, %struct.file** %130, align 8
  br label %154

131:                                              ; preds = %110
  %132 = load %struct.us122l*, %struct.us122l** %11, align 8
  %133 = getelementptr inbounds %struct.us122l, %struct.us122l* %132, i32 0, i32 3
  %134 = load %struct.file*, %struct.file** %133, align 8
  %135 = load %struct.file*, %struct.file** %7, align 8
  %136 = icmp ne %struct.file* %134, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %131
  %138 = load %struct.usb_stream*, %struct.usb_stream** %12, align 8
  %139 = icmp ne %struct.usb_stream* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %142 = load %struct.usb_stream*, %struct.usb_stream** %12, align 8
  %143 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %142, i32 0, i32 1
  %144 = call i64 @memcmp(%struct.usb_stream_config* %141, i32* %143, i32 24)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140, %137
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %14, align 4
  br label %187

149:                                              ; preds = %140
  %150 = load %struct.file*, %struct.file** %7, align 8
  %151 = load %struct.us122l*, %struct.us122l** %11, align 8
  %152 = getelementptr inbounds %struct.us122l, %struct.us122l* %151, i32 0, i32 2
  store %struct.file* %150, %struct.file** %152, align 8
  br label %153

153:                                              ; preds = %149, %131
  br label %154

154:                                              ; preds = %153, %127
  %155 = load %struct.usb_stream*, %struct.usb_stream** %12, align 8
  %156 = icmp ne %struct.usb_stream* %155, null
  br i1 %156, label %157, label %169

157:                                              ; preds = %154
  %158 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %159 = load %struct.usb_stream*, %struct.usb_stream** %12, align 8
  %160 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %159, i32 0, i32 1
  %161 = call i64 @memcmp(%struct.usb_stream_config* %158, i32* %160, i32 24)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load %struct.usb_stream*, %struct.usb_stream** %12, align 8
  %165 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @usb_stream_xrun, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %163, %157, %154
  %170 = load %struct.us122l*, %struct.us122l** %11, align 8
  %171 = call i32 @us122l_stop(%struct.us122l* %170)
  %172 = load %struct.us122l*, %struct.us122l** %11, align 8
  %173 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %174 = getelementptr inbounds %struct.usb_stream_config, %struct.usb_stream_config* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %177 = getelementptr inbounds %struct.usb_stream_config, %struct.usb_stream_config* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @us122l_start(%struct.us122l* %172, i32 %175, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %169
  %182 = load i32, i32* @EIO, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %14, align 4
  br label %185

184:                                              ; preds = %169
  store i32 1, i32* %14, align 4
  br label %185

185:                                              ; preds = %184, %181
  br label %186

186:                                              ; preds = %185, %163
  br label %187

187:                                              ; preds = %186, %146
  %188 = load %struct.us122l*, %struct.us122l** %11, align 8
  %189 = getelementptr inbounds %struct.us122l, %struct.us122l* %188, i32 0, i32 1
  %190 = call i32 @mutex_unlock(i32* %189)
  br label %191

191:                                              ; preds = %187, %107, %85, %41
  %192 = load %struct.usb_stream_config*, %struct.usb_stream_config** %10, align 8
  %193 = call i32 @kfree(%struct.usb_stream_config* %192)
  %194 = load %struct.us122l*, %struct.us122l** %11, align 8
  %195 = getelementptr inbounds %struct.us122l, %struct.us122l* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = call i32 @wake_up_all(i32* %196)
  %198 = load i32, i32* %14, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %191, %32, %22
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local %struct.usb_stream_config* @memdup_user(i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.usb_stream_config*) #1

declare dso_local i32 @PTR_ERR(%struct.usb_stream_config*) #1

declare dso_local i32 @snd_power_wait(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @memcmp(%struct.usb_stream_config*, i32*, i32) #1

declare dso_local i32 @us122l_stop(%struct.us122l*) #1

declare dso_local i32 @us122l_start(%struct.us122l*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.usb_stream_config*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

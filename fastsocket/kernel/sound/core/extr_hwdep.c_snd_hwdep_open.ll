; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_hwdep.c_snd_hwdep_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_hwdep.c_snd_hwdep_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.snd_hwdep* }
%struct.snd_hwdep = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 (%struct.snd_hwdep.0*, %struct.file.1*)*, i32 (%struct.snd_hwdep.2*, %struct.file.3*)* }
%struct.snd_hwdep.0 = type opaque
%struct.file.1 = type opaque
%struct.snd_hwdep.2 = type opaque
%struct.file.3 = type opaque

@snd_major = common dso_local global i32 0, align 4
@SNDRV_DEVICE_TYPE_HWDEP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SNDRV_OSS_DEVICE_TYPE_DMFM = common dso_local global i32 0, align 4
@SOUND_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_hwdep_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hwdep_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_hwdep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @imajor(%struct.inode* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @snd_major, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i32 @iminor(%struct.inode* %16)
  %18 = load i32, i32* @SNDRV_DEVICE_TYPE_HWDEP, align 4
  %19 = call %struct.snd_hwdep* @snd_lookup_minor_data(i32 %17, i32 %18)
  store %struct.snd_hwdep* %19, %struct.snd_hwdep** %7, align 8
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %181

23:                                               ; preds = %15
  %24 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %25 = icmp eq %struct.snd_hwdep* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %181

29:                                               ; preds = %23
  %30 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %31 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @try_module_get(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %181

40:                                               ; preds = %29
  %41 = load i32, i32* @current, align 4
  %42 = call i32 @init_waitqueue_entry(i32* %9, i32 %41)
  %43 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %44 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %43, i32 0, i32 4
  %45 = call i32 @add_wait_queue(i32* %44, i32* %9)
  %46 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %47 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %46, i32 0, i32 2
  %48 = call i32 @mutex_lock(i32* %47)
  br label %49

49:                                               ; preds = %40, %125
  %50 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %51 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %56 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %126

62:                                               ; preds = %54, %49
  %63 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %64 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32 (%struct.snd_hwdep.0*, %struct.file.1*)*, i32 (%struct.snd_hwdep.0*, %struct.file.1*)** %65, align 8
  %67 = icmp ne i32 (%struct.snd_hwdep.0*, %struct.file.1*)* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %126

69:                                               ; preds = %62
  %70 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %71 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32 (%struct.snd_hwdep.0*, %struct.file.1*)*, i32 (%struct.snd_hwdep.0*, %struct.file.1*)** %72, align 8
  %74 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %75 = bitcast %struct.snd_hwdep* %74 to %struct.snd_hwdep.0*
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = bitcast %struct.file* %76 to %struct.file.1*
  %78 = call i32 %73(%struct.snd_hwdep.0* %75, %struct.file.1* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %126

82:                                               ; preds = %69
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @EAGAIN, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load %struct.file*, %struct.file** %5, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @O_NONBLOCK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* @EBUSY, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %126

97:                                               ; preds = %87
  br label %99

98:                                               ; preds = %82
  br label %126

99:                                               ; preds = %97
  %100 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %101 = call i32 @set_current_state(i32 %100)
  %102 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %103 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %102, i32 0, i32 2
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = call i32 (...) @schedule()
  %106 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %107 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %106, i32 0, i32 2
  %108 = call i32 @mutex_lock(i32* %107)
  %109 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %110 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %99
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %126

118:                                              ; preds = %99
  %119 = load i32, i32* @current, align 4
  %120 = call i64 @signal_pending(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* @ERESTARTSYS, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %8, align 4
  br label %126

125:                                              ; preds = %118
  br label %49

126:                                              ; preds = %122, %115, %98, %94, %81, %68, %59
  %127 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %128 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %127, i32 0, i32 4
  %129 = call i32 @remove_wait_queue(i32* %128, i32* %9)
  %130 = load i32, i32* %8, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %166

132:                                              ; preds = %126
  %133 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %134 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load %struct.file*, %struct.file** %5, align 8
  %137 = call i32 @snd_card_file_add(%struct.TYPE_4__* %135, %struct.file* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %132
  %141 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %142 = load %struct.file*, %struct.file** %5, align 8
  %143 = getelementptr inbounds %struct.file, %struct.file* %142, i32 0, i32 1
  store %struct.snd_hwdep* %141, %struct.snd_hwdep** %143, align 8
  %144 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %145 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  br label %165

148:                                              ; preds = %132
  %149 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %150 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32 (%struct.snd_hwdep.2*, %struct.file.3*)*, i32 (%struct.snd_hwdep.2*, %struct.file.3*)** %151, align 8
  %153 = icmp ne i32 (%struct.snd_hwdep.2*, %struct.file.3*)* %152, null
  br i1 %153, label %154, label %164

154:                                              ; preds = %148
  %155 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %156 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32 (%struct.snd_hwdep.2*, %struct.file.3*)*, i32 (%struct.snd_hwdep.2*, %struct.file.3*)** %157, align 8
  %159 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %160 = bitcast %struct.snd_hwdep* %159 to %struct.snd_hwdep.2*
  %161 = load %struct.file*, %struct.file** %5, align 8
  %162 = bitcast %struct.file* %161 to %struct.file.3*
  %163 = call i32 %158(%struct.snd_hwdep.2* %160, %struct.file.3* %162)
  br label %164

164:                                              ; preds = %154, %148
  br label %165

165:                                              ; preds = %164, %140
  br label %166

166:                                              ; preds = %165, %126
  %167 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %168 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %167, i32 0, i32 2
  %169 = call i32 @mutex_unlock(i32* %168)
  %170 = load i32, i32* %8, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load %struct.snd_hwdep*, %struct.snd_hwdep** %7, align 8
  %174 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @module_put(i32 %177)
  br label %179

179:                                              ; preds = %172, %166
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %37, %26, %20
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local %struct.snd_hwdep* @snd_lookup_minor_data(i32, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @snd_card_file_add(%struct.TYPE_4__*, %struct.file*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

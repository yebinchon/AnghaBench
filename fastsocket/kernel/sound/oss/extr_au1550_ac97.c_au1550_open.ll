; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_state = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i64 }
%struct.inode = type { i32 }
%struct.file = type { i32, i32, %struct.au1550_state* }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@au1550_state = common dso_local global %struct.au1550_state zeroinitializer, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@SND_DEV_DSP16 = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @au1550_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.au1550_state*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @MINOR(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @wait, align 4
  %14 = load i32, i32* @current, align 4
  %15 = call i32 @DECLARE_WAITQUEUE(i32 %13, i32 %14)
  store %struct.au1550_state* @au1550_state, %struct.au1550_state** %7, align 8
  %16 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 2
  store %struct.au1550_state* %16, %struct.au1550_state** %18, align 8
  %19 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %20 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  br label %22

22:                                               ; preds = %65, %2
  %23 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %24 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %22
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @O_NONBLOCK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %40 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %39, i32 0, i32 2
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %193

44:                                               ; preds = %31
  %45 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %46 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %45, i32 0, i32 5
  %47 = call i32 @add_wait_queue(i32* %46, i32* @wait)
  %48 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %49 = call i32 @__set_current_state(i32 %48)
  %50 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %51 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %50, i32 0, i32 2
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = call i32 (...) @schedule()
  %54 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %55 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %54, i32 0, i32 5
  %56 = call i32 @remove_wait_queue(i32* %55, i32* @wait)
  %57 = load i32, i32* @TASK_RUNNING, align 4
  %58 = call i32 @set_current_state(i32 %57)
  %59 = load i32, i32* @current, align 4
  %60 = call i64 @signal_pending(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %44
  %63 = load i32, i32* @ERESTARTSYS, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %193

65:                                               ; preds = %44
  %66 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %67 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %66, i32 0, i32 2
  %68 = call i32 @mutex_lock(i32* %67)
  br label %22

69:                                               ; preds = %22
  %70 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %71 = call i32 @stop_dac(%struct.au1550_state* %70)
  %72 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %73 = call i32 @stop_adc(%struct.au1550_state* %72)
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @FMODE_READ, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %69
  %81 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %82 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %85 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %88 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %91 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %94 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %97 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i32 8, i32* %98, align 4
  %99 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %100 = call i32 @set_adc_rate(%struct.au1550_state* %99, i32 8000)
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, 15
  %103 = load i32, i32* @SND_DEV_DSP16, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %80
  %106 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %107 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i32 16, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %80
  br label %110

110:                                              ; preds = %109, %69
  %111 = load %struct.file*, %struct.file** %5, align 8
  %112 = getelementptr inbounds %struct.file, %struct.file* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @FMODE_WRITE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %110
  %118 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %119 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %122 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  %124 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %125 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 4
  store i64 0, i64* %126, align 8
  %127 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %128 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 5
  store i64 0, i64* %129, align 8
  %130 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %131 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %134 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i32 8, i32* %135, align 4
  %136 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %137 = call i32 @set_dac_rate(%struct.au1550_state* %136, i32 8000)
  %138 = load i32, i32* %6, align 4
  %139 = and i32 %138, 15
  %140 = load i32, i32* @SND_DEV_DSP16, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %117
  %143 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %144 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store i32 16, i32* %145, align 4
  br label %146

146:                                              ; preds = %142, %117
  br label %147

147:                                              ; preds = %146, %110
  %148 = load %struct.file*, %struct.file** %5, align 8
  %149 = getelementptr inbounds %struct.file, %struct.file* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @FMODE_READ, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %147
  %155 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %156 = call i32 @prog_dmabuf_adc(%struct.au1550_state* %155)
  store i32 %156, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %3, align 4
  br label %193

160:                                              ; preds = %154
  br label %161

161:                                              ; preds = %160, %147
  %162 = load %struct.file*, %struct.file** %5, align 8
  %163 = getelementptr inbounds %struct.file, %struct.file* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @FMODE_WRITE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %161
  %169 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %170 = call i32 @prog_dmabuf_dac(%struct.au1550_state* %169)
  store i32 %170, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %3, align 4
  br label %193

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %161
  %176 = load %struct.file*, %struct.file** %5, align 8
  %177 = getelementptr inbounds %struct.file, %struct.file* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @FMODE_READ, align 4
  %180 = load i32, i32* @FMODE_WRITE, align 4
  %181 = or i32 %179, %180
  %182 = and i32 %178, %181
  %183 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %184 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  %187 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %188 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %187, i32 0, i32 2
  %189 = call i32 @mutex_unlock(i32* %188)
  %190 = load %struct.au1550_state*, %struct.au1550_state** %7, align 8
  %191 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %190, i32 0, i32 1
  %192 = call i32 @mutex_init(i32* %191)
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %175, %172, %158, %62, %38
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @stop_dac(%struct.au1550_state*) #1

declare dso_local i32 @stop_adc(%struct.au1550_state*) #1

declare dso_local i32 @set_adc_rate(%struct.au1550_state*, i32) #1

declare dso_local i32 @set_dac_rate(%struct.au1550_state*, i32) #1

declare dso_local i32 @prog_dmabuf_adc(%struct.au1550_state*) #1

declare dso_local i32 @prog_dmabuf_dac(%struct.au1550_state*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_au1550_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64 }
%struct.au1550_state = type { i32, i32, %struct.dmabuf }
%struct.dmabuf = type { i64, i32, i64, i64, i64, i32, i64, i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@VERIFY_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i32*)* @au1550_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_read(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.au1550_state*, align 8
  %11 = alloca %struct.dmabuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.au1550_state*
  store %struct.au1550_state* %20, %struct.au1550_state** %10, align 8
  %21 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %22 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %21, i32 0, i32 2
  store %struct.dmabuf* %22, %struct.dmabuf** %11, align 8
  %23 = load i32, i32* @wait, align 4
  %24 = load i32, i32* @current, align 4
  %25 = call i32 @DECLARE_WAITQUEUE(i32 %23, i32 %24)
  %26 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %27 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %217

33:                                               ; preds = %4
  %34 = load i32, i32* @VERIFY_WRITE, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @access_ok(i32 %34, i8* %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %217

42:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  %43 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %44 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = mul i64 %46, %45
  store i64 %47, i64* %8, align 8
  %48 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %49 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %52 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %51, i32 0, i32 5
  %53 = call i32 @add_wait_queue(i32* %52, i32* @wait)
  br label %54

54:                                               ; preds = %182, %42
  %55 = load i64, i64* %8, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %205

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %120, %57
  %59 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %60 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %59, i32 0, i32 1
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %64 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %69 = call i32 @start_adc(%struct.au1550_state* %68)
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %72 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %78 = call i32 @__set_current_state(i32 %77)
  br label %79

79:                                               ; preds = %76, %70
  %80 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %81 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %80, i32 0, i32 1
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* %16, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %79
  %87 = load %struct.file*, %struct.file** %6, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @O_NONBLOCK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @EAGAIN, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %96, %93
  br label %206

100:                                              ; preds = %86
  %101 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %102 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = call i32 (...) @schedule()
  %105 = load i32, i32* @current, align 4
  %106 = call i64 @signal_pending(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @ERESTARTSYS, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %111, %108
  br label %210

115:                                              ; preds = %100
  %116 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %117 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %116, i32 0, i32 0
  %118 = call i32 @mutex_lock(i32* %117)
  br label %119

119:                                              ; preds = %115, %79
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %16, align 4
  %122 = icmp sle i32 %121, 0
  br i1 %122, label %58, label %123

123:                                              ; preds = %120
  %124 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp ugt i64 %126, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  br label %135

133:                                              ; preds = %123
  %134 = load i64, i64* %8, align 8
  br label %135

135:                                              ; preds = %133, %130
  %136 = phi i64 [ %132, %130 ], [ %134, %133 ]
  %137 = trunc i64 %136 to i32
  %138 = call i32 @copy_dmabuf_user(%struct.dmabuf* %124, i8* %125, i32 %137, i32 1)
  store i32 %138, i32* %14, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* @EFAULT, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %143, %140
  br label %206

147:                                              ; preds = %135
  %148 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %149 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %148, i32 0, i32 1
  %150 = load i64, i64* %13, align 8
  %151 = call i32 @spin_lock_irqsave(i32* %149, i64 %150)
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %154 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %160 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, %158
  store i64 %162, i64* %160, align 8
  %163 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %164 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %167 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %170 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %168, %171
  %173 = icmp sge i64 %165, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %147
  %175 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %176 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %179 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %180, %177
  store i64 %181, i64* %179, align 8
  br label %182

182:                                              ; preds = %174, %147
  %183 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %184 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %183, i32 0, i32 1
  %185 = load i64, i64* %13, align 8
  %186 = call i32 @spin_unlock_irqrestore(i32* %184, i64 %185)
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %8, align 8
  %190 = sub i64 %189, %188
  store i64 %190, i64* %8, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %194 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = udiv i64 %192, %195
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %15, align 4
  %198 = load i32, i32* %15, align 4
  %199 = load i8*, i8** %7, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %7, align 8
  %202 = load i32, i32* %15, align 4
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %12, align 4
  br label %54

205:                                              ; preds = %54
  br label %206

206:                                              ; preds = %205, %146, %99
  %207 = load %struct.au1550_state*, %struct.au1550_state** %10, align 8
  %208 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %207, i32 0, i32 0
  %209 = call i32 @mutex_unlock(i32* %208)
  br label %210

210:                                              ; preds = %206, %114
  %211 = load %struct.dmabuf*, %struct.dmabuf** %11, align 8
  %212 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %211, i32 0, i32 5
  %213 = call i32 @remove_wait_queue(i32* %212, i32* @wait)
  %214 = load i32, i32* @TASK_RUNNING, align 4
  %215 = call i32 @set_current_state(i32 %214)
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %210, %39, %30
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @access_ok(i32, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @start_adc(%struct.au1550_state*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @copy_dmabuf_user(%struct.dmabuf*, i8*, i32, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_vwsnd_audio_do_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_vwsnd_audio_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8* }
%struct.file = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32*, i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"(file=0x%p, buffer=0x%p, count=%d, ppos=0x%p)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@VERIFY_READ = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"blocking\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@DISABLED = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i8* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"nb = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i32*)* @vwsnd_audio_do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vwsnd_audio_do_read(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %10, align 8
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FMODE_READ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi %struct.TYPE_11__* [ %26, %24 ], [ null, %27 ]
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %11, align 8
  %30 = load %struct.file*, %struct.file** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @DBGEV(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.file* %30, i8* %31, i64 %32, i32* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %36 = icmp ne %struct.TYPE_11__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %199

40:                                               ; preds = %28
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %67

45:                                               ; preds = %40
  %46 = load %struct.file*, %struct.file** %6, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FMODE_WRITE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  br label %56

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi %struct.TYPE_11__* [ %54, %52 ], [ null, %55 ]
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %14, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %61 = call i32 @pcm_setup(%struct.TYPE_12__* %58, %struct.TYPE_11__* %59, %struct.TYPE_11__* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %5, align 4
  br label %199

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i32, i32* @VERIFY_READ, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @access_ok(i32 %68, i8* %69, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %199

76:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %180, %76
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %195

80:                                               ; preds = %77
  %81 = load i32, i32* @wait, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %83 = call i32 @DECLARE_WAITQUEUE(i32 %81, %struct.TYPE_13__* %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = call i32 @add_wait_queue(i32* %85, i32* @wait)
  br label %87

87:                                               ; preds = %145, %80
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %89 = call i32 @swb_inc_u(%struct.TYPE_11__* %88, i32 0)
  store i32 %89, i32* %13, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %146

91:                                               ; preds = %87
  %92 = call i32 (i8*, ...) @DBGPV(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %94 = call i32 @set_current_state(i32 %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @DISABLED, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %91
  %102 = load %struct.file*, %struct.file** %6, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @O_NONBLOCK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %101, %91
  %109 = load i8*, i8** @TASK_RUNNING, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = call i32 @remove_wait_queue(i32* %113, i32* @wait)
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* %12, align 4
  br label %122

119:                                              ; preds = %108
  %120 = load i32, i32* @EAGAIN, align 4
  %121 = sub nsw i32 0, %120
  br label %122

122:                                              ; preds = %119, %117
  %123 = phi i32 [ %118, %117 ], [ %121, %119 ]
  store i32 %123, i32* %5, align 4
  br label %199

124:                                              ; preds = %101
  %125 = call i32 (...) @schedule()
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %127 = call i64 @signal_pending(%struct.TYPE_13__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %124
  %130 = load i8*, i8** @TASK_RUNNING, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 3
  %135 = call i32 @remove_wait_queue(i32* %134, i32* @wait)
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32, i32* %12, align 4
  br label %143

140:                                              ; preds = %129
  %141 = load i32, i32* @ERESTARTSYS, align 4
  %142 = sub nsw i32 0, %141
  br label %143

143:                                              ; preds = %140, %138
  %144 = phi i32 [ %139, %138 ], [ %142, %140 ]
  store i32 %144, i32* %5, align 4
  br label %199

145:                                              ; preds = %124
  br label %87

146:                                              ; preds = %87
  %147 = load i8*, i8** @TASK_RUNNING, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  %152 = call i32 @remove_wait_queue(i32* %151, i32* @wait)
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %154 = call i32 @pcm_input(%struct.TYPE_12__* %153, i32 0, i32 0)
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* %8, align 8
  %158 = icmp ugt i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %146
  %160 = load i64, i64* %8, align 8
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %159, %146
  %163 = load i32, i32* %13, align 4
  %164 = call i32 (i8*, ...) @DBGPV(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load i8*, i8** %7, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  %174 = load i32, i32* %13, align 4
  %175 = call i64 @copy_to_user(i8* %165, i32* %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %162
  %178 = load i32, i32* @EFAULT, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %5, align 4
  br label %199

180:                                              ; preds = %162
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @swb_inc_u(%struct.TYPE_11__* %181, i32 %182)
  %184 = load i32, i32* %13, align 4
  %185 = load i8*, i8** %7, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8* %187, i8** %7, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* %8, align 8
  %191 = sub i64 %190, %189
  store i64 %191, i64* %8, align 8
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %12, align 4
  br label %77

195:                                              ; preds = %77
  %196 = load i32, i32* %12, align 4
  %197 = call i32 (i8*, ...) @DBGPV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %195, %177, %143, %122, %73, %64, %37
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @DBGEV(i8*, %struct.file*, i8*, i64, i32*) #1

declare dso_local i32 @pcm_setup(%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @access_ok(i32, i8*, i64) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @swb_inc_u(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @DBGPV(i8*, ...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(%struct.TYPE_13__*) #1

declare dso_local i32 @pcm_input(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @copy_to_user(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

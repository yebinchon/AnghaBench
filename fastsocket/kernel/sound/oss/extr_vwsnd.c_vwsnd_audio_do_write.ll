; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_vwsnd_audio_do_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_vwsnd_audio_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8* }
%struct.file = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32*, i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"(file=0x%p, buffer=0x%p, count=%d, ppos=0x%p)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@VERIFY_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_13__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@DISABLED = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i8* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"nb = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i32*)* @vwsnd_audio_do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vwsnd_audio_do_write(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
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
  %21 = load i32, i32* @FMODE_WRITE, align 4
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
  br label %196

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
  %49 = load i32, i32* @FMODE_READ, align 4
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
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %61 = call i32 @pcm_setup(%struct.TYPE_12__* %58, %struct.TYPE_11__* %59, %struct.TYPE_11__* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %5, align 4
  br label %196

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i32, i32* @VERIFY_WRITE, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @access_ok(i32 %68, i8* %69, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %196

76:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %177, %76
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %192

80:                                               ; preds = %77
  %81 = load i32, i32* @wait, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %83 = call i32 @DECLARE_WAITQUEUE(i32 %81, %struct.TYPE_13__* %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = call i32 @add_wait_queue(i32* %85, i32* @wait)
  br label %87

87:                                               ; preds = %144, %80
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %89 = call i32 @swb_inc_u(%struct.TYPE_11__* %88, i32 0)
  store i32 %89, i32* %13, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %145

91:                                               ; preds = %87
  %92 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %93 = call i32 @set_current_state(i32 %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @DISABLED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %91
  %101 = load %struct.file*, %struct.file** %6, align 8
  %102 = getelementptr inbounds %struct.file, %struct.file* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @O_NONBLOCK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %100, %91
  %108 = load i8*, i8** @TASK_RUNNING, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  %113 = call i32 @remove_wait_queue(i32* %112, i32* @wait)
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* %12, align 4
  br label %121

118:                                              ; preds = %107
  %119 = load i32, i32* @EAGAIN, align 4
  %120 = sub nsw i32 0, %119
  br label %121

121:                                              ; preds = %118, %116
  %122 = phi i32 [ %117, %116 ], [ %120, %118 ]
  store i32 %122, i32* %5, align 4
  br label %196

123:                                              ; preds = %100
  %124 = call i32 (...) @schedule()
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %126 = call i64 @signal_pending(%struct.TYPE_13__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %123
  %129 = load i8*, i8** @TASK_RUNNING, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  %134 = call i32 @remove_wait_queue(i32* %133, i32* @wait)
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i32, i32* %12, align 4
  br label %142

139:                                              ; preds = %128
  %140 = load i32, i32* @ERESTARTSYS, align 4
  %141 = sub nsw i32 0, %140
  br label %142

142:                                              ; preds = %139, %137
  %143 = phi i32 [ %138, %137 ], [ %141, %139 ]
  store i32 %143, i32* %5, align 4
  br label %196

144:                                              ; preds = %123
  br label %87

145:                                              ; preds = %87
  %146 = load i8*, i8** @TASK_RUNNING, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  %151 = call i32 @remove_wait_queue(i32* %150, i32* @wait)
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %8, align 8
  %155 = icmp ugt i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %145
  %157 = load i64, i64* %8, align 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %13, align 4
  br label %159

159:                                              ; preds = %156, %145
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @DBGPV(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = load i8*, i8** %7, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i64 @copy_from_user(i32* %169, i8* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %159
  %175 = load i32, i32* @EFAULT, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %5, align 4
  br label %196

177:                                              ; preds = %159
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @pcm_output(%struct.TYPE_12__* %178, i32 0, i32 %179)
  %181 = load i32, i32* %13, align 4
  %182 = load i8*, i8** %7, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %7, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %8, align 8
  %188 = sub i64 %187, %186
  store i64 %188, i64* %8, align 8
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %12, align 4
  br label %77

192:                                              ; preds = %77
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @DBGPV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %12, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %192, %174, %142, %121, %73, %64, %37
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @DBGEV(i8*, %struct.file*, i8*, i64, i32*) #1

declare dso_local i32 @pcm_setup(%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @access_ok(i32, i8*, i64) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @swb_inc_u(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(%struct.TYPE_13__*) #1

declare dso_local i32 @DBGPV(i8*, i32) #1

declare dso_local i64 @copy_from_user(i32*, i8*, i32) #1

declare dso_local i32 @pcm_output(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

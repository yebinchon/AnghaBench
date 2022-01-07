; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_waitq.c_autofs_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_waitq.c_autofs_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_sb_info = type { i64, %struct.autofs_wait_queue* }
%struct.autofs_wait_queue = type { i64, i64, i32, i32, i32, %struct.autofs_wait_queue*, %struct.autofs_wait_queue*, i64 }
%struct.qstr = type { i64, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@autofs_next_wait_queue = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@SHUTDOWN_SIGS = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"autofs_wait: skipped sleeping\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_wait(%struct.autofs_sb_info* %0, %struct.qstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.autofs_sb_info*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.autofs_wait_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.autofs_sb_info* %0, %struct.autofs_sb_info** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %9 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %10 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %201

16:                                               ; preds = %2
  %17 = load %struct.qstr*, %struct.qstr** %5, align 8
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NAME_MAX, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %201

25:                                               ; preds = %16
  %26 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %27 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %26, i32 0, i32 1
  %28 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %27, align 8
  store %struct.autofs_wait_queue* %28, %struct.autofs_wait_queue** %6, align 8
  br label %29

29:                                               ; preds = %67, %25
  %30 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %31 = icmp ne %struct.autofs_wait_queue* %30, null
  br i1 %31, label %32, label %71

32:                                               ; preds = %29
  %33 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %34 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.qstr*, %struct.qstr** %5, align 8
  %37 = getelementptr inbounds %struct.qstr, %struct.qstr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %32
  %41 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %42 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.qstr*, %struct.qstr** %5, align 8
  %45 = getelementptr inbounds %struct.qstr, %struct.qstr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %40
  %49 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %50 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %49, i32 0, i32 5
  %51 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %50, align 8
  %52 = icmp ne %struct.autofs_wait_queue* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %55 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %54, i32 0, i32 5
  %56 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %55, align 8
  %57 = load %struct.qstr*, %struct.qstr** %5, align 8
  %58 = getelementptr inbounds %struct.qstr, %struct.qstr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.qstr*, %struct.qstr** %5, align 8
  %61 = getelementptr inbounds %struct.qstr, %struct.qstr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @memcmp(%struct.autofs_wait_queue* %56, i32 %59, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %53
  br label %71

66:                                               ; preds = %53, %48, %40, %32
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %69 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %68, i32 0, i32 6
  %70 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %69, align 8
  store %struct.autofs_wait_queue* %70, %struct.autofs_wait_queue** %6, align 8
  br label %29

71:                                               ; preds = %65, %29
  %72 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %73 = icmp ne %struct.autofs_wait_queue* %72, null
  br i1 %73, label %149, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @kmalloc(i32 56, i32 %75)
  %77 = bitcast i8* %76 to %struct.autofs_wait_queue*
  store %struct.autofs_wait_queue* %77, %struct.autofs_wait_queue** %6, align 8
  %78 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %79 = icmp ne %struct.autofs_wait_queue* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %201

83:                                               ; preds = %74
  %84 = load %struct.qstr*, %struct.qstr** %5, align 8
  %85 = getelementptr inbounds %struct.qstr, %struct.qstr* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i8* @kmalloc(i32 %87, i32 %88)
  %90 = bitcast i8* %89 to %struct.autofs_wait_queue*
  %91 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %92 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %91, i32 0, i32 5
  store %struct.autofs_wait_queue* %90, %struct.autofs_wait_queue** %92, align 8
  %93 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %94 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %93, i32 0, i32 5
  %95 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %94, align 8
  %96 = icmp ne %struct.autofs_wait_queue* %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %83
  %98 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %99 = call i32 @kfree(%struct.autofs_wait_queue* %98)
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %201

102:                                              ; preds = %83
  %103 = load i32, i32* @autofs_next_wait_queue, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @autofs_next_wait_queue, align 4
  %105 = sext i32 %103 to i64
  %106 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %107 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %106, i32 0, i32 7
  store i64 %105, i64* %107, align 8
  %108 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %109 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %108, i32 0, i32 4
  %110 = call i32 @init_waitqueue_head(i32* %109)
  %111 = load %struct.qstr*, %struct.qstr** %5, align 8
  %112 = getelementptr inbounds %struct.qstr, %struct.qstr* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %115 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.qstr*, %struct.qstr** %5, align 8
  %117 = getelementptr inbounds %struct.qstr, %struct.qstr* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %120 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* @EINTR, align 4
  %122 = sub nsw i32 0, %121
  %123 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %124 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %126 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %125, i32 0, i32 5
  %127 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %126, align 8
  %128 = load %struct.qstr*, %struct.qstr** %5, align 8
  %129 = getelementptr inbounds %struct.qstr, %struct.qstr* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.qstr*, %struct.qstr** %5, align 8
  %132 = getelementptr inbounds %struct.qstr, %struct.qstr* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @memcpy(%struct.autofs_wait_queue* %127, i32 %130, i32 %134)
  %136 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %137 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %136, i32 0, i32 1
  %138 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %137, align 8
  %139 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %140 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %139, i32 0, i32 6
  store %struct.autofs_wait_queue* %138, %struct.autofs_wait_queue** %140, align 8
  %141 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %142 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %143 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %142, i32 0, i32 1
  store %struct.autofs_wait_queue* %141, %struct.autofs_wait_queue** %143, align 8
  %144 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %145 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %144, i32 0, i32 3
  store i32 2, i32* %145, align 4
  %146 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %147 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %148 = call i32 @autofs_notify_daemon(%struct.autofs_sb_info* %146, %struct.autofs_wait_queue* %147)
  br label %154

149:                                              ; preds = %71
  %150 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %151 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %149, %102
  %155 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %156 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  %160 = load i32, i32* @ENOENT, align 4
  %161 = sub nsw i32 0, %160
  %162 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %163 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %165 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %164, i32 0, i32 5
  %166 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %165, align 8
  %167 = call i32 @kfree(%struct.autofs_wait_queue* %166)
  %168 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %169 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %168, i32 0, i32 5
  store %struct.autofs_wait_queue* null, %struct.autofs_wait_queue** %169, align 8
  br label %170

170:                                              ; preds = %159, %154
  %171 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %172 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %171, i32 0, i32 5
  %173 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %172, align 8
  %174 = icmp ne %struct.autofs_wait_queue* %173, null
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = load i32, i32* @SHUTDOWN_SIGS, align 4
  %177 = call i32 @siginitsetinv(i32* %8, i32 %176)
  %178 = load i32, i32* @SIG_BLOCK, align 4
  %179 = call i32 @sigprocmask(i32 %178, i32* %8, i32* %8)
  %180 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %181 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %180, i32 0, i32 4
  %182 = call i32 @interruptible_sleep_on(i32* %181)
  %183 = load i32, i32* @SIG_SETMASK, align 4
  %184 = call i32 @sigprocmask(i32 %183, i32* %8, i32* null)
  br label %187

185:                                              ; preds = %170
  %186 = call i32 @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %175
  %188 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %189 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %7, align 4
  %191 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %192 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* %192, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %187
  %197 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %6, align 8
  %198 = call i32 @kfree(%struct.autofs_wait_queue* %197)
  br label %199

199:                                              ; preds = %196, %187
  %200 = load i32, i32* %7, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %199, %97, %80, %22, %13
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @memcmp(%struct.autofs_wait_queue*, i32, i64) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.autofs_wait_queue*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @memcpy(%struct.autofs_wait_queue*, i32, i32) #1

declare dso_local i32 @autofs_notify_daemon(%struct.autofs_sb_info*, %struct.autofs_wait_queue*) #1

declare dso_local i32 @siginitsetinv(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

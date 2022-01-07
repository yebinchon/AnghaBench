; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c_xprt_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32, i32, %struct.rpc_rqst* }
%struct.rpc_rqst = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)* }

@.str = private unnamed_addr constant [28 x i8] c"RPC: %5u xprt_transmit(%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"RPC: %5u xmit complete\0A\00", align 1
@RPC_TASK_SENT = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@xprt_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_transmit(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 3
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  store %struct.rpc_rqst* %9, %struct.rpc_rqst** %3, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 8
  %12 = load %struct.rpc_xprt*, %struct.rpc_xprt** %11, align 8
  store %struct.rpc_xprt* %12, %struct.rpc_xprt** %4, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %21 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %1
  %25 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %26 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %25, i32 0, i32 4
  %27 = call i64 @list_empty(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %31 = call i64 @rpc_reply_expected(%struct.rpc_task* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %35 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %38 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %37, i32 0, i32 6
  %39 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %40 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %39, i32 0, i32 5
  %41 = call i32 @memcpy(i32* %38, i32* %40, i32 4)
  %42 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %43 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %42, i32 0, i32 4
  %44 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %45 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %44, i32 0, i32 9
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  %47 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %48 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  %50 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %51 = call i32 @xprt_reset_majortimeo(%struct.rpc_rqst* %50)
  %52 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %53 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %52, i32 0, i32 8
  %54 = call i32 @del_singleshot_timer_sync(i32* %53)
  br label %55

55:                                               ; preds = %33, %29, %24
  br label %63

56:                                               ; preds = %1
  %57 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %58 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %202

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %55
  %64 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %65 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %68 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = call i32 (...) @ktime_get()
  %70 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %71 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %73 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %72, i32 0, i32 6
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)** %75, align 8
  %77 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %78 = call i32 %76(%struct.rpc_task* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %63
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %84 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %202

85:                                               ; preds = %63
  %86 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %87 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @RPC_TASK_SENT, align 4
  %91 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %92 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %96 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %95, i32 0, i32 0
  %97 = call i32 @spin_lock_bh(i32* %96)
  %98 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %99 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %98, i32 0, i32 6
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)** %101, align 8
  %103 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %104 = call i32 %102(%struct.rpc_task* %103)
  %105 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %106 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %105, i32 0, i32 5
  %107 = call i32 @atomic_read(i32* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %110 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp sgt i32 %108, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %85
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %117 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  br label %119

119:                                              ; preds = %114, %85
  %120 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %121 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  %125 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %126 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %130 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %128, %132
  %134 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %135 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %133
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 8
  %141 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %142 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %146 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %144
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 4
  %152 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %153 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %157 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %155
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %158, align 8
  %163 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %164 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %168 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %166
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %169, align 4
  %174 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %175 = call i32 @xprt_connected(%struct.rpc_xprt* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %119
  %178 = load i32, i32* @ENOTCONN, align 4
  %179 = sub nsw i32 0, %178
  %180 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %181 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  br label %198

182:                                              ; preds = %119
  %183 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %184 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %197, label %187

187:                                              ; preds = %182
  %188 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %189 = call i64 @rpc_reply_expected(%struct.rpc_task* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %193 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %192, i32 0, i32 1
  %194 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %195 = load i32, i32* @xprt_timer, align 4
  %196 = call i32 @rpc_sleep_on(%struct.TYPE_10__* %193, %struct.rpc_task* %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %187, %182
  br label %198

198:                                              ; preds = %197, %177
  %199 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %200 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %199, i32 0, i32 0
  %201 = call i32 @spin_unlock_bh(i32* %200)
  br label %202

202:                                              ; preds = %198, %81, %61
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @rpc_reply_expected(%struct.rpc_task*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xprt_reset_majortimeo(%struct.rpc_rqst*) #1

declare dso_local i32 @del_singleshot_timer_sync(i32*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @xprt_connected(%struct.rpc_xprt*) #1

declare dso_local i32 @rpc_sleep_on(%struct.TYPE_10__*, %struct.rpc_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

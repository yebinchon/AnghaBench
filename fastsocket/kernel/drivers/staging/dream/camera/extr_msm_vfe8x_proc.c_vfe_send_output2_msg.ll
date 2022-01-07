; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_send_output2_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_send_output2_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.vfe_msg_output = type { i32 }
%struct.vfe_message = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ctrl = common dso_local global %struct.TYPE_6__* null, align 8
@VFE_STATE_ACTIVE = common dso_local global i64 0, align 8
@VFE_MSG_ID_OUTPUT2 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@VFE_START_OPERATION_MODE_SNAPSHOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_msg_output*)* @vfe_send_output2_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_send_output2_msg(%struct.vfe_msg_output* %0) #0 {
  %2 = alloca %struct.vfe_msg_output*, align 8
  %3 = alloca %struct.vfe_message*, align 8
  store %struct.vfe_msg_output* %0, %struct.vfe_msg_output** %2, align 8
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call %struct.vfe_message* @kzalloc(i32 8, i32 %4)
  store %struct.vfe_message* %5, %struct.vfe_message** %3, align 8
  %6 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %7 = icmp ne %struct.vfe_message* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %52

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VFE_STATE_ACTIVE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %17 = call i32 @kfree(%struct.vfe_message* %16)
  br label %51

18:                                               ; preds = %9
  %19 = load i32, i32* @VFE_MSG_ID_OUTPUT2, align 4
  %20 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %21 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %23 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.vfe_msg_output*, %struct.vfe_msg_output** %2, align 8
  %26 = bitcast %struct.vfe_msg_output* %25 to i8*
  %27 = call i32 @memcpy(i32* %24, i8* %26, i32 4)
  %28 = load i32, i32* @VFE_MSG_ID_OUTPUT2, align 4
  %29 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %30 = call i32 @vfe_proc_ops(i32 %28, %struct.vfe_message* %29, i32 8)
  %31 = load i8*, i8** @TRUE, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %37, 3
  br i1 %38, label %50, label %39

39:                                               ; preds = %18
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VFE_START_OPERATION_MODE_SNAPSHOT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i8*, i8** @TRUE, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  br label %50

50:                                               ; preds = %45, %39, %18
  br label %51

51:                                               ; preds = %50, %15
  br label %52

52:                                               ; preds = %51, %8
  ret void
}

declare dso_local %struct.vfe_message* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.vfe_message*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @vfe_proc_ops(i32, %struct.vfe_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

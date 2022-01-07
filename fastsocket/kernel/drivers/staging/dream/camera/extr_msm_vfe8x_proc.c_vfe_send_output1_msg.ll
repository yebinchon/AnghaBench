; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_send_output1_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_send_output1_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.vfe_msg_output = type { i32 }
%struct.vfe_message = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@VFE_STATE_ACTIVE = common dso_local global i64 0, align 8
@VFE_MSG_ID_OUTPUT1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@VFE_START_OPERATION_MODE_SNAPSHOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_msg_output*)* @vfe_send_output1_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_send_output1_msg(%struct.vfe_msg_output* %0) #0 {
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
  br label %51

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VFE_STATE_ACTIVE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %17 = call i32 @kfree(%struct.vfe_message* %16)
  br label %50

18:                                               ; preds = %9
  %19 = load i32, i32* @VFE_MSG_ID_OUTPUT1, align 4
  %20 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %21 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %23 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %22, i32 0, i32 0
  %24 = load %struct.vfe_msg_output*, %struct.vfe_msg_output** %2, align 8
  %25 = bitcast %struct.vfe_msg_output* %24 to i8*
  %26 = call i32 @memmove(i32* %23, i8* %25, i32 4)
  %27 = load i32, i32* @VFE_MSG_ID_OUTPUT1, align 4
  %28 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %29 = call i32 @vfe_proc_ops(i32 %27, %struct.vfe_message* %28, i32 8)
  %30 = load i8*, i8** @TRUE, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp sle i32 %36, 3
  br i1 %37, label %49, label %38

38:                                               ; preds = %18
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VFE_START_OPERATION_MODE_SNAPSHOT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i8*, i8** @TRUE, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  br label %49

49:                                               ; preds = %44, %38, %18
  br label %50

50:                                               ; preds = %49, %15
  br label %51

51:                                               ; preds = %50, %8
  ret void
}

declare dso_local %struct.vfe_message* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.vfe_message*) #1

declare dso_local i32 @memmove(i32*, i8*, i32) #1

declare dso_local i32 @vfe_proc_ops(i32, %struct.vfe_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

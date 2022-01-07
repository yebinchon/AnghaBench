; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_send_af_stats_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_send_af_stats_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.vfe_message = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ctrl = common dso_local global %struct.TYPE_8__* null, align 8
@VFE_STATE_ACTIVE = common dso_local global i64 0, align 8
@VFE_MSG_ID_STATS_AUTOFOCUS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vfe_send_af_stats_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_send_af_stats_msg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfe_message*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call %struct.vfe_message* @kzalloc(i32 12, i32 %4)
  store %struct.vfe_message* %5, %struct.vfe_message** %3, align 8
  %6 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %7 = icmp ne %struct.vfe_message* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %42

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VFE_STATE_ACTIVE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %17 = call i32 @kfree(%struct.vfe_message* %16)
  br label %41

18:                                               ; preds = %9
  %19 = load i32, i32* @VFE_MSG_ID_STATS_AUTOFOCUS, align 4
  %20 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %21 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %24 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %31 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* @VFE_MSG_ID_STATS_AUTOFOCUS, align 4
  %35 = load %struct.vfe_message*, %struct.vfe_message** %3, align 8
  %36 = call i32 @vfe_proc_ops(i32 %34, %struct.vfe_message* %35, i32 12)
  %37 = load i32, i32* @TRUE, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  br label %41

41:                                               ; preds = %18, %15
  br label %42

42:                                               ; preds = %41, %8
  ret void
}

declare dso_local %struct.vfe_message* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.vfe_message*) #1

declare dso_local i32 @vfe_proc_ops(i32, %struct.vfe_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

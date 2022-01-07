; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_send_output_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_send_output_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.vfe_msg_output = type { i32, %struct.TYPE_7__, %struct.TYPE_9__, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@ctrl = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i8*)* @vfe_send_output_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_send_output_msg(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vfe_msg_output, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds %struct.vfe_msg_output, %struct.vfe_msg_output* %7, i32 0, i32 4
  store i8* %8, i8** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds %struct.vfe_msg_output, %struct.vfe_msg_output* %7, i32 0, i32 3
  store i8* %10, i8** %11, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ctrl, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.vfe_msg_output, %struct.vfe_msg_output* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @vfe_send_output2_msg(%struct.vfe_msg_output* %7)
  br label %22

20:                                               ; preds = %3
  %21 = call i32 @vfe_send_output1_msg(%struct.vfe_msg_output* %7)
  br label %22

22:                                               ; preds = %20, %18
  ret void
}

declare dso_local i32 @vfe_send_output2_msg(%struct.vfe_msg_output*) #1

declare dso_local i32 @vfe_send_output1_msg(%struct.vfe_msg_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

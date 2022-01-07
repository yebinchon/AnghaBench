; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_ports.c_snd_seq_event_port_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_ports.c_snd_seq_event_port_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_port_callback = type { i32 }
%struct.snd_seq_port_info = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.snd_seq_port_callback*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"Unamed port\00", align 1
@SNDRV_SEQ_IOCTL_CREATE_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_event_port_attach(i32 %0, %struct.snd_seq_port_callback* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_seq_port_callback*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.snd_seq_port_info, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.snd_seq_port_callback* %1, %struct.snd_seq_port_callback** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %17 = call i32 @memset(%struct.snd_seq_port_info* %15, i32 0, i32 40)
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %15, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %15, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i8*, i8** %14, align 8
  br label %28

27:                                               ; preds = %7
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i8* [ %26, %25 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %27 ]
  %30 = call i32 @strlcpy(i32 %22, i8* %29, i32 4)
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %15, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %15, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.snd_seq_port_callback*, %struct.snd_seq_port_callback** %9, align 8
  %36 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %15, i32 0, i32 5
  store %struct.snd_seq_port_callback* %35, %struct.snd_seq_port_callback** %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %15, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %13, align 4
  %40 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %15, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SNDRV_SEQ_IOCTL_CREATE_PORT, align 4
  %43 = call i32 @snd_seq_kernel_client_ctl(i32 %41, i32 %42, %struct.snd_seq_port_info* %15)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %15, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %16, align 4
  br label %50

50:                                               ; preds = %46, %28
  %51 = load i32, i32* %16, align 4
  ret i32 %51
}

declare dso_local i32 @memset(%struct.snd_seq_port_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snd_seq_kernel_client_ctl(i32, i32, %struct.snd_seq_port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_set_stream_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_set_stream_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.vx_pipe = type { i32, i64 }
%struct.vx_rmh = type { i32*, i64 }

@CMD_FORMAT_STREAM_IN = common dso_local global i32 0, align 4
@CMD_FORMAT_STREAM_OUT = common dso_local global i32 0, align 4
@FIELD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, %struct.vx_pipe*, i32)* @vx_set_stream_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_set_stream_format(%struct.vx_core* %0, %struct.vx_pipe* %1, i32 %2) #0 {
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca %struct.vx_pipe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vx_rmh, align 8
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store %struct.vx_pipe* %1, %struct.vx_pipe** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %9 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @CMD_FORMAT_STREAM_IN, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @CMD_FORMAT_STREAM_OUT, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = call i32 @vx_init_rmh(%struct.vx_rmh* %7, i32 %17)
  %19 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %20 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FIELD_SIZE, align 4
  %23 = shl i32 %21, %22
  %24 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %7, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %30 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %31 = call i32 @vx_set_differed_time(%struct.vx_core* %29, %struct.vx_rmh* %7, %struct.vx_pipe* %30)
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, -256
  %34 = lshr i32 %33, 8
  %35 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %7, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %7, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 255
  %42 = shl i32 %41, 16
  %43 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %7, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %7, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %42, i32* %48, align 4
  %49 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %7, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 2
  store i64 %51, i64* %49, align 8
  %52 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %53 = call i32 @vx_send_msg(%struct.vx_core* %52, %struct.vx_rmh* %7)
  ret i32 %53
}

declare dso_local i32 @vx_init_rmh(%struct.vx_rmh*, i32) #1

declare dso_local i32 @vx_set_differed_time(%struct.vx_core*, %struct.vx_rmh*, %struct.vx_pipe*) #1

declare dso_local i32 @vx_send_msg(%struct.vx_core*, %struct.vx_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

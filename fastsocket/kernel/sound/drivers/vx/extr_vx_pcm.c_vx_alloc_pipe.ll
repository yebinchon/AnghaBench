; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_alloc_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_alloc_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.vx_pipe = type { i32, i32, i32, i32, i64, i64 }
%struct.vx_rmh = type { i32* }

@CMD_RES_PIPE = common dso_local global i32 0, align 4
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@BIT_DATA_MODE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CMD_FREE_PIPE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BIT_SKIP_SOUND = common dso_local global i32 0, align 4
@underrun_skip_sound = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, i32, i32, i32, %struct.vx_pipe**)* @vx_alloc_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_alloc_pipe(%struct.vx_core* %0, i32 %1, i32 %2, i32 %3, %struct.vx_pipe** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vx_core*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vx_pipe**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vx_pipe*, align 8
  %14 = alloca %struct.vx_rmh, align 8
  %15 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.vx_pipe** %4, %struct.vx_pipe*** %11, align 8
  %16 = load %struct.vx_pipe**, %struct.vx_pipe*** %11, align 8
  store %struct.vx_pipe* null, %struct.vx_pipe** %16, align 8
  %17 = load i32, i32* @CMD_RES_PIPE, align 4
  %18 = call i32 @vx_init_rmh(%struct.vx_rmh* %14, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @vx_set_pipe_cmd_params(%struct.vx_rmh* %14, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.vx_core*, %struct.vx_core** %7, align 8
  %24 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* @BIT_DATA_MODE, align 4
  %37 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %14, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %35, %32, %5
  %43 = load %struct.vx_core*, %struct.vx_core** %7, align 8
  %44 = call i32 @vx_send_msg(%struct.vx_core* %43, %struct.vx_rmh* %14)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %83

49:                                               ; preds = %42
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.vx_pipe* @kzalloc(i32 32, i32 %50)
  store %struct.vx_pipe* %51, %struct.vx_pipe** %13, align 8
  %52 = load %struct.vx_pipe*, %struct.vx_pipe** %13, align 8
  %53 = icmp ne %struct.vx_pipe* %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @CMD_FREE_PIPE, align 4
  %56 = call i32 @vx_init_rmh(%struct.vx_rmh* %14, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @vx_set_pipe_cmd_params(%struct.vx_rmh* %14, i32 %57, i32 %58, i32 0)
  %60 = load %struct.vx_core*, %struct.vx_core** %7, align 8
  %61 = call i32 @vx_send_msg(%struct.vx_core* %60, %struct.vx_rmh* %14)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %83

64:                                               ; preds = %49
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.vx_pipe*, %struct.vx_pipe** %13, align 8
  %67 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.vx_pipe*, %struct.vx_pipe** %13, align 8
  %70 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.vx_pipe*, %struct.vx_pipe** %13, align 8
  %73 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.vx_pipe*, %struct.vx_pipe** %13, align 8
  %75 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.vx_pipe*, %struct.vx_pipe** %13, align 8
  %77 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.vx_pipe*, %struct.vx_pipe** %13, align 8
  %80 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.vx_pipe*, %struct.vx_pipe** %13, align 8
  %82 = load %struct.vx_pipe**, %struct.vx_pipe*** %11, align 8
  store %struct.vx_pipe* %81, %struct.vx_pipe** %82, align 8
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %64, %54, %47
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @vx_init_rmh(%struct.vx_rmh*, i32) #1

declare dso_local i32 @vx_set_pipe_cmd_params(%struct.vx_rmh*, i32, i32, i32) #1

declare dso_local i32 @vx_send_msg(%struct.vx_core*, %struct.vx_rmh*) #1

declare dso_local %struct.vx_pipe* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

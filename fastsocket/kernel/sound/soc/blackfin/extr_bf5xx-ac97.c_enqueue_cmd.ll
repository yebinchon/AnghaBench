; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-ac97.c_enqueue_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-ac97.c_enqueue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sport_device = type { i32, i64 }
%struct.snd_ac97 = type { i32 }
%struct.ac97_frame = type { i32, i32, i32 }

@sport_handle = common dso_local global %struct.sport_device* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"sport->tx_buf:%p, nextfrag:0x%x nextwrite:%p, cmd_count:%d\0A\00", align 1
@cmd_count = common dso_local global i64* null, align 8
@TAG_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"ac97_sport: Inserting %02x/%04x into fragment %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i32, i32)* @enqueue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_cmd(%struct.snd_ac97* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sport_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ac97_frame*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sport_device*, %struct.sport_device** @sport_handle, align 8
  store %struct.sport_device* %10, %struct.sport_device** %7, align 8
  %11 = load %struct.sport_device*, %struct.sport_device** %7, align 8
  %12 = call i32 @sport_tx_curr_frag(%struct.sport_device* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.sport_device*, %struct.sport_device** %7, align 8
  %14 = call i32 @sport_incfrag(%struct.sport_device* %13, i32* %8, i32 1)
  %15 = load %struct.sport_device*, %struct.sport_device** %7, align 8
  %16 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.sport_device*, %struct.sport_device** %7, align 8
  %20 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %17, %23
  %25 = inttoptr i64 %24 to %struct.ac97_frame*
  store %struct.ac97_frame* %25, %struct.ac97_frame** %9, align 8
  %26 = load %struct.sport_device*, %struct.sport_device** %7, align 8
  %27 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ac97_frame*, %struct.ac97_frame** %9, align 8
  %32 = load i64*, i64** @cmd_count, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, %struct.ac97_frame* %31, i64 %36)
  %38 = load i32, i32* @TAG_CMD, align 4
  %39 = load %struct.ac97_frame*, %struct.ac97_frame** %9, align 8
  %40 = load i64*, i64** @cmd_count, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.ac97_frame, %struct.ac97_frame* %39, i64 %44
  %46 = getelementptr inbounds %struct.ac97_frame, %struct.ac97_frame* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %38
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.ac97_frame*, %struct.ac97_frame** %9, align 8
  %51 = load i64*, i64** @cmd_count, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.ac97_frame, %struct.ac97_frame* %50, i64 %55
  %57 = getelementptr inbounds %struct.ac97_frame, %struct.ac97_frame* %56, i32 0, i32 0
  store i32 %49, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.ac97_frame*, %struct.ac97_frame** %9, align 8
  %60 = load i64*, i64** @cmd_count, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.ac97_frame, %struct.ac97_frame* %59, i64 %64
  %66 = getelementptr inbounds %struct.ac97_frame, %struct.ac97_frame* %65, i32 0, i32 1
  store i32 %58, i32* %66, align 4
  %67 = load i64*, i64** @cmd_count, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load i32, i32* %5, align 4
  %74 = ashr i32 %73, 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @sport_tx_curr_frag(%struct.sport_device*) #1

declare dso_local i32 @sport_incfrag(%struct.sport_device*, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

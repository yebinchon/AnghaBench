; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_output_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_output_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i32, i32, i64, %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { i32, i8*, i32, i32 }
%struct.snd_rawmidi_params = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_rawmidi_output_params(%struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_rawmidi_substream*, align 8
  %5 = alloca %struct.snd_rawmidi_params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.snd_rawmidi_runtime*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %4, align 8
  store %struct.snd_rawmidi_params* %1, %struct.snd_rawmidi_params** %5, align 8
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 3
  %10 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %9, align 8
  store %struct.snd_rawmidi_runtime* %10, %struct.snd_rawmidi_runtime** %7, align 8
  %11 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %106

23:                                               ; preds = %15, %2
  %24 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %25 = call i32 @snd_rawmidi_drain_output(%struct.snd_rawmidi_substream* %24)
  %26 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %27 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 32
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %32 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp sgt i64 %34, 1048576
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %23
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %106

39:                                               ; preds = %30
  %40 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %41 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %46 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %49 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44, %39
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %106

55:                                               ; preds = %44
  %56 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %57 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %60 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %55
  %64 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %65 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kmalloc(i32 %66, i32 %67)
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %106

74:                                               ; preds = %63
  %75 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %76 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @kfree(i8* %77)
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %81 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %83 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %86 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %88 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %91 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %74, %55
  %93 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %94 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %97 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %99 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %105 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %92, %71, %52, %36, %20
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @snd_rawmidi_drain_output(%struct.snd_rawmidi_substream*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

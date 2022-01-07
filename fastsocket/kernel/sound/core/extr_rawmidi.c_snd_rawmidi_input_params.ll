; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_input_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_input_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { i32, i8*, i32 }
%struct.snd_rawmidi_params = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_rawmidi_input_params(%struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_rawmidi_substream*, align 8
  %5 = alloca %struct.snd_rawmidi_params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.snd_rawmidi_runtime*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %4, align 8
  store %struct.snd_rawmidi_params* %1, %struct.snd_rawmidi_params** %5, align 8
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %9, align 8
  store %struct.snd_rawmidi_runtime* %10, %struct.snd_rawmidi_runtime** %7, align 8
  %11 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %12 = call i32 @snd_rawmidi_drain_input(%struct.snd_rawmidi_substream* %11)
  %13 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %14 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %19 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp sgt i64 %21, 1048576
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %80

26:                                               ; preds = %17
  %27 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %28 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %33 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %36 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31, %26
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %80

42:                                               ; preds = %31
  %43 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %44 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %47 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %42
  %51 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %52 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kmalloc(i32 %53, i32 %54)
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %80

61:                                               ; preds = %50
  %62 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %63 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @kfree(i8* %64)
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %68 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %70 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %73 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %61, %42
  %75 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %5, align 8
  %76 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %7, align 8
  %79 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %58, %39, %23
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @snd_rawmidi_drain_input(%struct.snd_rawmidi_substream*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

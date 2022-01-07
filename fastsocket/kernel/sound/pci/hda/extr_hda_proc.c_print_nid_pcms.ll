; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_nid_pcms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_nid_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32, %struct.hda_pcm* }
%struct.hda_pcm = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"  Device: name=\22%s\22, type=\22%s\22, device=%i\0A\00", align 1
@snd_hda_pcm_type_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i64)* @print_nid_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_nid_pcms(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i64 %2) #0 {
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_pcm*, align 8
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %4, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %64, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %10
  %17 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 1
  %19 = load %struct.hda_pcm*, %struct.hda_pcm** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %19, i64 %21
  store %struct.hda_pcm* %22, %struct.hda_pcm** %9, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %60, %16
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %63

26:                                               ; preds = %23
  %27 = load %struct.hda_pcm*, %struct.hda_pcm** %9, align 8
  %28 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = load %struct.hda_pcm*, %struct.hda_pcm** %9, align 8
  %39 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp eq %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %26
  br label %60

43:                                               ; preds = %37
  %44 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %45 = load %struct.hda_pcm*, %struct.hda_pcm** %9, align 8
  %46 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** @snd_hda_pcm_type_name, align 8
  %49 = load %struct.hda_pcm*, %struct.hda_pcm** %9, align 8
  %50 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hda_pcm*, %struct.hda_pcm** %9, align 8
  %55 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snd_iprintf(%struct.snd_info_buffer* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %43, %42
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %23

63:                                               ; preds = %23
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %10

67:                                               ; preds = %10
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_free_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_free_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { i32 }
%struct.snd_ali_voice = type { void (i8*)*, i32*, i64, i64, i64, i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"free_voice: channel=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ali*, %struct.snd_ali_voice*)* @snd_ali_free_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ali_free_voice(%struct.snd_ali* %0, %struct.snd_ali_voice* %1) #0 {
  %3 = alloca %struct.snd_ali*, align 8
  %4 = alloca %struct.snd_ali_voice*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  store %struct.snd_ali* %0, %struct.snd_ali** %3, align 8
  store %struct.snd_ali_voice* %1, %struct.snd_ali_voice** %4, align 8
  %7 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %8 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @snd_ali_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %66

16:                                               ; preds = %2
  %17 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %18 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @snd_ali_clear_voices(%struct.snd_ali* %17, i32 %20, i32 %23)
  %25 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %26 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %28, i32 0, i32 0
  %30 = load void (i8*)*, void (i8*)** %29, align 8
  store void (i8*)* %30, void (i8*)** %5, align 8
  %31 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = bitcast i32* %33 to i8*
  store i8* %34, i8** %6, align 8
  %35 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %35, i32 0, i32 0
  store void (i8*)* null, void (i8*)** %36, align 8
  %37 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %37, i32 0, i32 6
  store i32* null, i32** %38, align 8
  %39 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %40 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %16
  %44 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %45 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %46 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @snd_ali_free_channel_pcm(%struct.snd_ali* %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %16
  %50 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %51 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %55 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %4, align 8
  %57 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %59 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_irq(i32* %59)
  %61 = load void (i8*)*, void (i8*)** %5, align 8
  %62 = icmp ne void (i8*)* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load void (i8*)*, void (i8*)** %5, align 8
  %65 = load i8*, i8** %6, align 8
  call void %64(i8* %65)
  br label %66

66:                                               ; preds = %15, %63, %49
  ret void
}

declare dso_local i32 @snd_ali_printk(i8*, i32) #1

declare dso_local i32 @snd_ali_clear_voices(%struct.snd_ali*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_ali_free_channel_pcm(%struct.snd_ali*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

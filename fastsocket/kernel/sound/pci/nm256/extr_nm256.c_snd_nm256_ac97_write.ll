; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_ac97_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.nm256* }
%struct.nm256 = type { i16*, i64 }

@.str = private unnamed_addr constant [31 x i8] c"nm256: ac97 codec not ready..\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_nm256_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_nm256_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.nm256*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %11, i32 0, i32 0
  %13 = load %struct.nm256*, %struct.nm256** %12, align 8
  store %struct.nm256* %13, %struct.nm256** %7, align 8
  store i32 2, i32* %8, align 4
  %14 = load i16, i16* %5, align 2
  %15 = call i32 @nm256_ac97_idx(i16 zeroext %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.nm256*, %struct.nm256** %7, align 8
  %21 = getelementptr inbounds %struct.nm256, %struct.nm256* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.nm256*, %struct.nm256** %7, align 8
  %24 = call i64 @snd_nm256_ac97_ready(%struct.nm256* %23)
  br label %25

25:                                               ; preds = %49, %19
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %8, align 4
  %28 = icmp sgt i32 %26, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.nm256*, %struct.nm256** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i16, i16* %5, align 2
  %33 = zext i16 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i16, i16* %6, align 2
  %36 = call i32 @snd_nm256_writew(%struct.nm256* %30, i64 %34, i16 zeroext %35)
  %37 = call i32 @msleep(i32 1)
  %38 = load %struct.nm256*, %struct.nm256** %7, align 8
  %39 = call i64 @snd_nm256_ac97_ready(%struct.nm256* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load i16, i16* %6, align 2
  %43 = load %struct.nm256*, %struct.nm256** %7, align 8
  %44 = getelementptr inbounds %struct.nm256, %struct.nm256* %43, i32 0, i32 0
  %45 = load i16*, i16** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i16, i16* %45, i64 %47
  store i16 %42, i16* %48, align 2
  br label %52

49:                                               ; preds = %29
  br label %25

50:                                               ; preds = %25
  %51 = call i32 @snd_printd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %41, %18
  ret void
}

declare dso_local i32 @nm256_ac97_idx(i16 zeroext) #1

declare dso_local i64 @snd_nm256_ac97_ready(%struct.nm256*) #1

declare dso_local i32 @snd_nm256_writew(%struct.nm256*, i64, i16 zeroext) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_printd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

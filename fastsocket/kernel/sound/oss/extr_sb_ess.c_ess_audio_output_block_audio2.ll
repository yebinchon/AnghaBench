; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_audio_output_block_audio2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_audio_output_block_audio2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@audio_devs = common dso_local global %struct.TYPE_8__** null, align 8
@IMODE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32)* @ess_audio_output_block_audio2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ess_audio_output_block_audio2(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i16, align 2
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @audio_devs, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %13, i64 %15
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 0, %20
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %11, align 2
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @audio_devs, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %23, i64 %25
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 3
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = load i16, i16* %11, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = call i32 @ess_setmixer(%struct.TYPE_7__* %39, i32 116, i8 zeroext %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = load i16, i16* %11, align 2
  %47 = zext i16 %46 to i32
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = call i32 @ess_setmixer(%struct.TYPE_7__* %45, i32 118, i8 zeroext %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = call i32 @ess_chgmixer(%struct.TYPE_7__* %52, i32 120, i32 3, i32 3)
  %54 = load i32, i32* @IMODE_OUTPUT, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  ret void
}

declare dso_local i32 @ess_setmixer(%struct.TYPE_7__*, i32, i8 zeroext) #1

declare dso_local i32 @ess_chgmixer(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

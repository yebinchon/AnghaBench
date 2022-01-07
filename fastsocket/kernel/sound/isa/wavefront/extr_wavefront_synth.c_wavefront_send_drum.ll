; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_send_drum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_send_drum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@WF_DRUM_BYTES = common dso_local global i32 0, align 4
@WF_DEBUG_LOAD_PATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"downloading edrum for MIDI note %d, patch = %d\0A\00", align 1
@WFC_DOWNLOAD_EDRUM_PROGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"download drum failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @wavefront_send_drum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavefront_send_drum(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %11 = load i32, i32* @WF_DRUM_BYTES, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %8, align 8
  %18 = load i32, i32* @WF_DEBUG_LOAD_PATCH, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DPRINT(i32 %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 127
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %30, i8* %31, align 16
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %48, %2
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = bitcast %struct.TYPE_7__* %36 to i8*
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 %42, 2
  %44 = add nsw i32 1, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %14, i64 %45
  %47 = call i32 @munge_int32(i8 zeroext %41, i8* %46, i32 2)
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @WFC_DOWNLOAD_EDRUM_PROGRAM, align 4
  %54 = call i64 @snd_wavefront_cmd(i32* %52, i32 %53, i32* null, i8* %14)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = call i32 @snd_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %61

60:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DPRINT(i32, i8*, i32, i32) #2

declare dso_local i32 @munge_int32(i8 zeroext, i8*, i32) #2

declare dso_local i64 @snd_wavefront_cmd(i32*, i32, i32*, i8*) #2

declare dso_local i32 @snd_printk(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

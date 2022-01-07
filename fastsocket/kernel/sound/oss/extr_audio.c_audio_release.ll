; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_audio.c_audio_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_audio.c_audio_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.coproc_operations*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.coproc_operations = type { i32, i32, i32 (i32, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { i32 }

@audio_devs = common dso_local global %struct.TYPE_8__** null, align 8
@OPEN_WRITE = common dso_local global i32 0, align 4
@COPR_PCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_release(i32 %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.coproc_operations*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = call i32 @translate_mode(%struct.file* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = ashr i32 %9, 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @audio_devs, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %11, i64 %13
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @audio_devs, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %19, i64 %21
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @OPEN_WRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @sync_output(i32 %32)
  br label %34

34:                                               ; preds = %31, %2
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @audio_devs, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %35, i64 %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.coproc_operations*, %struct.coproc_operations** %40, align 8
  store %struct.coproc_operations* %41, %struct.coproc_operations** %5, align 8
  %42 = icmp ne %struct.coproc_operations* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %34
  %44 = load %struct.coproc_operations*, %struct.coproc_operations** %5, align 8
  %45 = getelementptr inbounds %struct.coproc_operations, %struct.coproc_operations* %44, i32 0, i32 2
  %46 = load i32 (i32, i32)*, i32 (i32, i32)** %45, align 8
  %47 = load %struct.coproc_operations*, %struct.coproc_operations** %5, align 8
  %48 = getelementptr inbounds %struct.coproc_operations, %struct.coproc_operations* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @COPR_PCM, align 4
  %51 = call i32 %46(i32 %49, i32 %50)
  %52 = load %struct.coproc_operations*, %struct.coproc_operations** %5, align 8
  %53 = getelementptr inbounds %struct.coproc_operations, %struct.coproc_operations* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @module_put(i32 %54)
  br label %56

56:                                               ; preds = %43, %34
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @DMAbuf_release(i32 %57, i32 %58)
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @audio_devs, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %60, i64 %62
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @module_put(i32 %68)
  ret void
}

declare dso_local i32 @translate_mode(%struct.file*) #1

declare dso_local i32 @sync_output(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @DMAbuf_release(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

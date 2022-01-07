; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_audio.c_set_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_audio.c_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@AFMT_QUERY = common dso_local global i32 0, align 4
@audio_devs = common dso_local global %struct.TYPE_4__** null, align 8
@AFMT_MU_LAW = common dso_local global i32 0, align 4
@AFMT_U8 = common dso_local global i32 0, align 4
@CNV_MU_LAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_format(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AFMT_QUERY, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %68

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %10, i64 %12
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %9
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @AFMT_MU_LAW, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* @AFMT_U8, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @CNV_MU_LAW, align 4
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %32, i32* %38, align 8
  br label %41

39:                                               ; preds = %26
  %40 = load i32, i32* @AFMT_U8, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %30
  br label %42

42:                                               ; preds = %41, %9
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (i32, i32)*, i32 (i32, i32)** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 %51(i32 %52, i32 %53)
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  store i32 %54, i32* %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %62, i64 %64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32 %61, i32* %67, align 8
  br label %76

68:                                               ; preds = %2
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %3, align 4
  br label %101

76:                                               ; preds = %42
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 %79
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %86, i64 %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %3, align 4
  br label %101

93:                                               ; preds = %76
  %94 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @audio_devs, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %94, i64 %96
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %93, %85, %68
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

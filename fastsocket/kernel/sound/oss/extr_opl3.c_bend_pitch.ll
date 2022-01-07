; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_opl3.c_bend_pitch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_opl3.c_bend_pitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical_voice_info = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@pv_map = common dso_local global %struct.physical_voice_info* null, align 8
@devc = common dso_local global %struct.TYPE_4__* null, align 8
@FNUM_LOW = common dso_local global i64 0, align 8
@KEYON_BLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @bend_pitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bend_pitch(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.physical_voice_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.physical_voice_info*, %struct.physical_voice_info** @pv_map, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %12, i64 %19
  store %struct.physical_voice_info* %20, %struct.physical_voice_info** %11, align 8
  %21 = load %struct.physical_voice_info*, %struct.physical_voice_info** %11, align 8
  %22 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %127

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %27, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %127

38:                                               ; preds = %26
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %127

50:                                               ; preds = %38
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @compute_finetune(i32 %58, i32 %66, i32 %74, i32 0)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 %76, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @freq_to_fnum(i32 %84, i32* %8, i32* %9)
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 255
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %7, align 1
  %89 = load %struct.physical_voice_info*, %struct.physical_voice_info** %11, align 8
  %90 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* @FNUM_LOW, align 8
  %93 = load %struct.physical_voice_info*, %struct.physical_voice_info** %11, align 8
  %94 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = load i8, i8* %7, align 1
  %98 = call i32 @opl3_command(i32 %91, i64 %96, i8 zeroext %97)
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, 7
  %101 = shl i32 %100, 2
  %102 = or i32 32, %101
  %103 = load i32, i32* %9, align 4
  %104 = ashr i32 %103, 8
  %105 = and i32 %104, 3
  %106 = or i32 %102, %105
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %7, align 1
  %108 = load i8, i8* %7, align 1
  %109 = zext i8 %108 to i32
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32 %109, i32* %116, align 4
  %117 = load %struct.physical_voice_info*, %struct.physical_voice_info** %11, align 8
  %118 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* @KEYON_BLOCK, align 8
  %121 = load %struct.physical_voice_info*, %struct.physical_voice_info** %11, align 8
  %122 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = load i8, i8* %7, align 1
  %126 = call i32 @opl3_command(i32 %119, i64 %124, i8 zeroext %125)
  br label %127

127:                                              ; preds = %50, %49, %37, %25
  ret void
}

declare dso_local i32 @compute_finetune(i32, i32, i32, i32) #1

declare dso_local i32 @freq_to_fnum(i32, i32*, i32*) #1

declare dso_local i32 @opl3_command(i32, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

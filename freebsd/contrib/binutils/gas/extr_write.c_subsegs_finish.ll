; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_write.c_subsegs_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_write.c_subsegs_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32*, i64 }
%struct.frchain = type { i32, %struct.frchain* }
%struct.TYPE_13__ = type { %struct.frchain* }

@stdoutput = common dso_local global %struct.TYPE_16__* null, align 8
@now_seg = common dso_local global %struct.TYPE_15__* null, align 8
@SEC_MERGE = common dso_local global i32 0, align 4
@frag_now = common dso_local global %struct.TYPE_17__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @subsegs_finish() #0 {
  %1 = alloca %struct.frchain*, align 8
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** @stdoutput, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %2, align 8
  br label %10

10:                                               ; preds = %98, %0
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %102

13:                                               ; preds = %10
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = call %struct.TYPE_13__* @seg_info(%struct.TYPE_14__* %14)
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %3, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %98

19:                                               ; preds = %13
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.frchain*, %struct.frchain** %21, align 8
  store %struct.frchain* %22, %struct.frchain** %1, align 8
  br label %23

23:                                               ; preds = %93, %19
  %24 = load %struct.frchain*, %struct.frchain** %1, align 8
  %25 = icmp ne %struct.frchain* %24, null
  br i1 %25, label %26, label %97

26:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = load %struct.frchain*, %struct.frchain** %1, align 8
  %29 = getelementptr inbounds %struct.frchain, %struct.frchain* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @subseg_set(%struct.TYPE_14__* %27, i32 %30)
  %32 = call i32 (...) @had_errors()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %72, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** @now_seg, align 8
  %36 = load %struct.frchain*, %struct.frchain** %1, align 8
  %37 = call i32 @SUB_SEGMENT_ALIGN(%struct.TYPE_15__* %35, %struct.frchain* %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** @now_seg, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** @now_seg, align 8
  %42 = call i32 @bfd_get_section_flags(i32 %40, %struct.TYPE_15__* %41)
  %43 = load i32, i32* @SEC_MERGE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %34
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** @now_seg, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** @now_seg, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %59, %51
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = lshr i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %55

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %64
  br label %71

71:                                               ; preds = %70, %46, %34
  br label %72

72:                                               ; preds = %71, %26
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** @now_seg, align 8
  %74 = call i64 @subseg_text_p(%struct.TYPE_15__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @frag_align_code(i32 %77, i32 0)
  br label %82

79:                                               ; preds = %72
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @frag_align(i32 %80, i32 0, i32 0)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** @frag_now, align 8
  %84 = call i32 @frag_wane(%struct.TYPE_17__* %83)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** @frag_now, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** @frag_now, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i32 @know(i32 %91)
  br label %93

93:                                               ; preds = %82
  %94 = load %struct.frchain*, %struct.frchain** %1, align 8
  %95 = getelementptr inbounds %struct.frchain, %struct.frchain* %94, i32 0, i32 1
  %96 = load %struct.frchain*, %struct.frchain** %95, align 8
  store %struct.frchain* %96, %struct.frchain** %1, align 8
  br label %23

97:                                               ; preds = %23
  br label %98

98:                                               ; preds = %97, %18
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %2, align 8
  br label %10

102:                                              ; preds = %10
  ret void
}

declare dso_local %struct.TYPE_13__* @seg_info(%struct.TYPE_14__*) #1

declare dso_local i32 @subseg_set(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @had_errors(...) #1

declare dso_local i32 @SUB_SEGMENT_ALIGN(%struct.TYPE_15__*, %struct.frchain*) #1

declare dso_local i32 @bfd_get_section_flags(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @subseg_text_p(%struct.TYPE_15__*) #1

declare dso_local i32 @frag_align_code(i32, i32) #1

declare dso_local i32 @frag_align(i32, i32, i32) #1

declare dso_local i32 @frag_wane(%struct.TYPE_17__*) #1

declare dso_local i32 @know(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

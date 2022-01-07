; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_send_sysex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_send_sysex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i8)* }

@synth_devs = common dso_local global %struct.TYPE_3__** null, align 8
@sysex_state = common dso_local global i32* null, align 8
@midi_devs = common dso_local global %struct.TYPE_4__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midi_synth_send_sysex(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %11, i64 %13
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %138, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %141

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  switch i32 %28, label %52 [
    i32 240, label %29
    i32 247, label %39
  ]

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @prefix_cmd(i32 %30, i32 240)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %142

34:                                               ; preds = %29
  %35 = load i32*, i32** @sysex_state, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 1, i32* %38, align 4
  br label %79

39:                                               ; preds = %22
  %40 = load i32*, i32** @sysex_state, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %142

47:                                               ; preds = %39
  %48 = load i32*, i32** @sysex_state, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 0, i32* %51, align 4
  br label %79

52:                                               ; preds = %22
  %53 = load i32*, i32** @sysex_state, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %142

60:                                               ; preds = %52
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 -9, i8* %73, align 1
  %74 = load i32*, i32** @sysex_state, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %69, %60
  br label %79

79:                                               ; preds = %78, %47, %34
  %80 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @midi_devs, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %80, i64 %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32 (i32, i8)*, i32 (i32, i8)** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = call i32 %86(i32 %87, i8 zeroext %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %129, label %95

95:                                               ; preds = %79
  store i32 0, i32* %10, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  store i8 -9, i8* %99, align 1
  %100 = load i32*, i32** @sysex_state, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %125, %95
  %105 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @midi_devs, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %105, i64 %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32 (i32, i8)*, i32 (i32, i8)** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = call i32 %111(i32 %112, i8 zeroext %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %104
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %121, 1000
  br label %123

123:                                              ; preds = %120, %104
  %124 = phi i1 [ false, %104 ], [ %122, %120 ]
  br i1 %124, label %125, label %128

125:                                              ; preds = %123
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %104

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %79
  %130 = load i32*, i32** @sysex_state, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %142

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %18

141:                                              ; preds = %18
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %136, %59, %46, %33
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @prefix_cmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

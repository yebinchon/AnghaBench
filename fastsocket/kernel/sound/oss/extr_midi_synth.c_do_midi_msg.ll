; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_do_midi_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_do_midi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_midi_msg(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 240
  switch i32 %11, label %134 [
    i32 144, label %12
    i32 128, label %37
    i32 160, label %53
    i32 176, label %69
    i32 192, label %85
    i32 208, label %98
    i32 224, label %111
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 15
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @SEQ_START_NOTE(i32 %19, i8 zeroext %25, i8 zeroext %28, i8 zeroext %31)
  %33 = call i32 @STORE(i32 %32)
  br label %135

34:                                               ; preds = %12
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8 64, i8* %36, align 1
  br label %37

37:                                               ; preds = %3, %34
  %38 = load i32, i32* %4, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 15
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @SEQ_STOP_NOTE(i32 %38, i8 zeroext %44, i8 zeroext %47, i8 zeroext %50)
  %52 = call i32 @STORE(i32 %51)
  br label %135

53:                                               ; preds = %3
  %54 = load i32, i32* %4, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 15
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @SEQ_KEY_PRESSURE(i32 %54, i8 zeroext %60, i8 zeroext %63, i8 zeroext %66)
  %68 = call i32 @STORE(i32 %67)
  br label %135

69:                                               ; preds = %3
  %70 = load i32, i32* %4, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 15
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @SEQ_CONTROL(i32 %70, i8 zeroext %76, i8 zeroext %79, i8 zeroext %82)
  %84 = call i32 @STORE(i32 %83)
  br label %135

85:                                               ; preds = %3
  %86 = load i32, i32* %4, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 15
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = call i32 @SEQ_SET_PATCH(i32 %86, i8 zeroext %92, i8 zeroext %95)
  %97 = call i32 @STORE(i32 %96)
  br label %135

98:                                               ; preds = %3
  %99 = load i32, i32* %4, align 4
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 15
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = call i32 @SEQ_CHN_PRESSURE(i32 %99, i8 zeroext %105, i8 zeroext %108)
  %110 = call i32 @STORE(i32 %109)
  br label %135

111:                                              ; preds = %3
  %112 = load i32, i32* %4, align 4
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 15
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 127
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 127
  %129 = shl i32 %128, 7
  %130 = or i32 %123, %129
  %131 = trunc i32 %130 to i8
  %132 = call i32 @SEQ_BENDER(i32 %112, i8 zeroext %118, i8 zeroext %131)
  %133 = call i32 @STORE(i32 %132)
  br label %135

134:                                              ; preds = %3
  br label %135

135:                                              ; preds = %134, %111, %98, %85, %69, %53, %37, %18
  ret void
}

declare dso_local i32 @STORE(i32) #1

declare dso_local i32 @SEQ_START_NOTE(i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @SEQ_STOP_NOTE(i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @SEQ_KEY_PRESSURE(i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @SEQ_CONTROL(i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @SEQ_SET_PATCH(i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @SEQ_CHN_PRESSURE(i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @SEQ_BENDER(i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

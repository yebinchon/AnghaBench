; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000.c_snd_emu8000_update_equalizer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000.c_snd_emu8000_update_equalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32, i32 }

@bass_parm = common dso_local global i16** null, align 8
@treble_parm = common dso_local global i16** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emu8000_update_equalizer(%struct.snd_emu8000* %0) #0 {
  %2 = alloca %struct.snd_emu8000*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %2, align 8
  %6 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %7 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %10 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 11
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 11
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %14, %1
  br label %145

24:                                               ; preds = %20
  %25 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %26 = load i16**, i16*** @bass_parm, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16*, i16** %26, i64 %28
  %30 = load i16*, i16** %29, align 8
  %31 = getelementptr inbounds i16, i16* %30, i64 0
  %32 = load i16, i16* %31, align 2
  %33 = call i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000* %25, i32 1, i16 zeroext %32)
  %34 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %35 = load i16**, i16*** @bass_parm, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16*, i16** %35, i64 %37
  %39 = load i16*, i16** %38, align 8
  %40 = getelementptr inbounds i16, i16* %39, i64 1
  %41 = load i16, i16* %40, align 2
  %42 = call i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000* %34, i32 17, i16 zeroext %41)
  %43 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %44 = load i16**, i16*** @treble_parm, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i16*, i16** %44, i64 %46
  %48 = load i16*, i16** %47, align 8
  %49 = getelementptr inbounds i16, i16* %48, i64 0
  %50 = load i16, i16* %49, align 2
  %51 = call i32 @EMU8000_INIT3_WRITE(%struct.snd_emu8000* %43, i32 17, i16 zeroext %50)
  %52 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %53 = load i16**, i16*** @treble_parm, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16*, i16** %53, i64 %55
  %57 = load i16*, i16** %56, align 8
  %58 = getelementptr inbounds i16, i16* %57, i64 1
  %59 = load i16, i16* %58, align 2
  %60 = call i32 @EMU8000_INIT3_WRITE(%struct.snd_emu8000* %52, i32 19, i16 zeroext %59)
  %61 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %62 = load i16**, i16*** @treble_parm, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i16*, i16** %62, i64 %64
  %66 = load i16*, i16** %65, align 8
  %67 = getelementptr inbounds i16, i16* %66, i64 2
  %68 = load i16, i16* %67, align 2
  %69 = call i32 @EMU8000_INIT3_WRITE(%struct.snd_emu8000* %61, i32 27, i16 zeroext %68)
  %70 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %71 = load i16**, i16*** @treble_parm, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i16*, i16** %71, i64 %73
  %75 = load i16*, i16** %74, align 8
  %76 = getelementptr inbounds i16, i16* %75, i64 3
  %77 = load i16, i16* %76, align 2
  %78 = call i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000* %70, i32 7, i16 zeroext %77)
  %79 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %80 = load i16**, i16*** @treble_parm, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i16*, i16** %80, i64 %82
  %84 = load i16*, i16** %83, align 8
  %85 = getelementptr inbounds i16, i16* %84, i64 4
  %86 = load i16, i16* %85, align 2
  %87 = call i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000* %79, i32 11, i16 zeroext %86)
  %88 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %89 = load i16**, i16*** @treble_parm, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i16*, i16** %89, i64 %91
  %93 = load i16*, i16** %92, align 8
  %94 = getelementptr inbounds i16, i16* %93, i64 5
  %95 = load i16, i16* %94, align 2
  %96 = call i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000* %88, i32 13, i16 zeroext %95)
  %97 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %98 = load i16**, i16*** @treble_parm, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i16*, i16** %98, i64 %100
  %102 = load i16*, i16** %101, align 8
  %103 = getelementptr inbounds i16, i16* %102, i64 6
  %104 = load i16, i16* %103, align 2
  %105 = call i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000* %97, i32 23, i16 zeroext %104)
  %106 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %107 = load i16**, i16*** @treble_parm, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i16*, i16** %107, i64 %109
  %111 = load i16*, i16** %110, align 8
  %112 = getelementptr inbounds i16, i16* %111, i64 7
  %113 = load i16, i16* %112, align 2
  %114 = call i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000* %106, i32 25, i16 zeroext %113)
  %115 = load i16**, i16*** @bass_parm, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i16*, i16** %115, i64 %117
  %119 = load i16*, i16** %118, align 8
  %120 = getelementptr inbounds i16, i16* %119, i64 2
  %121 = load i16, i16* %120, align 2
  %122 = zext i16 %121 to i32
  %123 = load i16**, i16*** @treble_parm, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i16*, i16** %123, i64 %125
  %127 = load i16*, i16** %126, align 8
  %128 = getelementptr inbounds i16, i16* %127, i64 8
  %129 = load i16, i16* %128, align 2
  %130 = zext i16 %129 to i32
  %131 = add nsw i32 %122, %130
  %132 = trunc i32 %131 to i16
  store i16 %132, i16* %3, align 2
  %133 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %134 = load i16, i16* %3, align 2
  %135 = zext i16 %134 to i32
  %136 = add nsw i32 %135, 610
  %137 = trunc i32 %136 to i16
  %138 = call i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000* %133, i32 21, i16 zeroext %137)
  %139 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %140 = load i16, i16* %3, align 2
  %141 = zext i16 %140 to i32
  %142 = add nsw i32 %141, 33634
  %143 = trunc i32 %142 to i16
  %144 = call i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000* %139, i32 29, i16 zeroext %143)
  br label %145

145:                                              ; preds = %24, %23
  ret void
}

declare dso_local i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000*, i32, i16 zeroext) #1

declare dso_local i32 @EMU8000_INIT3_WRITE(%struct.snd_emu8000*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

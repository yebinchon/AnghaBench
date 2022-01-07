; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_voice.c_voice_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_voice.c_voice_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, %struct.snd_emu10k1_voice* }
%struct.snd_emu10k1_voice = type { i32, i32, i32, i32, i32 }

@NUM_G = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, i32, i32, %struct.snd_emu10k1_voice**)* @voice_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @voice_alloc(%struct.snd_emu10k1* %0, i32 %1, i32 %2, %struct.snd_emu10k1_voice** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_emu10k1_voice**, align 8
  %10 = alloca %struct.snd_emu10k1_voice*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.snd_emu10k1_voice** %3, %struct.snd_emu10k1_voice*** %9, align 8
  %17 = load %struct.snd_emu10k1_voice**, %struct.snd_emu10k1_voice*** %9, align 8
  store %struct.snd_emu10k1_voice* null, %struct.snd_emu10k1_voice** %17, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %77, %4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @NUM_G, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %84

25:                                               ; preds = %21
  %26 = load i32, i32* @NUM_G, align 4
  %27 = load i32, i32* %11, align 4
  %28 = srem i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  %33 = srem i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %77

38:                                               ; preds = %31, %25
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %44, i32 0, i32 1
  %46 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* @NUM_G, align 4
  %51 = srem i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %46, i64 %52
  store %struct.snd_emu10k1_voice* %53, %struct.snd_emu10k1_voice** %10, align 8
  %54 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %10, align 8
  %55 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  store i32 1, i32* %16, align 4
  br label %63

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %39

63:                                               ; preds = %58, %39
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @NUM_G, align 4
  %72 = srem i32 %70, %71
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %75 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %84

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %35
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %12, align 4
  br label %21

84:                                               ; preds = %66, %21
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %134

91:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %123, %91
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %126

96:                                               ; preds = %92
  %97 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %98 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %97, i32 0, i32 1
  %99 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* @NUM_G, align 4
  %104 = srem i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %99, i64 %105
  store %struct.snd_emu10k1_voice* %106, %struct.snd_emu10k1_voice** %10, align 8
  %107 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %10, align 8
  %108 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  %109 = load i32, i32* %7, align 4
  switch i32 %109, label %122 [
    i32 129, label %110
    i32 128, label %113
    i32 130, label %116
    i32 131, label %119
  ]

110:                                              ; preds = %96
  %111 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %10, align 8
  %112 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  br label %122

113:                                              ; preds = %96
  %114 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %10, align 8
  %115 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %114, i32 0, i32 2
  store i32 1, i32* %115, align 4
  br label %122

116:                                              ; preds = %96
  %117 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %10, align 8
  %118 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %117, i32 0, i32 3
  store i32 1, i32* %118, align 4
  br label %122

119:                                              ; preds = %96
  %120 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %10, align 8
  %121 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %120, i32 0, i32 4
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %96, %119, %116, %113, %110
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %92

126:                                              ; preds = %92
  %127 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %128 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %127, i32 0, i32 1
  %129 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %129, i64 %131
  %133 = load %struct.snd_emu10k1_voice**, %struct.snd_emu10k1_voice*** %9, align 8
  store %struct.snd_emu10k1_voice* %132, %struct.snd_emu10k1_voice** %133, align 8
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %126, %88
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_voice_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_voice_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { %struct.snd_ymfpci_voice* }
%struct.snd_ymfpci_voice = type { i32, i32, i32, i32 }

@YDSXG_PLAYBACK_VOICES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ymfpci*, i32, i32, %struct.snd_ymfpci_voice**)* @voice_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @voice_alloc(%struct.snd_ymfpci* %0, i32 %1, i32 %2, %struct.snd_ymfpci_voice** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_ymfpci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_ymfpci_voice**, align 8
  %10 = alloca %struct.snd_ymfpci_voice*, align 8
  %11 = alloca %struct.snd_ymfpci_voice*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.snd_ymfpci_voice** %3, %struct.snd_ymfpci_voice*** %9, align 8
  %13 = load %struct.snd_ymfpci_voice**, %struct.snd_ymfpci_voice*** %9, align 8
  store %struct.snd_ymfpci_voice* null, %struct.snd_ymfpci_voice** %13, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %87, %4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @YDSXG_PLAYBACK_VOICES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %94

18:                                               ; preds = %14
  %19 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %20 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %19, i32 0, i32 0
  %21 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %20, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %21, i64 %23
  store %struct.snd_ymfpci_voice* %24, %struct.snd_ymfpci_voice** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %29 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %28, i32 0, i32 0
  %30 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %30, i64 %33
  br label %36

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %27
  %37 = phi %struct.snd_ymfpci_voice* [ %34, %27 ], [ null, %35 ]
  store %struct.snd_ymfpci_voice* %37, %struct.snd_ymfpci_voice** %11, align 8
  %38 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %10, align 8
  %39 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %11, align 8
  %44 = icmp ne %struct.snd_ymfpci_voice* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %11, align 8
  %47 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %36
  br label %87

51:                                               ; preds = %45, %42
  %52 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %10, align 8
  %53 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %11, align 8
  %55 = icmp ne %struct.snd_ymfpci_voice* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %11, align 8
  %58 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %7, align 4
  switch i32 %60, label %76 [
    i32 129, label %61
    i32 128, label %70
    i32 130, label %73
  ]

61:                                               ; preds = %59
  %62 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %10, align 8
  %63 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %11, align 8
  %65 = icmp ne %struct.snd_ymfpci_voice* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %11, align 8
  %68 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %61
  br label %76

70:                                               ; preds = %59
  %71 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %10, align 8
  %72 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  br label %76

73:                                               ; preds = %59
  %74 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %10, align 8
  %75 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %59, %73, %70, %69
  %77 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %78 = call i32 @snd_ymfpci_hw_start(%struct.snd_ymfpci* %77)
  %79 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %11, align 8
  %80 = icmp ne %struct.snd_ymfpci_voice* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %83 = call i32 @snd_ymfpci_hw_start(%struct.snd_ymfpci* %82)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %10, align 8
  %86 = load %struct.snd_ymfpci_voice**, %struct.snd_ymfpci_voice*** %9, align 8
  store %struct.snd_ymfpci_voice* %85, %struct.snd_ymfpci_voice** %86, align 8
  store i32 0, i32* %5, align 4
  br label %97

87:                                               ; preds = %50
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 2, i32 1
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %12, align 4
  br label %14

94:                                               ; preds = %14
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %94, %84
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @snd_ymfpci_hw_start(%struct.snd_ymfpci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

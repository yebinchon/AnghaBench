; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_recsrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_recsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { %struct.snd_mixer_oss* }
%struct.snd_mixer_oss = type { i32 (%struct.snd_mixer_oss_file*, i32*)*, i32, %struct.snd_mixer_oss_slot*, i64 }
%struct.snd_mixer_oss_slot = type { i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)* }
%struct.snd_mixer_oss_file.0 = type opaque

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*)* @snd_mixer_oss_get_recsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_get_recsrc(%struct.snd_mixer_oss_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_mixer_oss_file*, align 8
  %4 = alloca %struct.snd_mixer_oss*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_mixer_oss_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %3, align 8
  %10 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %11 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %10, i32 0, i32 0
  %12 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %11, align 8
  store %struct.snd_mixer_oss* %12, %struct.snd_mixer_oss** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %14 = icmp eq %struct.snd_mixer_oss* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %80

18:                                               ; preds = %1
  %19 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %20 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %25 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %24, i32 0, i32 0
  %26 = load i32 (%struct.snd_mixer_oss_file*, i32*)*, i32 (%struct.snd_mixer_oss_file*, i32*)** %25, align 8
  %27 = icmp ne i32 (%struct.snd_mixer_oss_file*, i32*)* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %30 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %29, i32 0, i32 0
  %31 = load i32 (%struct.snd_mixer_oss_file*, i32*)*, i32 (%struct.snd_mixer_oss_file*, i32*)** %30, align 8
  %32 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %33 = call i32 %31(%struct.snd_mixer_oss_file* %32, i32* %5)
  store i32 %33, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %80

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 1, %38
  store i32 %39, i32* %5, align 4
  br label %76

40:                                               ; preds = %23, %18
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %72, %40
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 31
  br i1 %43, label %44, label %75

44:                                               ; preds = %41
  %45 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %46 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %45, i32 0, i32 2
  %47 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %47, i64 %49
  store %struct.snd_mixer_oss_slot* %50, %struct.snd_mixer_oss_slot** %7, align 8
  %51 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %52 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %51, i32 0, i32 0
  %53 = load i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)*, i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)** %52, align 8
  %54 = icmp ne i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  %56 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %57 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %56, i32 0, i32 0
  %58 = load i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)*, i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)** %57, align 8
  %59 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %60 = bitcast %struct.snd_mixer_oss_file* %59 to %struct.snd_mixer_oss_file.0*
  %61 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %62 = call i32 %58(%struct.snd_mixer_oss_file.0* %60, %struct.snd_mixer_oss_slot* %61, i32* %9)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %65, %55
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %41

75:                                               ; preds = %41
  br label %76

76:                                               ; preds = %75, %37
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %79 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  store i32 %77, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %35, %15
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

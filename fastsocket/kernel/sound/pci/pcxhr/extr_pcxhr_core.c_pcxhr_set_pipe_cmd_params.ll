; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_set_pipe_cmd_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_set_pipe_cmd_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_rmh = type { i32*, i32 }

@MASK_FIRST_FIELD = common dso_local global i32 0, align 4
@FIELD_SIZE = common dso_local global i32 0, align 4
@MASK_DSP_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pcxhr_rmh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pcxhr_rmh* %0, %struct.pcxhr_rmh** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @MASK_FIRST_FIELD, align 4
  %13 = icmp ugt i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @snd_BUG_ON(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %6, align 8
  %20 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, 2048
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %18, %5
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @FIELD_SIZE, align 4
  %31 = shl i32 %29, %30
  %32 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %6, align 8
  %33 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %28, %25
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @MASK_FIRST_FIELD, align 4
  %44 = icmp ugt i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @snd_BUG_ON(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %6, align 8
  %49 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %41, %38
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @MASK_DSP_WORD, align 4
  %60 = icmp ugt i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @snd_BUG_ON(i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %6, align 8
  %65 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %6, align 8
  %69 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %68, i32 0, i32 1
  store i32 2, i32* %69, align 8
  br label %70

70:                                               ; preds = %57, %54
  ret void
}

declare dso_local i32 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

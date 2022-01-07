; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_inputintr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_inputintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { %struct.dma_buffparms* }
%struct.dma_buffparms = type { i32, i32, i32, i32, i32, i32, i32 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@DMA_NODMA = common dso_local global i32 0, align 4
@isa_dma_bridge_buggy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DMAbuf_inputintr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audio_operations*, align 8
  %4 = alloca %struct.dma_buffparms*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %10, i64 %12
  %14 = load %struct.audio_operations*, %struct.audio_operations** %13, align 8
  store %struct.audio_operations* %14, %struct.audio_operations** %3, align 8
  %15 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %16 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %15, i32 0, i32 0
  %17 = load %struct.dma_buffparms*, %struct.dma_buffparms** %16, align 8
  store %struct.dma_buffparms* %17, %struct.dma_buffparms** %4, align 8
  %18 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %19 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %18, i32 0, i32 6
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %23 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DMA_NODMA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %93, label %28

28:                                               ; preds = %1
  %29 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %30 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = call i64 (...) @claim_dma_lock()
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* @isa_dma_bridge_buggy, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %37 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @disable_dma(i32 %38)
  br label %40

40:                                               ; preds = %35, %28
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @clear_dma_ff(i32 %41)
  %43 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %44 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @get_dma_residue(i32 %46)
  %48 = sub nsw i32 %45, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @isa_dma_bridge_buggy, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %40
  %52 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %53 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @enable_dma(i32 %54)
  br label %56

56:                                               ; preds = %51, %40
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @release_dma_lock(i64 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %61 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %59, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %69 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %56
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %66
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %89, %73
  %75 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %76 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  %83 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %84 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br label %87

87:                                               ; preds = %80, %74
  %88 = phi i1 [ false, %74 ], [ %86, %80 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @do_inputintr(i32 %90)
  br label %74

92:                                               ; preds = %87
  br label %96

93:                                               ; preds = %1
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @do_inputintr(i32 %94)
  br label %96

96:                                               ; preds = %93, %92
  %97 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %98 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %97, i32 0, i32 6
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @get_dma_residue(i32) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @do_inputintr(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

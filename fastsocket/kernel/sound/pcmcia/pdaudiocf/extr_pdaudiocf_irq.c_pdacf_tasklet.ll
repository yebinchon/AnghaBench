; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_irq.c_pdacf_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_irq.c_pdacf_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pdacf = type { i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@PDAUDIOCF_STAT_IS_STALE = common dso_local global i32 0, align 4
@PDAUDIOCF_STAT_IS_CONFIGURED = common dso_local global i32 0, align 4
@PDAUDIOCF_REG_RDP = common dso_local global i64 0, align 8
@PDAUDIOCF_REG_WDP = common dso_local global i64 0, align 8
@PDAUDIOCF_REG_MD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdacf_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_pdacf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.snd_pdacf*
  store %struct.snd_pdacf* %10, %struct.snd_pdacf** %3, align 8
  %11 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PDAUDIOCF_STAT_IS_STALE, align 4
  %15 = load i32, i32* @PDAUDIOCF_STAT_IS_CONFIGURED, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @PDAUDIOCF_STAT_IS_CONFIGURED, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %172

21:                                               ; preds = %1
  %22 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %22, i32 0, i32 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp eq %struct.TYPE_3__* %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %28 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %27, i32 0, i32 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %35 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %34, i32 0, i32 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call i32 @snd_pcm_running(%struct.TYPE_3__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33, %26, %21
  br label %172

40:                                               ; preds = %33
  %41 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %42 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PDAUDIOCF_REG_RDP, align 8
  %45 = add i64 %43, %44
  %46 = call i32 @inw(i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %48 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PDAUDIOCF_REG_WDP, align 8
  %51 = add i64 %49, %50
  %52 = call i32 @inw(i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %40
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 65536
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %40
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 65536, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %67 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sdiv i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp sgt i32 %71, 64
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %4, align 4
  %75 = sub nsw i32 %74, 32
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %65
  %77 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %78 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %81 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  store i32 %83, i32* %5, align 4
  %84 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %85 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = srem i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %91 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %108, %76
  %95 = load i32, i32* %4, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %94
  %98 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %99 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %106, %97
  %109 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @pdacf_transfer(%struct.snd_pdacf* %109, i32 %110, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %117 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = srem i32 %119, %118
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %4, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %4, align 4
  br label %94

124:                                              ; preds = %94
  %125 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %126 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %125, i32 0, i32 7
  %127 = call i32 @spin_lock(i32* %126)
  br label %128

128:                                              ; preds = %136, %124
  %129 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %130 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %133 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = icmp sge i32 %131, %134
  br i1 %135, label %136, label %168

136:                                              ; preds = %128
  %137 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %138 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %141 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %145 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %148 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = srem i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %152 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %155 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %159 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %158, i32 0, i32 7
  %160 = call i32 @spin_unlock(i32* %159)
  %161 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %162 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %161, i32 0, i32 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_3__* %163)
  %165 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %166 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %165, i32 0, i32 7
  %167 = call i32 @spin_lock(i32* %166)
  br label %128

168:                                              ; preds = %128
  %169 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %170 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %169, i32 0, i32 7
  %171 = call i32 @spin_unlock(i32* %170)
  br label %172

172:                                              ; preds = %168, %39, %20
  ret void
}

declare dso_local i32 @snd_pcm_running(%struct.TYPE_3__*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @pdacf_transfer(%struct.snd_pdacf*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

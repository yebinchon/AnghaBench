; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, i32, i32, i32, i32, i32, i32, %struct.snd_pcxhr**, i32 }
%struct.snd_pcxhr = type { i32, i32, i32*, i32* }

@PCXHR_PLX_IRQCS = common dso_local global i32 0, align 4
@PCXHR_IRQCS_ACTIVE_PCIDB = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PCXHR_PLX_L2PCIDB = common dso_local global i32 0, align 4
@PCXHR_IRQ_TIMER = common dso_local global i32 0, align 4
@PCXHR_PLX_MBOX4 = common dso_local global i32 0, align 4
@PCXHR_DSP_TIME_MASK = common dso_local global i32 0, align 4
@PCXHR_DSP_TIME_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"ERROR DSP TIME old(%d) new(%d) -> resynchronize all streams\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ERROR TIMER TOGGLE\0A\00", align 1
@PCXHR_IRQ_MASK = common dso_local global i32 0, align 4
@PCXHR_IRQ_ASYNC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PCXHR_FATAL_DSP_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcxhr_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcxhr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.pcxhr_mgr*
  store %struct.pcxhr_mgr* %15, %struct.pcxhr_mgr** %6, align 8
  %16 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %17 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %16, i32 0, i32 5
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %20 = load i32, i32* @PCXHR_PLX_IRQCS, align 4
  %21 = call i32 @PCXHR_INPL(%struct.pcxhr_mgr* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PCXHR_IRQCS_ACTIVE_PCIDB, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %28 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %27, i32 0, i32 5
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %200

31:                                               ; preds = %2
  %32 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %33 = load i32, i32* @PCXHR_PLX_L2PCIDB, align 4
  %34 = call i32 @PCXHR_INPL(%struct.pcxhr_mgr* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %36 = load i32, i32* @PCXHR_PLX_L2PCIDB, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @PCXHR_OUTPL(%struct.pcxhr_mgr* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PCXHR_IRQ_TIMER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %174

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PCXHR_IRQ_TIMER, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %48 = load i32, i32* @PCXHR_PLX_MBOX4, align 4
  %49 = call i32 @PCXHR_INPL(%struct.pcxhr_mgr* %47, i32 %48)
  %50 = load i32, i32* @PCXHR_DSP_TIME_MASK, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %54 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %43
  %60 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %61 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PCXHR_DSP_TIME_INVALID, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %67 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %72 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %65, %59, %43
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %78 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %81 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %75
  %85 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %87 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %75
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %93 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @PCXHR_IRQ_TIMER, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %132, %90
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %101 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %135

104:                                              ; preds = %98
  %105 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %106 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %105, i32 0, i32 7
  %107 = load %struct.snd_pcxhr**, %struct.snd_pcxhr*** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.snd_pcxhr*, %struct.snd_pcxhr** %107, i64 %109
  %111 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %110, align 8
  store %struct.snd_pcxhr* %111, %struct.snd_pcxhr** %10, align 8
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %128, %104
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %10, align 8
  %115 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %112
  %119 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %120 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %10, align 8
  %121 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @pcxhr_update_timer_pos(%struct.pcxhr_mgr* %119, i32* %125, i32 %126)
  br label %128

128:                                              ; preds = %118
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %112

131:                                              ; preds = %112
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %98

135:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %170, %135
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %139 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %173

142:                                              ; preds = %136
  %143 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %144 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %143, i32 0, i32 7
  %145 = load %struct.snd_pcxhr**, %struct.snd_pcxhr*** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.snd_pcxhr*, %struct.snd_pcxhr** %145, i64 %147
  %149 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %148, align 8
  store %struct.snd_pcxhr* %149, %struct.snd_pcxhr** %10, align 8
  store i32 0, i32* %9, align 4
  br label %150

150:                                              ; preds = %166, %142
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %10, align 8
  %153 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %150
  %157 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %158 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %10, align 8
  %159 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @pcxhr_update_timer_pos(%struct.pcxhr_mgr* %157, i32* %163, i32 %164)
  br label %166

166:                                              ; preds = %156
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %150

169:                                              ; preds = %150
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %136

173:                                              ; preds = %136
  br label %174

174:                                              ; preds = %173, %31
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @PCXHR_IRQ_MASK, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %195

179:                                              ; preds = %174
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @PCXHR_IRQ_ASYNC, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load i32, i32* @PCXHR_DSP_TIME_INVALID, align 4
  %186 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %187 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %184, %179
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %191 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 8
  %192 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %193 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %192, i32 0, i32 6
  %194 = call i32 @tasklet_schedule(i32* %193)
  br label %195

195:                                              ; preds = %188, %174
  %196 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %197 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %196, i32 0, i32 5
  %198 = call i32 @spin_unlock(i32* %197)
  %199 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %195, %26
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @PCXHR_INPL(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @PCXHR_OUTPL(%struct.pcxhr_mgr*, i32, i32) #1

declare dso_local i32 @snd_printdd(i8*, ...) #1

declare dso_local i32 @pcxhr_update_timer_pos(%struct.pcxhr_mgr*, i32*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

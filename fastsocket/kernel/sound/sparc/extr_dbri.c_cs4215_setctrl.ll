; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_dbri.c_cs4215_setctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_dbri.c_cs4215_setctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbri = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32*, i64, i64 }

@D_ENPIO = common dso_local global i32 0, align 4
@D_PIO1 = common dso_local global i32 0, align 4
@D_PIO0 = common dso_local global i32 0, align 4
@D_PIO2 = common dso_local global i32 0, align 4
@REG2 = common dso_local global i64 0, align 8
@D_MM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cs4215_setctrl: reg2=0x%x\0A\00", align 1
@REG0 = common dso_local global i64 0, align 8
@D_C = common dso_local global i32 0, align 4
@CHImaster = common dso_local global i32 0, align 4
@CS4215_CLB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"CS4215 didn't respond to CLB (0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dbri*)* @cs4215_setctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4215_setctrl(%struct.snd_dbri* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_dbri*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.snd_dbri* %0, %struct.snd_dbri** %3, align 8
  %8 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %9 = call i32 @cs4215_setdata(%struct.snd_dbri* %8, i32 1)
  %10 = call i32 @udelay(i32 125)
  %11 = load i32, i32* @D_ENPIO, align 4
  %12 = load i32, i32* @D_PIO1, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %15 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @D_PIO0, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @D_PIO2, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = or i32 %13, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %28 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG2, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @sbus_writel(i32 %26, i64 %31)
  %33 = load i32, i32* @D_MM, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @dprintk(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 @udelay(i32 34)
  %37 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %38 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %37, i32 0, i32 1
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %42 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @REG0, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @sbus_readl(i64 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @D_C, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %53 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @REG0, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @sbus_writel(i32 %51, i64 %56)
  %58 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %59 = load i32, i32* @CHImaster, align 4
  %60 = call i32 @reset_chi(%struct.snd_dbri* %58, i32 %59, i32 128)
  %61 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %62 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %63 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @link_time_slot(%struct.snd_dbri* %61, i32 17, i32 16, i32 16, i32 32, i64 %65)
  %67 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %68 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %69 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @link_time_slot(%struct.snd_dbri* %67, i32 18, i32 16, i32 16, i32 8, i64 %71)
  %73 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %74 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %75 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 48
  %79 = call i32 @link_time_slot(%struct.snd_dbri* %73, i32 19, i32 18, i32 16, i32 8, i64 %78)
  %80 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %81 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %80, i32 0, i32 1
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* @CS4215_CLB, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %87 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %85
  store i32 %92, i32* %90, align 4
  %93 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %94 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %95 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @xmit_fixed(%struct.snd_dbri* %93, i32 17, i32 %98)
  %100 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %101 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %100, i32 0, i32 1
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @spin_lock_irqsave(i32* %101, i64 %102)
  %104 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %105 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @REG0, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @sbus_readl(i64 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @D_C, align 4
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %115 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @REG0, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @sbus_writel(i32 %113, i64 %118)
  %120 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %121 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %120, i32 0, i32 1
  %122 = load i64, i64* %7, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  store i32 10, i32* %4, align 4
  br label %124

124:                                              ; preds = %133, %23
  %125 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %126 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, 228
  %130 = icmp ne i32 %129, 32
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = call i32 @msleep_interruptible(i32 1)
  br label %133

133:                                              ; preds = %131
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %4, align 4
  br label %124

136:                                              ; preds = %124
  %137 = load i32, i32* %4, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i32, i32* @D_MM, align 4
  %141 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %142 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @dprintk(i32 %140, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  store i32 -1, i32* %2, align 4
  br label %167

146:                                              ; preds = %136
  %147 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %148 = call i32 @recv_fixed(%struct.snd_dbri* %147, i32 19, i32* null)
  %149 = load i32, i32* @CS4215_CLB, align 4
  %150 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %151 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %149
  store i32 %156, i32* %154, align 4
  %157 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %158 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %159 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @xmit_fixed(%struct.snd_dbri* %157, i32 17, i32 %162)
  %164 = call i32 @udelay(i32 250)
  %165 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %166 = call i32 @cs4215_setdata(%struct.snd_dbri* %165, i32 0)
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %146, %139
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @cs4215_setdata(%struct.snd_dbri*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sbus_writel(i32, i64) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sbus_readl(i64) #1

declare dso_local i32 @reset_chi(%struct.snd_dbri*, i32, i32) #1

declare dso_local i32 @link_time_slot(%struct.snd_dbri*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xmit_fixed(%struct.snd_dbri*, i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @recv_fixed(%struct.snd_dbri*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

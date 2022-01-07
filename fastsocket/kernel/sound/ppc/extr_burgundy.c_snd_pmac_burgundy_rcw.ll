; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_rcw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_rcw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pmac*, i32)* @snd_pmac_burgundy_rcw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pmac_burgundy_rcw(%struct.snd_pmac* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %4, align 4
  %16 = add i32 %15, 1048576
  %17 = call i32 @out_le32(i32* %14, i32 %16)
  %18 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %19 = call i32 @snd_pmac_burgundy_busy_wait(%struct.snd_pmac* %18)
  %20 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %21 = call i32 @snd_pmac_burgundy_extend_wait(%struct.snd_pmac* %20)
  %22 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @in_le32(i32* %25)
  %27 = ashr i32 %26, 4
  %28 = and i32 %27, 255
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %32 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1048832
  %37 = call i32 @out_le32(i32* %34, i32 %36)
  %38 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %39 = call i32 @snd_pmac_burgundy_busy_wait(%struct.snd_pmac* %38)
  %40 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %41 = call i32 @snd_pmac_burgundy_extend_wait(%struct.snd_pmac* %40)
  %42 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %43 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @in_le32(i32* %45)
  %47 = ashr i32 %46, 4
  %48 = and i32 %47, 255
  %49 = shl i32 %48, 8
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %53 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %4, align 4
  %57 = add i32 %56, 1049088
  %58 = call i32 @out_le32(i32* %55, i32 %57)
  %59 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %60 = call i32 @snd_pmac_burgundy_busy_wait(%struct.snd_pmac* %59)
  %61 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %62 = call i32 @snd_pmac_burgundy_extend_wait(%struct.snd_pmac* %61)
  %63 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %64 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @in_le32(i32* %66)
  %68 = ashr i32 %67, 4
  %69 = and i32 %68, 255
  %70 = shl i32 %69, 16
  %71 = load i32, i32* %5, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %74 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %4, align 4
  %78 = add i32 %77, 1049344
  %79 = call i32 @out_le32(i32* %76, i32 %78)
  %80 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %81 = call i32 @snd_pmac_burgundy_busy_wait(%struct.snd_pmac* %80)
  %82 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %83 = call i32 @snd_pmac_burgundy_extend_wait(%struct.snd_pmac* %82)
  %84 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %85 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 @in_le32(i32* %87)
  %89 = ashr i32 %88, 4
  %90 = and i32 %89, 255
  %91 = shl i32 %90, 24
  %92 = load i32, i32* %5, align 4
  %93 = add i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %95 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %94, i32 0, i32 0
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @snd_pmac_burgundy_busy_wait(%struct.snd_pmac*) #1

declare dso_local i32 @snd_pmac_burgundy_extend_wait(%struct.snd_pmac*) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

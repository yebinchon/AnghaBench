; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_sport_hook_tx_dummy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_sport_hook_tx_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sport_device = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }
%struct.dmasg = type { i32, %struct.TYPE_2__*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sport_device*)* @sport_hook_tx_dummy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sport_hook_tx_dummy(%struct.sport_device* %0) #0 {
  %2 = alloca %struct.sport_device*, align 8
  %3 = alloca %struct.dmasg*, align 8
  %4 = alloca %struct.dmasg, align 8
  %5 = alloca i64, align 8
  store %struct.sport_device* %0, %struct.sport_device** %2, align 8
  %6 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %7 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp eq %struct.TYPE_2__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %13 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %16 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp eq %struct.TYPE_2__* %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %22 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 1
  %25 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %26 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @local_irq_save(i64 %29)
  %31 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %32 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.dmasg* @get_dma_next_desc_ptr(i32 %33)
  store %struct.dmasg* %34, %struct.dmasg** %3, align 8
  %35 = load %struct.dmasg*, %struct.dmasg** %3, align 8
  %36 = bitcast %struct.dmasg* %4 to i8*
  %37 = bitcast %struct.dmasg* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 24, i1 false)
  %38 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %39 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 2
  %42 = load %struct.dmasg*, %struct.dmasg** %3, align 8
  %43 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dmasg*, %struct.dmasg** %3, align 8
  %45 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %47 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.dmasg*, %struct.dmasg** %3, align 8
  %50 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %49, i32 0, i32 1
  store %struct.TYPE_2__* %48, %struct.TYPE_2__** %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @local_irq_restore(i64 %51)
  br label %53

53:                                               ; preds = %63, %1
  %54 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %55 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.TYPE_2__* @get_dma_curr_desc_ptr(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 -24
  %59 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %60 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = icmp ne %struct.TYPE_2__* %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %53

64:                                               ; preds = %53
  %65 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %66 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load %struct.sport_device*, %struct.sport_device** %2, align 8
  %69 = getelementptr inbounds %struct.sport_device, %struct.sport_device* %68, i32 0, i32 2
  store %struct.TYPE_2__* %67, %struct.TYPE_2__** %69, align 8
  %70 = load %struct.dmasg*, %struct.dmasg** %3, align 8
  %71 = bitcast %struct.dmasg* %70 to i8*
  %72 = bitcast %struct.dmasg* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 24, i1 false)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.dmasg* @get_dma_next_desc_ptr(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local %struct.TYPE_2__* @get_dma_curr_desc_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

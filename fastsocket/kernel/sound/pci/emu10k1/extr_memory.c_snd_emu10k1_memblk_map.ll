; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_memblk_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_memblk_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, %struct.list_head }
%struct.list_head = type { %struct.list_head* }
%struct.snd_emu10k1_memblk = type { i64, i32, i64, i32 }

@mapped_order_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_memblk_map(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_memblk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_memblk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.snd_emu10k1_memblk*, align 8
  %11 = alloca i64, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_emu10k1_memblk* %1, %struct.snd_emu10k1_memblk** %5, align 8
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %13 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %12, i32 0, i32 0
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %22 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %21, i32 0, i32 3
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %24, i32 0, i32 3
  %26 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %26, i32 0, i32 1
  %28 = call i32 @list_add_tail(i32* %25, %struct.list_head* %27)
  %29 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %29, i32 0, i32 0
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  store i32 0, i32* %3, align 4
  br label %83

33:                                               ; preds = %2
  %34 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %35 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %36 = call i32 @map_memblk(%struct.snd_emu10k1* %34, %struct.snd_emu10k1_memblk* %35)
  store i32 %36, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %33
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %40 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.list_head, %struct.list_head* %40, i32 0, i32 0
  %42 = load %struct.list_head*, %struct.list_head** %41, align 8
  store %struct.list_head* %42, %struct.list_head** %8, align 8
  br label %43

43:                                               ; preds = %74, %38
  %44 = load %struct.list_head*, %struct.list_head** %8, align 8
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %45, i32 0, i32 1
  %47 = icmp ne %struct.list_head* %44, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %43
  %49 = load %struct.list_head*, %struct.list_head** %8, align 8
  %50 = getelementptr inbounds %struct.list_head, %struct.list_head* %49, i32 0, i32 0
  %51 = load %struct.list_head*, %struct.list_head** %50, align 8
  store %struct.list_head* %51, %struct.list_head** %9, align 8
  %52 = load %struct.list_head*, %struct.list_head** %8, align 8
  %53 = load i32, i32* @mapped_order_link, align 4
  %54 = call %struct.snd_emu10k1_memblk* @get_emu10k1_memblk(%struct.list_head* %52, i32 %53)
  store %struct.snd_emu10k1_memblk* %54, %struct.snd_emu10k1_memblk** %10, align 8
  %55 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %10, align 8
  %56 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %74

60:                                               ; preds = %48
  %61 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %62 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %10, align 8
  %63 = call i32 @unmap_memblk(%struct.snd_emu10k1* %61, %struct.snd_emu10k1_memblk* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %66 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %71 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %72 = call i32 @map_memblk(%struct.snd_emu10k1* %70, %struct.snd_emu10k1_memblk* %71)
  store i32 %72, i32* %6, align 4
  br label %76

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %59
  %75 = load %struct.list_head*, %struct.list_head** %9, align 8
  store %struct.list_head* %75, %struct.list_head** %8, align 8
  br label %43

76:                                               ; preds = %69, %43
  br label %77

77:                                               ; preds = %76, %33
  %78 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %79 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %78, i32 0, i32 0
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %20
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @map_memblk(%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*) #1

declare dso_local %struct.snd_emu10k1_memblk* @get_emu10k1_memblk(%struct.list_head*, i32) #1

declare dso_local i32 @unmap_memblk(%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

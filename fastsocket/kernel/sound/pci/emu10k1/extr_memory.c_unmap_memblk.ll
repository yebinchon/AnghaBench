; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_unmap_memblk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_unmap_memblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.snd_emu10k1_memblk = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_head*, %struct.list_head* }

@mapped_link = common dso_local global i32 0, align 4
@MAX_ALIGN_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*)* @unmap_memblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmap_memblk(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_memblk* %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_emu10k1_memblk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.snd_emu10k1_memblk*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store %struct.snd_emu10k1_memblk* %1, %struct.snd_emu10k1_memblk** %4, align 8
  %11 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %4, align 8
  %12 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8
  store %struct.list_head* %14, %struct.list_head** %9, align 8
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %16 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %15, i32 0, i32 0
  %17 = icmp ne %struct.list_head* %14, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.list_head*, %struct.list_head** %9, align 8
  %20 = load i32, i32* @mapped_link, align 4
  %21 = call %struct.snd_emu10k1_memblk* @get_emu10k1_memblk(%struct.list_head* %19, i32 %20)
  store %struct.snd_emu10k1_memblk* %21, %struct.snd_emu10k1_memblk** %10, align 8
  %22 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %10, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %10, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %18
  %31 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %4, align 8
  %32 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.list_head*, %struct.list_head** %33, align 8
  store %struct.list_head* %34, %struct.list_head** %9, align 8
  %35 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %35, i32 0, i32 0
  %37 = icmp ne %struct.list_head* %34, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.list_head*, %struct.list_head** %9, align 8
  %40 = load i32, i32* @mapped_link, align 4
  %41 = call %struct.snd_emu10k1_memblk* @get_emu10k1_memblk(%struct.list_head* %39, i32 %40)
  store %struct.snd_emu10k1_memblk* %41, %struct.snd_emu10k1_memblk** %10, align 8
  %42 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %10, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %6, align 4
  br label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @MAX_ALIGN_PAGES, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %38
  %48 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %4, align 8
  %49 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %48, i32 0, i32 5
  %50 = call i32 @list_del(%struct.TYPE_2__* %49)
  %51 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %4, align 8
  %52 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %51, i32 0, i32 4
  %53 = call i32 @list_del(%struct.TYPE_2__* %52)
  %54 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %4, align 8
  %55 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %7, align 4
  %57 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %4, align 8
  %58 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %72, %47
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %4, align 8
  %63 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp sle i32 %61, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @set_silent_ptb(%struct.snd_emu10k1* %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %60

75:                                               ; preds = %60
  %76 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %4, align 8
  %77 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %76, i32 0, i32 0
  store i32 -1, i32* %77, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = sub nsw i32 %78, %79
  ret i32 %80
}

declare dso_local %struct.snd_emu10k1_memblk* @get_emu10k1_memblk(%struct.list_head*, i32) #1

declare dso_local i32 @list_del(%struct.TYPE_2__*) #1

declare dso_local i32 @set_silent_ptb(%struct.snd_emu10k1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

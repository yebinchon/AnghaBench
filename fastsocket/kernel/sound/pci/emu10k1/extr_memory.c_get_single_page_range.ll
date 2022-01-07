; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_get_single_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_get_single_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_util_memhdr = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.snd_emu10k1_memblk = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.list_head*, %struct.list_head* }

@mem = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_util_memhdr*, %struct.snd_emu10k1_memblk*, i32*, i32*)* @get_single_page_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_single_page_range(%struct.snd_util_memhdr* %0, %struct.snd_emu10k1_memblk* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.snd_util_memhdr*, align 8
  %6 = alloca %struct.snd_emu10k1_memblk*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.snd_emu10k1_memblk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_util_memhdr* %0, %struct.snd_util_memhdr** %5, align 8
  store %struct.snd_emu10k1_memblk* %1, %struct.snd_emu10k1_memblk** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %14 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %11, align 4
  %16 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.list_head*, %struct.list_head** %19, align 8
  store %struct.list_head* %20, %struct.list_head** %9, align 8
  %21 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %5, align 8
  %22 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %21, i32 0, i32 0
  %23 = icmp ne %struct.list_head* %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %4
  %25 = load %struct.list_head*, %struct.list_head** %9, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem, i32 0, i32 0), align 4
  %27 = call %struct.snd_emu10k1_memblk* @get_emu10k1_memblk(%struct.list_head* %25, i32 %26)
  store %struct.snd_emu10k1_memblk* %27, %struct.snd_emu10k1_memblk** %10, align 8
  %28 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %10, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %24
  br label %37

37:                                               ; preds = %36, %4
  %38 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %6, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.list_head*, %struct.list_head** %44, align 8
  store %struct.list_head* %45, %struct.list_head** %9, align 8
  %46 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %5, align 8
  %47 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %46, i32 0, i32 0
  %48 = icmp ne %struct.list_head* %45, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %37
  %50 = load %struct.list_head*, %struct.list_head** %9, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem, i32 0, i32 0), align 4
  %52 = call %struct.snd_emu10k1_memblk* @get_emu10k1_memblk(%struct.list_head* %50, i32 %51)
  store %struct.snd_emu10k1_memblk* %52, %struct.snd_emu10k1_memblk** %10, align 8
  %53 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %10, align 8
  %54 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %58, %49
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  ret void
}

declare dso_local %struct.snd_emu10k1_memblk* @get_emu10k1_memblk(%struct.list_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

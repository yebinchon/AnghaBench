; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_map_memblk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_map_memblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32*, %struct.list_head }
%struct.list_head = type { i32 }
%struct.snd_emu10k1_memblk = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*)* @map_memblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_memblk(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_memblk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_memblk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_emu10k1_memblk* %1, %struct.snd_emu10k1_memblk** %5, align 8
  %9 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %10 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %11 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @search_empty_map_area(%struct.snd_emu10k1* %9, i32 %12, %struct.list_head** %8)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %20 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %19, i32 0, i32 4
  %21 = load %struct.list_head*, %struct.list_head** %8, align 8
  %22 = call i32 @list_add_tail(i32* %20, %struct.list_head* %21)
  %23 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %23, i32 0, i32 3
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %25, i32 0, i32 1
  %27 = call i32 @list_add_tail(i32* %24, %struct.list_head* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %32 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %53, %18
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %35, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %44 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @set_ptb_entry(%struct.snd_emu10k1* %41, i32 %42, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %34

56:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @search_empty_map_area(%struct.snd_emu10k1*, i32, %struct.list_head**) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @set_ptb_entry(%struct.snd_emu10k1*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

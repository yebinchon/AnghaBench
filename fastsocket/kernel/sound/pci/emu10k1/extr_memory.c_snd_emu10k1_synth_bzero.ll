; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_synth_bzero.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_synth_bzero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }
%struct.snd_util_memblk = type { i32 }
%struct.snd_emu10k1_memblk = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_synth_bzero(%struct.snd_emu10k1* %0, %struct.snd_util_memblk* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_util_memblk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.snd_emu10k1_memblk*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %5, align 8
  store %struct.snd_util_memblk* %1, %struct.snd_util_memblk** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %6, align 8
  %17 = bitcast %struct.snd_util_memblk* %16 to %struct.snd_emu10k1_memblk*
  store %struct.snd_emu10k1_memblk* %17, %struct.snd_emu10k1_memblk** %15, align 8
  %18 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %6, align 8
  %19 = getelementptr inbounds %struct.snd_util_memblk, %struct.snd_util_memblk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @get_aligned_page(i32 %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %66, %4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @aligned_page_offset(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %44, %31
  %47 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %15, align 8
  %51 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load i32, i32* %7, align 4
  %55 = call i8* @offset_ptr(%struct.snd_emu10k1* %47, i64 %53, i32 %54)
  store i8* %55, i8** %14, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i8*, i8** %14, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @memset(i8* %59, i32 0, i32 %60)
  br label %62

62:                                               ; preds = %58, %46
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %31, label %70

70:                                               ; preds = %66
  ret i32 0
}

declare dso_local i32 @get_aligned_page(i32) #1

declare dso_local i32 @aligned_page_offset(i32) #1

declare dso_local i8* @offset_ptr(%struct.snd_emu10k1*, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

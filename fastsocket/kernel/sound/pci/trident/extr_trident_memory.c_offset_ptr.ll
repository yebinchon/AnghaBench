; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_memory.c_offset_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_memory.c_offset_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i32 }

@ALIGN_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.snd_trident*, i32)* @offset_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @offset_ptr(%struct.snd_trident* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.snd_trident* %0, %struct.snd_trident** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @get_aligned_page(i32 %7)
  %9 = call i8* @page_to_ptr(%struct.snd_trident* %6, i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ALIGN_PAGE_SIZE, align 4
  %12 = srem i32 %10, %11
  %13 = load i8*, i8** %5, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  ret i8* %16
}

declare dso_local i8* @page_to_ptr(%struct.snd_trident*, i32) #1

declare dso_local i32 @get_aligned_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

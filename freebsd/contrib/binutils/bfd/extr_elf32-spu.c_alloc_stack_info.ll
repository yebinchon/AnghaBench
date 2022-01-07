; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_alloc_stack_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_alloc_stack_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_elf_stack_info = type { i32 }
%struct._spu_elf_section_data = type { %struct.spu_elf_stack_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spu_elf_stack_info* (i32*, i32)* @alloc_stack_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spu_elf_stack_info* @alloc_stack_info(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._spu_elf_section_data*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct._spu_elf_section_data* @spu_elf_section_data(i32* %7)
  store %struct._spu_elf_section_data* %8, %struct._spu_elf_section_data** %5, align 8
  store i32 4, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.spu_elf_stack_info* @bfd_zmalloc(i32 %17)
  %19 = load %struct._spu_elf_section_data*, %struct._spu_elf_section_data** %5, align 8
  %20 = getelementptr inbounds %struct._spu_elf_section_data, %struct._spu_elf_section_data* %19, i32 0, i32 0
  store %struct.spu_elf_stack_info* %18, %struct.spu_elf_stack_info** %20, align 8
  %21 = load %struct._spu_elf_section_data*, %struct._spu_elf_section_data** %5, align 8
  %22 = getelementptr inbounds %struct._spu_elf_section_data, %struct._spu_elf_section_data* %21, i32 0, i32 0
  %23 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %22, align 8
  %24 = icmp ne %struct.spu_elf_stack_info* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct._spu_elf_section_data*, %struct._spu_elf_section_data** %5, align 8
  %28 = getelementptr inbounds %struct._spu_elf_section_data, %struct._spu_elf_section_data* %27, i32 0, i32 0
  %29 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %28, align 8
  %30 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %2
  %32 = load %struct._spu_elf_section_data*, %struct._spu_elf_section_data** %5, align 8
  %33 = getelementptr inbounds %struct._spu_elf_section_data, %struct._spu_elf_section_data* %32, i32 0, i32 0
  %34 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %33, align 8
  ret %struct.spu_elf_stack_info* %34
}

declare dso_local %struct._spu_elf_section_data* @spu_elf_section_data(i32*) #1

declare dso_local %struct.spu_elf_stack_info* @bfd_zmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

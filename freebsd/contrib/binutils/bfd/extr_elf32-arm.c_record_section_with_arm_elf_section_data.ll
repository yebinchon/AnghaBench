; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_record_section_with_arm_elf_section_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_record_section_with_arm_elf_section_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_list = type { %struct.section_list*, %struct.section_list*, i32* }

@sections_with_arm_elf_section_data = common dso_local global %struct.section_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @record_section_with_arm_elf_section_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_section_with_arm_elf_section_data(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.section_list*, align 8
  store i32* %0, i32** %2, align 8
  %4 = call %struct.section_list* @bfd_malloc(i32 24)
  store %struct.section_list* %4, %struct.section_list** %3, align 8
  %5 = load %struct.section_list*, %struct.section_list** %3, align 8
  %6 = icmp eq %struct.section_list* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = load %struct.section_list*, %struct.section_list** %3, align 8
  %11 = getelementptr inbounds %struct.section_list, %struct.section_list* %10, i32 0, i32 2
  store i32* %9, i32** %11, align 8
  %12 = load %struct.section_list*, %struct.section_list** @sections_with_arm_elf_section_data, align 8
  %13 = load %struct.section_list*, %struct.section_list** %3, align 8
  %14 = getelementptr inbounds %struct.section_list, %struct.section_list* %13, i32 0, i32 1
  store %struct.section_list* %12, %struct.section_list** %14, align 8
  %15 = load %struct.section_list*, %struct.section_list** %3, align 8
  %16 = getelementptr inbounds %struct.section_list, %struct.section_list* %15, i32 0, i32 0
  store %struct.section_list* null, %struct.section_list** %16, align 8
  %17 = load %struct.section_list*, %struct.section_list** %3, align 8
  %18 = getelementptr inbounds %struct.section_list, %struct.section_list* %17, i32 0, i32 1
  %19 = load %struct.section_list*, %struct.section_list** %18, align 8
  %20 = icmp ne %struct.section_list* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %8
  %22 = load %struct.section_list*, %struct.section_list** %3, align 8
  %23 = load %struct.section_list*, %struct.section_list** %3, align 8
  %24 = getelementptr inbounds %struct.section_list, %struct.section_list* %23, i32 0, i32 1
  %25 = load %struct.section_list*, %struct.section_list** %24, align 8
  %26 = getelementptr inbounds %struct.section_list, %struct.section_list* %25, i32 0, i32 0
  store %struct.section_list* %22, %struct.section_list** %26, align 8
  br label %27

27:                                               ; preds = %21, %8
  %28 = load %struct.section_list*, %struct.section_list** %3, align 8
  store %struct.section_list* %28, %struct.section_list** @sections_with_arm_elf_section_data, align 8
  br label %29

29:                                               ; preds = %27, %7
  ret void
}

declare dso_local %struct.section_list* @bfd_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

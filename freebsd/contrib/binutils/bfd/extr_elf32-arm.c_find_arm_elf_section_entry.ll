; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_find_arm_elf_section_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_find_arm_elf_section_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_list = type { %struct.section_list*, i32*, %struct.section_list* }

@find_arm_elf_section_entry.last_entry = internal global %struct.section_list* null, align 8
@sections_with_arm_elf_section_data = common dso_local global %struct.section_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.section_list* (i32*)* @find_arm_elf_section_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.section_list* @find_arm_elf_section_entry(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.section_list*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load %struct.section_list*, %struct.section_list** @sections_with_arm_elf_section_data, align 8
  store %struct.section_list* %4, %struct.section_list** %3, align 8
  %5 = load %struct.section_list*, %struct.section_list** @find_arm_elf_section_entry.last_entry, align 8
  %6 = icmp ne %struct.section_list* %5, null
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load %struct.section_list*, %struct.section_list** @find_arm_elf_section_entry.last_entry, align 8
  %9 = getelementptr inbounds %struct.section_list, %struct.section_list* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = icmp eq i32* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load %struct.section_list*, %struct.section_list** @find_arm_elf_section_entry.last_entry, align 8
  store %struct.section_list* %14, %struct.section_list** %3, align 8
  br label %33

15:                                               ; preds = %7
  %16 = load %struct.section_list*, %struct.section_list** @find_arm_elf_section_entry.last_entry, align 8
  %17 = getelementptr inbounds %struct.section_list, %struct.section_list* %16, i32 0, i32 2
  %18 = load %struct.section_list*, %struct.section_list** %17, align 8
  %19 = icmp ne %struct.section_list* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.section_list*, %struct.section_list** @find_arm_elf_section_entry.last_entry, align 8
  %22 = getelementptr inbounds %struct.section_list, %struct.section_list* %21, i32 0, i32 2
  %23 = load %struct.section_list*, %struct.section_list** %22, align 8
  %24 = getelementptr inbounds %struct.section_list, %struct.section_list* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.section_list*, %struct.section_list** @find_arm_elf_section_entry.last_entry, align 8
  %30 = getelementptr inbounds %struct.section_list, %struct.section_list* %29, i32 0, i32 2
  %31 = load %struct.section_list*, %struct.section_list** %30, align 8
  store %struct.section_list* %31, %struct.section_list** %3, align 8
  br label %32

32:                                               ; preds = %28, %20, %15
  br label %33

33:                                               ; preds = %32, %13
  br label %34

34:                                               ; preds = %33, %1
  br label %35

35:                                               ; preds = %46, %34
  %36 = load %struct.section_list*, %struct.section_list** %3, align 8
  %37 = icmp ne %struct.section_list* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load %struct.section_list*, %struct.section_list** %3, align 8
  %40 = getelementptr inbounds %struct.section_list, %struct.section_list* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = icmp eq i32* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %50

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.section_list*, %struct.section_list** %3, align 8
  %48 = getelementptr inbounds %struct.section_list, %struct.section_list* %47, i32 0, i32 2
  %49 = load %struct.section_list*, %struct.section_list** %48, align 8
  store %struct.section_list* %49, %struct.section_list** %3, align 8
  br label %35

50:                                               ; preds = %44, %35
  %51 = load %struct.section_list*, %struct.section_list** %3, align 8
  %52 = icmp ne %struct.section_list* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.section_list*, %struct.section_list** %3, align 8
  %55 = getelementptr inbounds %struct.section_list, %struct.section_list* %54, i32 0, i32 0
  %56 = load %struct.section_list*, %struct.section_list** %55, align 8
  store %struct.section_list* %56, %struct.section_list** @find_arm_elf_section_entry.last_entry, align 8
  br label %57

57:                                               ; preds = %53, %50
  %58 = load %struct.section_list*, %struct.section_list** %3, align 8
  ret %struct.section_list* %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_unrecord_section_with_arm_elf_section_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_unrecord_section_with_arm_elf_section_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_list = type { %struct.section_list*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.section_list* }

@sections_with_arm_elf_section_data = common dso_local global %struct.section_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @unrecord_section_with_arm_elf_section_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unrecord_section_with_arm_elf_section_data(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.section_list*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.section_list* @find_arm_elf_section_entry(i32* %4)
  store %struct.section_list* %5, %struct.section_list** %3, align 8
  %6 = load %struct.section_list*, %struct.section_list** %3, align 8
  %7 = icmp ne %struct.section_list* %6, null
  br i1 %7, label %8, label %45

8:                                                ; preds = %1
  %9 = load %struct.section_list*, %struct.section_list** %3, align 8
  %10 = getelementptr inbounds %struct.section_list, %struct.section_list* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.section_list*, %struct.section_list** %3, align 8
  %15 = getelementptr inbounds %struct.section_list, %struct.section_list* %14, i32 0, i32 0
  %16 = load %struct.section_list*, %struct.section_list** %15, align 8
  %17 = load %struct.section_list*, %struct.section_list** %3, align 8
  %18 = getelementptr inbounds %struct.section_list, %struct.section_list* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.section_list* %16, %struct.section_list** %20, align 8
  br label %21

21:                                               ; preds = %13, %8
  %22 = load %struct.section_list*, %struct.section_list** %3, align 8
  %23 = getelementptr inbounds %struct.section_list, %struct.section_list* %22, i32 0, i32 0
  %24 = load %struct.section_list*, %struct.section_list** %23, align 8
  %25 = icmp ne %struct.section_list* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.section_list*, %struct.section_list** %3, align 8
  %28 = getelementptr inbounds %struct.section_list, %struct.section_list* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.section_list*, %struct.section_list** %3, align 8
  %31 = getelementptr inbounds %struct.section_list, %struct.section_list* %30, i32 0, i32 0
  %32 = load %struct.section_list*, %struct.section_list** %31, align 8
  %33 = getelementptr inbounds %struct.section_list, %struct.section_list* %32, i32 0, i32 1
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %33, align 8
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.section_list*, %struct.section_list** %3, align 8
  %36 = load %struct.section_list*, %struct.section_list** @sections_with_arm_elf_section_data, align 8
  %37 = icmp eq %struct.section_list* %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.section_list*, %struct.section_list** %3, align 8
  %40 = getelementptr inbounds %struct.section_list, %struct.section_list* %39, i32 0, i32 0
  %41 = load %struct.section_list*, %struct.section_list** %40, align 8
  store %struct.section_list* %41, %struct.section_list** @sections_with_arm_elf_section_data, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.section_list*, %struct.section_list** %3, align 8
  %44 = call i32 @free(%struct.section_list* %43)
  br label %45

45:                                               ; preds = %42, %1
  ret void
}

declare dso_local %struct.section_list* @find_arm_elf_section_entry(i32*) #1

declare dso_local i32 @free(%struct.section_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

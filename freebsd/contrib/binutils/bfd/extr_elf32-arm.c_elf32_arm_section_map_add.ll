; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_section_map_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_section_map_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._arm_elf_section_data = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8, i32)* @elf32_arm_section_map_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf32_arm_section_map_add(i32* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct._arm_elf_section_data*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct._arm_elf_section_data* @elf32_arm_section_data(i32* %9)
  store %struct._arm_elf_section_data* %10, %struct._arm_elf_section_data** %7, align 8
  %11 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %7, align 8
  %12 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = call %struct.TYPE_4__* @bfd_malloc(i32 4)
  %17 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %7, align 8
  %18 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %17, i32 0, i32 2
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %18, align 8
  %19 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %7, align 8
  %20 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %7, align 8
  %22 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %15, %3
  %24 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %7, align 8
  %25 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %28 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %7, align 8
  %29 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %7, align 8
  %32 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %23
  %36 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %7, align 8
  %37 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %37, align 4
  %40 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %7, align 8
  %41 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %7, align 8
  %44 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call %struct.TYPE_4__* @bfd_realloc(%struct.TYPE_4__* %42, i32 %48)
  %50 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %7, align 8
  %51 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %50, i32 0, i32 2
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %51, align 8
  br label %52

52:                                               ; preds = %35, %23
  %53 = load i32, i32* %6, align 4
  %54 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %7, align 8
  %55 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %53, i32* %60, align 4
  %61 = load i8, i8* %5, align 1
  %62 = load %struct._arm_elf_section_data*, %struct._arm_elf_section_data** %7, align 8
  %63 = getelementptr inbounds %struct._arm_elf_section_data, %struct._arm_elf_section_data* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i8 %61, i8* %68, align 4
  ret void
}

declare dso_local %struct._arm_elf_section_data* @elf32_arm_section_data(i32*) #1

declare dso_local %struct.TYPE_4__* @bfd_malloc(i32) #1

declare dso_local %struct.TYPE_4__* @bfd_realloc(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

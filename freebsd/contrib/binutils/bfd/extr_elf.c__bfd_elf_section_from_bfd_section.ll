; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_section_from_bfd_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_section_from_bfd_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_section = type { i32 }
%struct.elf_backend_data = type { i64 (i32*, %struct.bfd_section.0*, i32*)* }
%struct.bfd_section.0 = type opaque
%struct.TYPE_2__ = type { i64 }

@SHN_ABS = common dso_local global i32 0, align 4
@SHN_COMMON = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i32 0, align 4
@bfd_error_nonrepresentable_section = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_section_from_bfd_section(i32* %0, %struct.bfd_section* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_section*, align 8
  %6 = alloca %struct.elf_backend_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bfd_section* %1, %struct.bfd_section** %5, align 8
  %9 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %10 = call %struct.TYPE_2__* @elf_section_data(%struct.bfd_section* %9)
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %14 = call %struct.TYPE_2__* @elf_section_data(%struct.bfd_section* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %20 = call %struct.TYPE_2__* @elf_section_data(%struct.bfd_section* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %73

24:                                               ; preds = %12, %2
  %25 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %26 = call i64 @bfd_is_abs_section(%struct.bfd_section* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @SHN_ABS, align 4
  store i32 %29, i32* %7, align 4
  br label %45

30:                                               ; preds = %24
  %31 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %32 = call i64 @bfd_is_com_section(%struct.bfd_section* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @SHN_COMMON, align 4
  store i32 %35, i32* %7, align 4
  br label %44

36:                                               ; preds = %30
  %37 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %38 = call i64 @bfd_is_und_section(%struct.bfd_section* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @SHN_UNDEF, align 4
  store i32 %41, i32* %7, align 4
  br label %43

42:                                               ; preds = %36
  store i32 -1, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %40
  br label %44

44:                                               ; preds = %43, %34
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i32*, i32** %4, align 8
  %47 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %46)
  store %struct.elf_backend_data* %47, %struct.elf_backend_data** %6, align 8
  %48 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %49 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %48, i32 0, i32 0
  %50 = load i64 (i32*, %struct.bfd_section.0*, i32*)*, i64 (i32*, %struct.bfd_section.0*, i32*)** %49, align 8
  %51 = icmp ne i64 (i32*, %struct.bfd_section.0*, i32*)* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %8, align 4
  %54 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %55 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %54, i32 0, i32 0
  %56 = load i64 (i32*, %struct.bfd_section.0*, i32*)*, i64 (i32*, %struct.bfd_section.0*, i32*)** %55, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %59 = bitcast %struct.bfd_section* %58 to %struct.bfd_section.0*
  %60 = call i64 %56(i32* %57, %struct.bfd_section.0* %59, i32* %8)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %73

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %45
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @bfd_error_nonrepresentable_section, align 4
  %70 = call i32 @bfd_set_error(i32 %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %62, %18
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_2__* @elf_section_data(%struct.bfd_section*) #1

declare dso_local i64 @bfd_is_abs_section(%struct.bfd_section*) #1

declare dso_local i64 @bfd_is_com_section(%struct.bfd_section*) #1

declare dso_local i64 @bfd_is_und_section(%struct.bfd_section*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

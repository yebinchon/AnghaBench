; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-sparc.c_elf32_sparc_merge_private_bfd_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-sparc.c_elf32_sparc_merge_private_bfd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@elf32_sparc_merge_private_bfd_data.previous_ibfd_e_flags = internal global i64 -1, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"%B: compiled for a 64 bit system and target is 32 bit\00", align 1
@DYNAMIC = common dso_local global i32 0, align 4
@bfd_arch_sparc = common dso_local global i32 0, align 4
@EF_SPARC_LEDATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"%B: linking little endian files with big endian files\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_12__*)* @elf32_sparc_merge_private_bfd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf32_sparc_merge_private_bfd_data(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = call i64 @bfd_get_flavour(%struct.TYPE_12__* %8)
  %10 = load i64, i64* @bfd_target_elf_flavour, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = call i64 @bfd_get_flavour(%struct.TYPE_12__* %13)
  %15 = load i64, i64* @bfd_target_elf_flavour, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %2
  %18 = load i64, i64* @TRUE, align 8
  store i64 %18, i64* %3, align 8
  br label %82

19:                                               ; preds = %12
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = call i64 @bfd_get_mach(%struct.TYPE_12__* %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @bfd_mach_sparc_64bit_p(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i64, i64* @TRUE, align 8
  store i64 %27, i64* %6, align 8
  %28 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = call i32 @_bfd_error_handler(i32 %28, %struct.TYPE_12__* %29)
  br label %50

31:                                               ; preds = %19
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DYNAMIC, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = call i64 @bfd_get_mach(%struct.TYPE_12__* %39)
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = load i32, i32* @bfd_arch_sparc, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @bfd_set_arch_mach(%struct.TYPE_12__* %44, i32 %45, i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %31
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = call %struct.TYPE_13__* @elf_elfheader(%struct.TYPE_12__* %51)
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EF_SPARC_LEDATA, align 8
  %56 = and i64 %54, %55
  %57 = load i64, i64* @elf32_sparc_merge_private_bfd_data.previous_ibfd_e_flags, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load i64, i64* @elf32_sparc_merge_private_bfd_data.previous_ibfd_e_flags, align 8
  %61 = icmp ne i64 %60, -1
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = call i32 @_bfd_error_handler(i32 %63, %struct.TYPE_12__* %64)
  %66 = load i64, i64* @TRUE, align 8
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %62, %59, %50
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = call %struct.TYPE_13__* @elf_elfheader(%struct.TYPE_12__* %68)
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @EF_SPARC_LEDATA, align 8
  %73 = and i64 %71, %72
  store i64 %73, i64* @elf32_sparc_merge_private_bfd_data.previous_ibfd_e_flags, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i32, i32* @bfd_error_bad_value, align 4
  %78 = call i32 @bfd_set_error(i32 %77)
  %79 = load i64, i64* @FALSE, align 8
  store i64 %79, i64* %3, align 8
  br label %82

80:                                               ; preds = %67
  %81 = load i64, i64* @TRUE, align 8
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %80, %76, %17
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_12__*) #1

declare dso_local i64 @bfd_get_mach(%struct.TYPE_12__*) #1

declare dso_local i64 @bfd_mach_sparc_64bit_p(i64) #1

declare dso_local i32 @_bfd_error_handler(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_arch_mach(%struct.TYPE_12__*, i32, i64) #1

declare dso_local %struct.TYPE_13__* @elf_elfheader(%struct.TYPE_12__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_object_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_object_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@bfd_mach_sparc_v9 = common dso_local global i64 0, align 8
@EF_SPARC_SUN_US3 = common dso_local global i32 0, align 4
@bfd_mach_sparc_v9b = common dso_local global i64 0, align 8
@EF_SPARC_SUN_US1 = common dso_local global i32 0, align 4
@bfd_mach_sparc_v9a = common dso_local global i64 0, align 8
@bfd_arch_sparc = common dso_local global i32 0, align 4
@EM_SPARC32PLUS = common dso_local global i64 0, align 8
@bfd_mach_sparc_v8plusb = common dso_local global i64 0, align 8
@bfd_mach_sparc_v8plusa = common dso_local global i64 0, align 8
@EF_SPARC_32PLUS = common dso_local global i32 0, align 4
@bfd_mach_sparc_v8plus = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@EF_SPARC_LEDATA = common dso_local global i32 0, align 4
@bfd_mach_sparc_sparclite_le = common dso_local global i64 0, align 8
@bfd_mach_sparc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_sparc_elf_object_p(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @ABI_64_P(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load i64, i64* @bfd_mach_sparc_v9, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_2__* @elf_elfheader(i32* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EF_SPARC_SUN_US3, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = load i64, i64* @bfd_mach_sparc_v9b, align 8
  store i64 %18, i64* %4, align 8
  br label %30

19:                                               ; preds = %8
  %20 = load i32*, i32** %3, align 8
  %21 = call %struct.TYPE_2__* @elf_elfheader(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @EF_SPARC_SUN_US1, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i64, i64* @bfd_mach_sparc_v9a, align 8
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %27, %19
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @bfd_arch_sparc, align 4
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @bfd_default_set_arch_mach(i32* %31, i32 %32, i64 %33)
  store i32 %34, i32* %2, align 4
  br label %101

35:                                               ; preds = %1
  %36 = load i32*, i32** %3, align 8
  %37 = call %struct.TYPE_2__* @elf_elfheader(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EM_SPARC32PLUS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %83

42:                                               ; preds = %35
  %43 = load i32*, i32** %3, align 8
  %44 = call %struct.TYPE_2__* @elf_elfheader(i32* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EF_SPARC_SUN_US3, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @bfd_arch_sparc, align 4
  %53 = load i64, i64* @bfd_mach_sparc_v8plusb, align 8
  %54 = call i32 @bfd_default_set_arch_mach(i32* %51, i32 %52, i64 %53)
  store i32 %54, i32* %2, align 4
  br label %101

55:                                               ; preds = %42
  %56 = load i32*, i32** %3, align 8
  %57 = call %struct.TYPE_2__* @elf_elfheader(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @EF_SPARC_SUN_US1, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* @bfd_arch_sparc, align 4
  %66 = load i64, i64* @bfd_mach_sparc_v8plusa, align 8
  %67 = call i32 @bfd_default_set_arch_mach(i32* %64, i32 %65, i64 %66)
  store i32 %67, i32* %2, align 4
  br label %101

68:                                               ; preds = %55
  %69 = load i32*, i32** %3, align 8
  %70 = call %struct.TYPE_2__* @elf_elfheader(i32* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @EF_SPARC_32PLUS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* @bfd_arch_sparc, align 4
  %79 = load i64, i64* @bfd_mach_sparc_v8plus, align 8
  %80 = call i32 @bfd_default_set_arch_mach(i32* %77, i32 %78, i64 %79)
  store i32 %80, i32* %2, align 4
  br label %101

81:                                               ; preds = %68
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %2, align 4
  br label %101

83:                                               ; preds = %35
  %84 = load i32*, i32** %3, align 8
  %85 = call %struct.TYPE_2__* @elf_elfheader(i32* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @EF_SPARC_LEDATA, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* @bfd_arch_sparc, align 4
  %94 = load i64, i64* @bfd_mach_sparc_sparclite_le, align 8
  %95 = call i32 @bfd_default_set_arch_mach(i32* %92, i32 %93, i64 %94)
  store i32 %95, i32* %2, align 4
  br label %101

96:                                               ; preds = %83
  %97 = load i32*, i32** %3, align 8
  %98 = load i32, i32* @bfd_arch_sparc, align 4
  %99 = load i64, i64* @bfd_mach_sparc, align 8
  %100 = call i32 @bfd_default_set_arch_mach(i32* %97, i32 %98, i64 %99)
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %96, %91, %81, %76, %63, %50, %30
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @ABI_64_P(i32*) #1

declare dso_local %struct.TYPE_2__* @elf_elfheader(i32*) #1

declare dso_local i32 @bfd_default_set_arch_mach(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

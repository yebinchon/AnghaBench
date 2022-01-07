; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_reloc.c__dwarf_get_reloc_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_reloc.c__dwarf_get_reloc_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@R_AARCH64_ABS64 = common dso_local global i32 0, align 4
@R_AARCH64_ABS32 = common dso_local global i32 0, align 4
@R_386_32 = common dso_local global i32 0, align 4
@R_X86_64_64 = common dso_local global i32 0, align 4
@R_X86_64_32 = common dso_local global i32 0, align 4
@R_SPARC_UA64 = common dso_local global i32 0, align 4
@R_SPARC_UA32 = common dso_local global i32 0, align 4
@R_PPC64_ADDR64 = common dso_local global i32 0, align 4
@R_PPC_ADDR32 = common dso_local global i32 0, align 4
@R_ARM_ABS32 = common dso_local global i32 0, align 4
@R_MIPS_64 = common dso_local global i32 0, align 4
@R_MIPS_32 = common dso_local global i32 0, align 4
@R_RISCV_64 = common dso_local global i32 0, align 4
@R_RISCV_32 = common dso_local global i32 0, align 4
@R_IA_64_DIR64LSB = common dso_local global i32 0, align 4
@R_IA_64_DIR32LSB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_get_reloc_type(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %80 [
    i32 136, label %13
    i32 129, label %22
    i32 128, label %24
    i32 130, label %33
    i32 132, label %42
    i32 135, label %51
    i32 133, label %53
    i32 131, label %62
    i32 134, label %71
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @R_AARCH64_ABS64, align 4
  br label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @R_AARCH64_ABS32, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %2
  %23 = load i32, i32* @R_386_32, align 4
  store i32 %23, i32* %3, align 4
  br label %82

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @R_X86_64_64, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @R_X86_64_32, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %3, align 4
  br label %82

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @R_SPARC_UA64, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @R_SPARC_UA32, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %3, align 4
  br label %82

42:                                               ; preds = %2
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @R_PPC64_ADDR64, align 4
  br label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @R_PPC_ADDR32, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %3, align 4
  br label %82

51:                                               ; preds = %2
  %52 = load i32, i32* @R_ARM_ABS32, align 4
  store i32 %52, i32* %3, align 4
  br label %82

53:                                               ; preds = %2
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @R_MIPS_64, align 4
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @R_MIPS_32, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %3, align 4
  br label %82

62:                                               ; preds = %2
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @R_RISCV_64, align 4
  br label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @R_RISCV_32, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %3, align 4
  br label %82

71:                                               ; preds = %2
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @R_IA_64_DIR64LSB, align 4
  br label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @R_IA_64_DIR32LSB, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %3, align 4
  br label %82

80:                                               ; preds = %2
  br label %81

81:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %78, %69, %60, %51, %49, %40, %31, %22, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

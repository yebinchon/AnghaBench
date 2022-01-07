; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_reloc.c__dwarf_get_reloc_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_reloc.c__dwarf_get_reloc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@R_AARCH64_ABS32 = common dso_local global i32 0, align 4
@R_AARCH64_ABS64 = common dso_local global i32 0, align 4
@R_ARM_ABS32 = common dso_local global i32 0, align 4
@R_386_32 = common dso_local global i32 0, align 4
@R_X86_64_32 = common dso_local global i32 0, align 4
@R_X86_64_64 = common dso_local global i32 0, align 4
@R_SPARC_UA32 = common dso_local global i32 0, align 4
@R_SPARC_UA64 = common dso_local global i32 0, align 4
@R_PPC_ADDR32 = common dso_local global i32 0, align 4
@R_PPC64_ADDR64 = common dso_local global i32 0, align 4
@R_MIPS_32 = common dso_local global i32 0, align 4
@R_MIPS_64 = common dso_local global i32 0, align 4
@R_RISCV_32 = common dso_local global i32 0, align 4
@R_RISCV_64 = common dso_local global i32 0, align 4
@R_IA_64_SECREL32LSB = common dso_local global i32 0, align 4
@R_IA_64_DIR64LSB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_get_reloc_size(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %112 [
    i32 133, label %9
    i32 138, label %10
    i32 137, label %22
    i32 139, label %28
    i32 136, label %28
    i32 128, label %34
    i32 129, label %46
    i32 132, label %58
    i32 131, label %64
    i32 134, label %76
    i32 130, label %88
    i32 135, label %100
  ]

9:                                                ; preds = %2
  br label %113

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @R_AARCH64_ABS32, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 4, i32* %3, align 4
  br label %114

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @R_AARCH64_ABS64, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 8, i32* %3, align 4
  br label %114

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20
  br label %113

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @R_ARM_ABS32, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 4, i32* %3, align 4
  br label %114

27:                                               ; preds = %22
  br label %113

28:                                               ; preds = %2, %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @R_386_32, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 4, i32* %3, align 4
  br label %114

33:                                               ; preds = %28
  br label %113

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @R_X86_64_32, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 4, i32* %3, align 4
  br label %114

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @R_X86_64_64, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 8, i32* %3, align 4
  br label %114

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44
  br label %113

46:                                               ; preds = %2
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @R_SPARC_UA32, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 4, i32* %3, align 4
  br label %114

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @R_SPARC_UA64, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 8, i32* %3, align 4
  br label %114

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  br label %113

58:                                               ; preds = %2
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @R_PPC_ADDR32, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 4, i32* %3, align 4
  br label %114

63:                                               ; preds = %58
  br label %113

64:                                               ; preds = %2
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @R_PPC_ADDR32, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 4, i32* %3, align 4
  br label %114

69:                                               ; preds = %64
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @R_PPC64_ADDR64, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 8, i32* %3, align 4
  br label %114

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74
  br label %113

76:                                               ; preds = %2
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @R_MIPS_32, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 4, i32* %3, align 4
  br label %114

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @R_MIPS_64, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 8, i32* %3, align 4
  br label %114

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86
  br label %113

88:                                               ; preds = %2
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @R_RISCV_32, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 4, i32* %3, align 4
  br label %114

93:                                               ; preds = %88
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @R_RISCV_64, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 8, i32* %3, align 4
  br label %114

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98
  br label %113

100:                                              ; preds = %2
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @R_IA_64_SECREL32LSB, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 4, i32* %3, align 4
  br label %114

105:                                              ; preds = %100
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @R_IA_64_DIR64LSB, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 8, i32* %3, align 4
  br label %114

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110
  br label %113

112:                                              ; preds = %2
  br label %113

113:                                              ; preds = %112, %111, %99, %87, %75, %63, %57, %45, %33, %27, %21, %9
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %109, %104, %97, %92, %85, %80, %73, %68, %62, %55, %50, %43, %38, %32, %26, %19, %14
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

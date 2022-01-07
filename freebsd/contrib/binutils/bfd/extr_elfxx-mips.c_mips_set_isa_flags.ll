; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_mips_set_isa_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_mips_set_isa_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@E_MIPS_ARCH_1 = common dso_local global i32 0, align 4
@E_MIPS_MACH_3900 = common dso_local global i32 0, align 4
@E_MIPS_ARCH_2 = common dso_local global i32 0, align 4
@E_MIPS_ARCH_3 = common dso_local global i32 0, align 4
@E_MIPS_MACH_4010 = common dso_local global i32 0, align 4
@E_MIPS_MACH_4100 = common dso_local global i32 0, align 4
@E_MIPS_MACH_4111 = common dso_local global i32 0, align 4
@E_MIPS_MACH_4120 = common dso_local global i32 0, align 4
@E_MIPS_MACH_4650 = common dso_local global i32 0, align 4
@E_MIPS_ARCH_4 = common dso_local global i32 0, align 4
@E_MIPS_MACH_5400 = common dso_local global i32 0, align 4
@E_MIPS_MACH_5500 = common dso_local global i32 0, align 4
@E_MIPS_MACH_9000 = common dso_local global i32 0, align 4
@E_MIPS_ARCH_5 = common dso_local global i32 0, align 4
@E_MIPS_ARCH_64R2 = common dso_local global i32 0, align 4
@E_MIPS_MACH_OCTEON = common dso_local global i32 0, align 4
@E_MIPS_ARCH_64 = common dso_local global i32 0, align 4
@E_MIPS_MACH_SB1 = common dso_local global i32 0, align 4
@E_MIPS_ARCH_32 = common dso_local global i32 0, align 4
@E_MIPS_ARCH_32R2 = common dso_local global i32 0, align 4
@EF_MIPS_ARCH = common dso_local global i32 0, align 4
@EF_MIPS_MACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @mips_set_isa_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_set_isa_flags(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @bfd_get_mach(i32* %4)
  switch i32 %5, label %6 [
    i32 152, label %7
    i32 151, label %9
    i32 137, label %13
    i32 150, label %15
    i32 145, label %15
    i32 144, label %15
    i32 143, label %15
    i32 149, label %17
    i32 148, label %21
    i32 147, label %25
    i32 146, label %29
    i32 142, label %33
    i32 139, label %37
    i32 138, label %41
    i32 134, label %45
    i32 140, label %49
    i32 136, label %49
    i32 135, label %49
    i32 154, label %49
    i32 153, label %49
    i32 141, label %51
    i32 133, label %53
    i32 132, label %57
    i32 131, label %61
    i32 129, label %63
    i32 130, label %65
    i32 128, label %67
  ]

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %1, %6
  %8 = load i32, i32* @E_MIPS_ARCH_1, align 4
  store i32 %8, i32* %3, align 4
  br label %69

9:                                                ; preds = %1
  %10 = load i32, i32* @E_MIPS_ARCH_1, align 4
  %11 = load i32, i32* @E_MIPS_MACH_3900, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  br label %69

13:                                               ; preds = %1
  %14 = load i32, i32* @E_MIPS_ARCH_2, align 4
  store i32 %14, i32* %3, align 4
  br label %69

15:                                               ; preds = %1, %1, %1, %1
  %16 = load i32, i32* @E_MIPS_ARCH_3, align 4
  store i32 %16, i32* %3, align 4
  br label %69

17:                                               ; preds = %1
  %18 = load i32, i32* @E_MIPS_ARCH_3, align 4
  %19 = load i32, i32* @E_MIPS_MACH_4010, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %1
  %22 = load i32, i32* @E_MIPS_ARCH_3, align 4
  %23 = load i32, i32* @E_MIPS_MACH_4100, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %3, align 4
  br label %69

25:                                               ; preds = %1
  %26 = load i32, i32* @E_MIPS_ARCH_3, align 4
  %27 = load i32, i32* @E_MIPS_MACH_4111, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %3, align 4
  br label %69

29:                                               ; preds = %1
  %30 = load i32, i32* @E_MIPS_ARCH_3, align 4
  %31 = load i32, i32* @E_MIPS_MACH_4120, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %3, align 4
  br label %69

33:                                               ; preds = %1
  %34 = load i32, i32* @E_MIPS_ARCH_3, align 4
  %35 = load i32, i32* @E_MIPS_MACH_4650, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %3, align 4
  br label %69

37:                                               ; preds = %1
  %38 = load i32, i32* @E_MIPS_ARCH_4, align 4
  %39 = load i32, i32* @E_MIPS_MACH_5400, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %3, align 4
  br label %69

41:                                               ; preds = %1
  %42 = load i32, i32* @E_MIPS_ARCH_4, align 4
  %43 = load i32, i32* @E_MIPS_MACH_5500, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %3, align 4
  br label %69

45:                                               ; preds = %1
  %46 = load i32, i32* @E_MIPS_ARCH_4, align 4
  %47 = load i32, i32* @E_MIPS_MACH_9000, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %3, align 4
  br label %69

49:                                               ; preds = %1, %1, %1, %1, %1
  %50 = load i32, i32* @E_MIPS_ARCH_4, align 4
  store i32 %50, i32* %3, align 4
  br label %69

51:                                               ; preds = %1
  %52 = load i32, i32* @E_MIPS_ARCH_5, align 4
  store i32 %52, i32* %3, align 4
  br label %69

53:                                               ; preds = %1
  %54 = load i32, i32* @E_MIPS_ARCH_64R2, align 4
  %55 = load i32, i32* @E_MIPS_MACH_OCTEON, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %3, align 4
  br label %69

57:                                               ; preds = %1
  %58 = load i32, i32* @E_MIPS_ARCH_64, align 4
  %59 = load i32, i32* @E_MIPS_MACH_SB1, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %3, align 4
  br label %69

61:                                               ; preds = %1
  %62 = load i32, i32* @E_MIPS_ARCH_32, align 4
  store i32 %62, i32* %3, align 4
  br label %69

63:                                               ; preds = %1
  %64 = load i32, i32* @E_MIPS_ARCH_64, align 4
  store i32 %64, i32* %3, align 4
  br label %69

65:                                               ; preds = %1
  %66 = load i32, i32* @E_MIPS_ARCH_32R2, align 4
  store i32 %66, i32* %3, align 4
  br label %69

67:                                               ; preds = %1
  %68 = load i32, i32* @E_MIPS_ARCH_64R2, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %65, %63, %61, %57, %53, %51, %49, %45, %41, %37, %33, %29, %25, %21, %17, %15, %13, %9, %7
  %70 = load i32, i32* @EF_MIPS_ARCH, align 4
  %71 = load i32, i32* @EF_MIPS_MACH, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32*, i32** %2, align 8
  %75 = call %struct.TYPE_2__* @elf_elfheader(i32* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %73
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32*, i32** %2, align 8
  %81 = call %struct.TYPE_2__* @elf_elfheader(i32* %80)
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  ret void
}

declare dso_local i32 @bfd_get_mach(i32*) #1

declare dso_local %struct.TYPE_2__* @elf_elfheader(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

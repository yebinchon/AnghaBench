; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_data.c__libelf_xlate_shtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_data.c__libelf_xlate_shtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ELF_T_DYN = common dso_local global i32 0, align 4
@ELF_T_SYM = common dso_local global i32 0, align 4
@ELF_T_ADDR = common dso_local global i32 0, align 4
@ELF_T_GNUHASH = common dso_local global i32 0, align 4
@ELF_T_WORD = common dso_local global i32 0, align 4
@ELF_T_BYTE = common dso_local global i32 0, align 4
@ELF_T_NOTE = common dso_local global i32 0, align 4
@ELF_T_REL = common dso_local global i32 0, align 4
@ELF_T_RELA = common dso_local global i32 0, align 4
@ELF_T_MOVE = common dso_local global i32 0, align 4
@ELF_T_SYMINFO = common dso_local global i32 0, align 4
@ELF_T_VDEF = common dso_local global i32 0, align 4
@ELF_T_VNEED = common dso_local global i32 0, align 4
@ELF_T_HALF = common dso_local global i32 0, align 4
@SHT_LOOS = common dso_local global i32 0, align 4
@SHT_HIUSER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_libelf_xlate_shtype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %51 [
    i32 150, label %5
    i32 149, label %7
    i32 148, label %9
    i32 147, label %11
    i32 146, label %13
    i32 145, label %15
    i32 144, label %17
    i32 143, label %19
    i32 142, label %21
    i32 141, label %23
    i32 140, label %25
    i32 139, label %27
    i32 138, label %29
    i32 137, label %31
    i32 136, label %33
    i32 129, label %35
    i32 128, label %37
    i32 135, label %39
    i32 134, label %41
    i32 133, label %43
    i32 132, label %45
    i32 131, label %47
    i32 130, label %49
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @ELF_T_DYN, align 4
  store i32 %6, i32* %2, align 4
  br label %62

7:                                                ; preds = %1
  %8 = load i32, i32* @ELF_T_SYM, align 4
  store i32 %8, i32* %2, align 4
  br label %62

9:                                                ; preds = %1
  %10 = load i32, i32* @ELF_T_ADDR, align 4
  store i32 %10, i32* %2, align 4
  br label %62

11:                                               ; preds = %1
  %12 = load i32, i32* @ELF_T_GNUHASH, align 4
  store i32 %12, i32* %2, align 4
  br label %62

13:                                               ; preds = %1
  %14 = load i32, i32* @ELF_T_WORD, align 4
  store i32 %14, i32* %2, align 4
  br label %62

15:                                               ; preds = %1
  %16 = load i32, i32* @ELF_T_WORD, align 4
  store i32 %16, i32* %2, align 4
  br label %62

17:                                               ; preds = %1
  %18 = load i32, i32* @ELF_T_WORD, align 4
  store i32 %18, i32* %2, align 4
  br label %62

19:                                               ; preds = %1
  %20 = load i32, i32* @ELF_T_ADDR, align 4
  store i32 %20, i32* %2, align 4
  br label %62

21:                                               ; preds = %1
  %22 = load i32, i32* @ELF_T_BYTE, align 4
  store i32 %22, i32* %2, align 4
  br label %62

23:                                               ; preds = %1
  %24 = load i32, i32* @ELF_T_NOTE, align 4
  store i32 %24, i32* %2, align 4
  br label %62

25:                                               ; preds = %1
  %26 = load i32, i32* @ELF_T_ADDR, align 4
  store i32 %26, i32* %2, align 4
  br label %62

27:                                               ; preds = %1
  %28 = load i32, i32* @ELF_T_BYTE, align 4
  store i32 %28, i32* %2, align 4
  br label %62

29:                                               ; preds = %1
  %30 = load i32, i32* @ELF_T_REL, align 4
  store i32 %30, i32* %2, align 4
  br label %62

31:                                               ; preds = %1
  %32 = load i32, i32* @ELF_T_RELA, align 4
  store i32 %32, i32* %2, align 4
  br label %62

33:                                               ; preds = %1
  %34 = load i32, i32* @ELF_T_BYTE, align 4
  store i32 %34, i32* %2, align 4
  br label %62

35:                                               ; preds = %1
  %36 = load i32, i32* @ELF_T_SYM, align 4
  store i32 %36, i32* %2, align 4
  br label %62

37:                                               ; preds = %1
  %38 = load i32, i32* @ELF_T_WORD, align 4
  store i32 %38, i32* %2, align 4
  br label %62

39:                                               ; preds = %1
  %40 = load i32, i32* @ELF_T_BYTE, align 4
  store i32 %40, i32* %2, align 4
  br label %62

41:                                               ; preds = %1
  %42 = load i32, i32* @ELF_T_MOVE, align 4
  store i32 %42, i32* %2, align 4
  br label %62

43:                                               ; preds = %1
  %44 = load i32, i32* @ELF_T_SYMINFO, align 4
  store i32 %44, i32* %2, align 4
  br label %62

45:                                               ; preds = %1
  %46 = load i32, i32* @ELF_T_VDEF, align 4
  store i32 %46, i32* %2, align 4
  br label %62

47:                                               ; preds = %1
  %48 = load i32, i32* @ELF_T_VNEED, align 4
  store i32 %48, i32* %2, align 4
  br label %62

49:                                               ; preds = %1
  %50 = load i32, i32* @ELF_T_HALF, align 4
  store i32 %50, i32* %2, align 4
  br label %62

51:                                               ; preds = %1
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SHT_LOOS, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @SHT_HIUSER, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @ELF_T_BYTE, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %55, %51
  store i32 -1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %59, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

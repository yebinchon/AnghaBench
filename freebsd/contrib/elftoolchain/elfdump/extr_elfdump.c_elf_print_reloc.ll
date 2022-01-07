; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i64, i32, %struct.section* }
%struct.section = type { i64, i32, i32 }

@SHT_REL = common dso_local global i64 0, align 8
@SHT_RELA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*)* @elf_print_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_reloc(%struct.elfdump* %0) #0 {
  %2 = alloca %struct.elfdump*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.elfdump* %0, %struct.elfdump** %2, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %76, %1
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %10 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %79

13:                                               ; preds = %7
  %14 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %15 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %14, i32 0, i32 2
  %16 = load %struct.section*, %struct.section** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.section, %struct.section* %16, i64 %17
  store %struct.section* %18, %struct.section** %3, align 8
  %19 = load %struct.section*, %struct.section** %3, align 8
  %20 = getelementptr inbounds %struct.section, %struct.section* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SHT_REL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %13
  %25 = load %struct.section*, %struct.section** %3, align 8
  %26 = getelementptr inbounds %struct.section, %struct.section* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SHT_RELA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %75

30:                                               ; preds = %24, %13
  %31 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %32 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %31, i32 0, i32 1
  %33 = call i64 @STAILQ_EMPTY(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %37 = load %struct.section*, %struct.section** %3, align 8
  %38 = getelementptr inbounds %struct.section, %struct.section* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @find_name(%struct.elfdump* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %75

42:                                               ; preds = %35, %30
  %43 = call i32 (...) @elf_errno()
  %44 = load %struct.section*, %struct.section** %3, align 8
  %45 = getelementptr inbounds %struct.section, %struct.section* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32* @elf_getdata(i32 %46, i32* null)
  store i32* %47, i32** %4, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = call i32 (...) @elf_errno()
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @elf_errmsg(i32 %54)
  %56 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %76

58:                                               ; preds = %42
  %59 = load %struct.section*, %struct.section** %3, align 8
  %60 = getelementptr inbounds %struct.section, %struct.section* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SHT_REL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %66 = load %struct.section*, %struct.section** %3, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @elf_print_rel(%struct.elfdump* %65, %struct.section* %66, i32* %67)
  br label %74

69:                                               ; preds = %58
  %70 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %71 = load %struct.section*, %struct.section** %3, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @elf_print_rela(%struct.elfdump* %70, %struct.section* %71, i32* %72)
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %35, %24
  br label %76

76:                                               ; preds = %75, %57
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %5, align 8
  br label %7

79:                                               ; preds = %7
  ret void
}

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i64 @find_name(%struct.elfdump*, i32) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local i32* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @elf_print_rel(%struct.elfdump*, %struct.section*, i32*) #1

declare dso_local i32 @elf_print_rela(%struct.elfdump*, %struct.section*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

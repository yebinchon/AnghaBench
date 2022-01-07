; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i64, %struct.TYPE_2__, i32, %struct.section* }
%struct.TYPE_2__ = type { i64 }
%struct.section = type { i64, i32, i32 }

@SHT_HASH = common dso_local global i64 0, align 8
@SHT_GNU_HASH = common dso_local global i64 0, align 8
@EM_ALPHA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*)* @elf_print_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_hash(%struct.elfdump* %0) #0 {
  %2 = alloca %struct.elfdump*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i64, align 8
  store %struct.elfdump* %0, %struct.elfdump** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %73, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %8 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %76

11:                                               ; preds = %5
  %12 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %13 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %12, i32 0, i32 3
  %14 = load %struct.section*, %struct.section** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.section, %struct.section* %14, i64 %15
  store %struct.section* %16, %struct.section** %3, align 8
  %17 = load %struct.section*, %struct.section** %3, align 8
  %18 = getelementptr inbounds %struct.section, %struct.section* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SHT_HASH, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %11
  %23 = load %struct.section*, %struct.section** %3, align 8
  %24 = getelementptr inbounds %struct.section, %struct.section* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SHT_GNU_HASH, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %22, %11
  %29 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %30 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %29, i32 0, i32 2
  %31 = call i64 @STAILQ_EMPTY(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %35 = load %struct.section*, %struct.section** %3, align 8
  %36 = getelementptr inbounds %struct.section, %struct.section* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @find_name(%struct.elfdump* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %33, %28
  %41 = load %struct.section*, %struct.section** %3, align 8
  %42 = getelementptr inbounds %struct.section, %struct.section* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SHT_GNU_HASH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %48 = load %struct.section*, %struct.section** %3, align 8
  %49 = call i32 @elf_print_gnu_hash(%struct.elfdump* %47, %struct.section* %48)
  br label %71

50:                                               ; preds = %40
  %51 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %52 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EM_ALPHA, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load %struct.section*, %struct.section** %3, align 8
  %59 = getelementptr inbounds %struct.section, %struct.section* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %64 = load %struct.section*, %struct.section** %3, align 8
  %65 = call i32 @elf_print_svr4_hash64(%struct.elfdump* %63, %struct.section* %64)
  br label %70

66:                                               ; preds = %57, %50
  %67 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %68 = load %struct.section*, %struct.section** %3, align 8
  %69 = call i32 @elf_print_svr4_hash(%struct.elfdump* %67, %struct.section* %68)
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %33, %22
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %4, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %4, align 8
  br label %5

76:                                               ; preds = %5
  ret void
}

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i64 @find_name(%struct.elfdump*, i32) #1

declare dso_local i32 @elf_print_gnu_hash(%struct.elfdump*, %struct.section*) #1

declare dso_local i32 @elf_print_svr4_hash64(%struct.elfdump*, %struct.section*) #1

declare dso_local i32 @elf_print_svr4_hash(%struct.elfdump*, %struct.section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

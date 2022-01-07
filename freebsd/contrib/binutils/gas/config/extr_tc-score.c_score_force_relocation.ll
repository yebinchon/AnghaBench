; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_score_force_relocation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_score_force_relocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fix = type { i64 }

@BFD_RELOC_VTABLE_INHERIT = common dso_local global i64 0, align 8
@BFD_RELOC_VTABLE_ENTRY = common dso_local global i64 0, align 8
@BFD_RELOC_SCORE_JMP = common dso_local global i64 0, align 8
@BFD_RELOC_SCORE_BRANCH = common dso_local global i64 0, align 8
@BFD_RELOC_SCORE16_JMP = common dso_local global i64 0, align 8
@BFD_RELOC_SCORE16_BRANCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @score_force_relocation(%struct.fix* %0) #0 {
  %2 = alloca %struct.fix*, align 8
  %3 = alloca i32, align 4
  store %struct.fix* %0, %struct.fix** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.fix*, %struct.fix** %2, align 8
  %5 = getelementptr inbounds %struct.fix, %struct.fix* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BFD_RELOC_VTABLE_INHERIT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %39, label %9

9:                                                ; preds = %1
  %10 = load %struct.fix*, %struct.fix** %2, align 8
  %11 = getelementptr inbounds %struct.fix, %struct.fix* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BFD_RELOC_VTABLE_ENTRY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %39, label %15

15:                                               ; preds = %9
  %16 = load %struct.fix*, %struct.fix** %2, align 8
  %17 = getelementptr inbounds %struct.fix, %struct.fix* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BFD_RELOC_SCORE_JMP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %39, label %21

21:                                               ; preds = %15
  %22 = load %struct.fix*, %struct.fix** %2, align 8
  %23 = getelementptr inbounds %struct.fix, %struct.fix* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BFD_RELOC_SCORE_BRANCH, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load %struct.fix*, %struct.fix** %2, align 8
  %29 = getelementptr inbounds %struct.fix, %struct.fix* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BFD_RELOC_SCORE16_JMP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.fix*, %struct.fix** %2, align 8
  %35 = getelementptr inbounds %struct.fix, %struct.fix* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BFD_RELOC_SCORE16_BRANCH, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27, %21, %15, %9, %1
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

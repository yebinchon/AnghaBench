; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_pre_insert_copies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_pre_insert_copies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.expr** }
%struct.expr = type { %struct.occr*, %struct.occr*, i32*, %struct.expr* }
%struct.occr = type { i32, i32, %struct.occr*, i32 }

@expr_hash_table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pre_redundant_insns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pre_insert_copies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pre_insert_copies() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.expr*, align 8
  %4 = alloca %struct.occr*, align 8
  %5 = alloca %struct.occr*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %102, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @expr_hash_table, i32 0, i32 0), align 8
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %105

11:                                               ; preds = %7
  %12 = load %struct.expr**, %struct.expr*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @expr_hash_table, i32 0, i32 1), align 8
  %13 = load i32, i32* %1, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.expr*, %struct.expr** %12, i64 %14
  %16 = load %struct.expr*, %struct.expr** %15, align 8
  store %struct.expr* %16, %struct.expr** %3, align 8
  br label %17

17:                                               ; preds = %97, %11
  %18 = load %struct.expr*, %struct.expr** %3, align 8
  %19 = icmp ne %struct.expr* %18, null
  br i1 %19, label %20, label %101

20:                                               ; preds = %17
  %21 = load %struct.expr*, %struct.expr** %3, align 8
  %22 = getelementptr inbounds %struct.expr, %struct.expr* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %97

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  %27 = load %struct.expr*, %struct.expr** %3, align 8
  %28 = getelementptr inbounds %struct.expr, %struct.expr* %27, i32 0, i32 1
  %29 = load %struct.occr*, %struct.occr** %28, align 8
  store %struct.occr* %29, %struct.occr** %4, align 8
  br label %30

30:                                               ; preds = %86, %26
  %31 = load %struct.occr*, %struct.occr** %4, align 8
  %32 = icmp ne %struct.occr* %31, null
  br i1 %32, label %33, label %90

33:                                               ; preds = %30
  %34 = load %struct.occr*, %struct.occr** %4, align 8
  %35 = getelementptr inbounds %struct.occr, %struct.occr* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %86

39:                                               ; preds = %33
  %40 = load %struct.expr*, %struct.expr** %3, align 8
  %41 = getelementptr inbounds %struct.expr, %struct.expr* %40, i32 0, i32 0
  %42 = load %struct.occr*, %struct.occr** %41, align 8
  store %struct.occr* %42, %struct.occr** %5, align 8
  br label %43

43:                                               ; preds = %81, %39
  %44 = load %struct.occr*, %struct.occr** %5, align 8
  %45 = icmp ne %struct.occr* %44, null
  br i1 %45, label %46, label %85

46:                                               ; preds = %43
  %47 = load %struct.occr*, %struct.occr** %5, align 8
  %48 = getelementptr inbounds %struct.occr, %struct.occr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  %50 = load %struct.occr*, %struct.occr** %5, align 8
  %51 = getelementptr inbounds %struct.occr, %struct.occr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %81

55:                                               ; preds = %46
  %56 = load i32, i32* @pre_redundant_insns, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @INSN_CUID(i32 %57)
  %59 = call i64 @TEST_BIT(i32 %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %81

62:                                               ; preds = %55
  %63 = load %struct.occr*, %struct.occr** %5, align 8
  %64 = getelementptr inbounds %struct.occr, %struct.occr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @BLOCK_FOR_INSN(i32 %65)
  %67 = load %struct.expr*, %struct.expr** %3, align 8
  %68 = load %struct.occr*, %struct.occr** %4, align 8
  %69 = getelementptr inbounds %struct.occr, %struct.occr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @BLOCK_FOR_INSN(i32 %70)
  %72 = call i32 @pre_expr_reaches_here_p(i32 %66, %struct.expr* %67, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %62
  br label %81

75:                                               ; preds = %62
  store i32 1, i32* %2, align 4
  %76 = load %struct.expr*, %struct.expr** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @pre_insert_copy_insn(%struct.expr* %76, i32 %77)
  %79 = load %struct.occr*, %struct.occr** %5, align 8
  %80 = getelementptr inbounds %struct.occr, %struct.occr* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %74, %61, %54
  %82 = load %struct.occr*, %struct.occr** %5, align 8
  %83 = getelementptr inbounds %struct.occr, %struct.occr* %82, i32 0, i32 2
  %84 = load %struct.occr*, %struct.occr** %83, align 8
  store %struct.occr* %84, %struct.occr** %5, align 8
  br label %43

85:                                               ; preds = %43
  br label %86

86:                                               ; preds = %85, %38
  %87 = load %struct.occr*, %struct.occr** %4, align 8
  %88 = getelementptr inbounds %struct.occr, %struct.occr* %87, i32 0, i32 2
  %89 = load %struct.occr*, %struct.occr** %88, align 8
  store %struct.occr* %89, %struct.occr** %4, align 8
  br label %30

90:                                               ; preds = %30
  %91 = load i32, i32* %2, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.expr*, %struct.expr** %3, align 8
  %95 = call i32 @update_ld_motion_stores(%struct.expr* %94)
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %25
  %98 = load %struct.expr*, %struct.expr** %3, align 8
  %99 = getelementptr inbounds %struct.expr, %struct.expr* %98, i32 0, i32 3
  %100 = load %struct.expr*, %struct.expr** %99, align 8
  store %struct.expr* %100, %struct.expr** %3, align 8
  br label %17

101:                                              ; preds = %17
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %1, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %1, align 4
  br label %7

105:                                              ; preds = %7
  ret void
}

declare dso_local i64 @TEST_BIT(i32, i32) #1

declare dso_local i32 @INSN_CUID(i32) #1

declare dso_local i32 @pre_expr_reaches_here_p(i32, %struct.expr*, i32) #1

declare dso_local i32 @BLOCK_FOR_INSN(i32) #1

declare dso_local i32 @pre_insert_copy_insn(%struct.expr*, i32) #1

declare dso_local i32 @update_ld_motion_stores(%struct.expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

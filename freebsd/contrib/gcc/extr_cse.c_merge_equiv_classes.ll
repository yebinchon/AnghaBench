; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_merge_equiv_classes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_merge_equiv_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i32, i64, %struct.table_elt*, i32, %struct.table_elt* }

@hash_arg_in_memory = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.table_elt*, %struct.table_elt*)* @merge_equiv_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_equiv_classes(%struct.table_elt* %0, %struct.table_elt* %1) #0 {
  %3 = alloca %struct.table_elt*, align 8
  %4 = alloca %struct.table_elt*, align 8
  %5 = alloca %struct.table_elt*, align 8
  %6 = alloca %struct.table_elt*, align 8
  %7 = alloca %struct.table_elt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.table_elt* %0, %struct.table_elt** %3, align 8
  store %struct.table_elt* %1, %struct.table_elt** %4, align 8
  %12 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %13 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %12, i32 0, i32 4
  %14 = load %struct.table_elt*, %struct.table_elt** %13, align 8
  store %struct.table_elt* %14, %struct.table_elt** %3, align 8
  %15 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %16 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %15, i32 0, i32 4
  %17 = load %struct.table_elt*, %struct.table_elt** %16, align 8
  store %struct.table_elt* %17, %struct.table_elt** %4, align 8
  %18 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %19 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %20 = icmp eq %struct.table_elt* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %102

22:                                               ; preds = %2
  %23 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  store %struct.table_elt* %23, %struct.table_elt** %5, align 8
  br label %24

24:                                               ; preds = %100, %22
  %25 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  %26 = icmp ne %struct.table_elt* %25, null
  br i1 %26, label %27, label %102

27:                                               ; preds = %24
  %28 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  %29 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  %32 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  %35 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %34, i32 0, i32 2
  %36 = load %struct.table_elt*, %struct.table_elt** %35, align 8
  store %struct.table_elt* %36, %struct.table_elt** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @REG_P(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @exp_equiv_p(i32 %41, i32 %42, i32 1, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %99

45:                                               ; preds = %40, %27
  store i32 0, i32* %11, align 4
  store i64 0, i64* @hash_arg_in_memory, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @HASH(i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @REG_P(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @REGNO(i32 %53)
  %55 = call i32 @REGNO_QTY_VALID_P(i64 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @REGNO(i32 %56)
  %58 = call i32 @delete_reg_equiv(i64 %57)
  br label %59

59:                                               ; preds = %52, %45
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @REG_P(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @REGNO(i32 %64)
  %66 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @remove_pseudo_from_table(i32 %69, i32 %70)
  br label %76

72:                                               ; preds = %63, %59
  %73 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @remove_from_table(%struct.table_elt* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %79 = call i64 @insert_regs(i32 %77, %struct.table_elt* %78, i32 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81, %76
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @rehash_using_reg(i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @HASH(i32 %87, i32 %88)
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call %struct.table_elt* @insert(i32 %91, %struct.table_elt* %92, i32 %93, i32 %94)
  store %struct.table_elt* %95, %struct.table_elt** %7, align 8
  %96 = load i64, i64* @hash_arg_in_memory, align 8
  %97 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %98 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %90, %40
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  store %struct.table_elt* %101, %struct.table_elt** %5, align 8
  br label %24

102:                                              ; preds = %21, %24
  ret void
}

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @exp_equiv_p(i32, i32, i32, i32) #1

declare dso_local i32 @HASH(i32, i32) #1

declare dso_local i32 @REGNO_QTY_VALID_P(i64) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @delete_reg_equiv(i64) #1

declare dso_local i32 @remove_pseudo_from_table(i32, i32) #1

declare dso_local i32 @remove_from_table(%struct.table_elt*, i32) #1

declare dso_local i64 @insert_regs(i32, %struct.table_elt*, i32) #1

declare dso_local i32 @rehash_using_reg(i32) #1

declare dso_local %struct.table_elt* @insert(i32, %struct.table_elt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_equiv_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_equiv_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qty_table_elem = type { i64 }
%struct.table_elt = type { i64, i64, %struct.table_elt*, %struct.table_elt* }

@qty_table = common dso_local global %struct.qty_table_elem* null, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @equiv_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @equiv_constant(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qty_table_elem*, align 8
  %6 = alloca %struct.table_elt*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @REG_P(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @REGNO(i64 %11)
  %13 = call i64 @REGNO_QTY_VALID_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @REGNO(i64 %16)
  %18 = call i32 @REG_QTY(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.qty_table_elem*, %struct.qty_table_elem** @qty_table, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %19, i64 %21
  store %struct.qty_table_elem* %22, %struct.qty_table_elem** %5, align 8
  %23 = load %struct.qty_table_elem*, %struct.qty_table_elem** %5, align 8
  %24 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @GET_MODE(i64 %28)
  %30 = load %struct.qty_table_elem*, %struct.qty_table_elem** %5, align 8
  %31 = getelementptr inbounds %struct.qty_table_elem, %struct.qty_table_elem* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @gen_lowpart(i32 %29, i64 %32)
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %27, %15
  br label %35

35:                                               ; preds = %34, %10, %1
  %36 = load i64, i64* %3, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @CONSTANT_P(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %35
  %43 = load i64, i64* %3, align 8
  store i64 %43, i64* %2, align 8
  br label %98

44:                                               ; preds = %38
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @MEM_P(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %97

48:                                               ; preds = %44
  %49 = load i64, i64* %3, align 8
  %50 = load i32, i32* @NULL_RTX, align 4
  %51 = call i64 @fold_rtx(i64 %49, i32 %50)
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @CONSTANT_P(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i64, i64* %3, align 8
  store i64 %56, i64* %2, align 8
  br label %98

57:                                               ; preds = %48
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @GET_MODE(i64 %60)
  %62 = call i32 @SAFE_HASH(i64 %59, i32 %61)
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @GET_MODE(i64 %63)
  %65 = call %struct.table_elt* @lookup(i64 %58, i32 %62, i32 %64)
  store %struct.table_elt* %65, %struct.table_elt** %6, align 8
  %66 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %67 = icmp eq %struct.table_elt* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store i64 0, i64* %2, align 8
  br label %98

69:                                               ; preds = %57
  %70 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %71 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %70, i32 0, i32 3
  %72 = load %struct.table_elt*, %struct.table_elt** %71, align 8
  store %struct.table_elt* %72, %struct.table_elt** %6, align 8
  br label %73

73:                                               ; preds = %92, %69
  %74 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %75 = icmp ne %struct.table_elt* %74, null
  br i1 %75, label %76, label %96

76:                                               ; preds = %73
  %77 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %78 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %83 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @CONSTANT_P(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %89 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %2, align 8
  br label %98

91:                                               ; preds = %81, %76
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %94 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %93, i32 0, i32 2
  %95 = load %struct.table_elt*, %struct.table_elt** %94, align 8
  store %struct.table_elt* %95, %struct.table_elt** %6, align 8
  br label %73

96:                                               ; preds = %73
  br label %97

97:                                               ; preds = %96, %44
  store i64 0, i64* %2, align 8
  br label %98

98:                                               ; preds = %97, %87, %68, %55, %42
  %99 = load i64, i64* %2, align 8
  ret i64 %99
}

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO_QTY_VALID_P(i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @REG_QTY(i32) #1

declare dso_local i64 @gen_lowpart(i32, i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @fold_rtx(i64, i32) #1

declare dso_local %struct.table_elt* @lookup(i64, i32, i32) #1

declare dso_local i32 @SAFE_HASH(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

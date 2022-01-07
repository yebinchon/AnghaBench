; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_plus_minus_op_data_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_plus_minus_op_data_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simplify_plus_minus_op_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @simplify_plus_minus_op_data_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simplify_plus_minus_op_data_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.simplify_plus_minus_op_data*, align 8
  %7 = alloca %struct.simplify_plus_minus_op_data*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.simplify_plus_minus_op_data*
  store %struct.simplify_plus_minus_op_data* %10, %struct.simplify_plus_minus_op_data** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.simplify_plus_minus_op_data*
  store %struct.simplify_plus_minus_op_data* %12, %struct.simplify_plus_minus_op_data** %7, align 8
  %13 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %7, align 8
  %14 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @commutative_operand_precedence(i32 %15)
  %17 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %6, align 8
  %18 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @commutative_operand_precedence(i32 %19)
  %21 = sub nsw i32 %16, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %2
  %27 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %6, align 8
  %28 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @REG_P(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %7, align 8
  %34 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @REG_P(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %6, align 8
  %40 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @REGNO(i32 %41)
  %43 = load %struct.simplify_plus_minus_op_data*, %struct.simplify_plus_minus_op_data** %7, align 8
  %44 = getelementptr inbounds %struct.simplify_plus_minus_op_data, %struct.simplify_plus_minus_op_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @REGNO(i32 %45)
  %47 = sub nsw i32 %42, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %32, %26
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %38, %24
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @commutative_operand_precedence(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

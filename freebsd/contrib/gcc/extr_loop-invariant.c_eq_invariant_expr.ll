; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_eq_invariant_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_eq_invariant_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.invariant_expr_entry = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @eq_invariant_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eq_invariant_expr(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.invariant_expr_entry*, align 8
  %7 = alloca %struct.invariant_expr_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.invariant_expr_entry*
  store %struct.invariant_expr_entry* %9, %struct.invariant_expr_entry** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.invariant_expr_entry*
  store %struct.invariant_expr_entry* %11, %struct.invariant_expr_entry** %7, align 8
  %12 = load %struct.invariant_expr_entry*, %struct.invariant_expr_entry** %6, align 8
  %13 = getelementptr inbounds %struct.invariant_expr_entry, %struct.invariant_expr_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.invariant_expr_entry*, %struct.invariant_expr_entry** %7, align 8
  %16 = getelementptr inbounds %struct.invariant_expr_entry, %struct.invariant_expr_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load %struct.invariant_expr_entry*, %struct.invariant_expr_entry** %6, align 8
  %22 = getelementptr inbounds %struct.invariant_expr_entry, %struct.invariant_expr_entry* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.invariant_expr_entry*, %struct.invariant_expr_entry** %6, align 8
  %27 = getelementptr inbounds %struct.invariant_expr_entry, %struct.invariant_expr_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.invariant_expr_entry*, %struct.invariant_expr_entry** %7, align 8
  %30 = getelementptr inbounds %struct.invariant_expr_entry, %struct.invariant_expr_entry* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.invariant_expr_entry*, %struct.invariant_expr_entry** %7, align 8
  %35 = getelementptr inbounds %struct.invariant_expr_entry, %struct.invariant_expr_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @invariant_expr_equal_p(i32 %25, i32 %28, i32 %33, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %20, %19
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @invariant_expr_equal_p(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

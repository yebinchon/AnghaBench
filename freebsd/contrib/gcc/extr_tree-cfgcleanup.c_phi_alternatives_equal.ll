; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfgcleanup.c_phi_alternatives_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfgcleanup.c_phi_alternatives_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_4__*, %struct.TYPE_4__*)* @phi_alternatives_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phi_alternatives_equal(i32 %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @phi_nodes(i32 %19)
  store i64 %20, i64* %10, align 8
  br label %21

21:                                               ; preds = %47, %3
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @PHI_ARG_DEF(i64 %25, i32 %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @PHI_ARG_DEF(i64 %28, i32 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @NULL_TREE, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @gcc_assert(i32 %34)
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @NULL_TREE, align 8
  %38 = icmp ne i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @gcc_assert(i32 %39)
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @operand_equal_for_phi_arg_p(i64 %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %51

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %10, align 8
  %49 = call i64 @PHI_CHAIN(i64 %48)
  store i64 %49, i64* %10, align 8
  br label %21

50:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i64 @PHI_ARG_DEF(i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @operand_equal_for_phi_arg_p(i64, i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

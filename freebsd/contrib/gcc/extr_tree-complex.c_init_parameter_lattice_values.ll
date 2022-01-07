; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-complex.c_init_parameter_lattice_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-complex.c_init_parameter_lattice_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@complex_lattice_t = common dso_local global i32 0, align 4
@complex_lattice_values = common dso_local global i32 0, align 4
@VARYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_parameter_lattice_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_parameter_lattice_values() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @DECL_ARGUMENTS(i32 %5)
  store i64 %6, i64* %1, align 8
  br label %7

7:                                                ; preds = %28, %0
  %8 = load i64, i64* %1, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i64, i64* %1, align 8
  %12 = call i64 @is_complex_reg(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i64, i64* %1, align 8
  %16 = call i32* @var_ann(i64 %15)
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i64, i64* %1, align 8
  %20 = call i64 @default_def(i64 %19)
  store i64 %20, i64* %2, align 8
  %21 = load i32, i32* @complex_lattice_t, align 4
  %22 = load i32, i32* @complex_lattice_values, align 4
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @SSA_NAME_VERSION(i64 %23)
  %25 = load i32, i32* @VARYING, align 4
  %26 = call i32 @VEC_replace(i32 %21, i32 %22, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %18, %14, %10
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %1, align 8
  %30 = call i64 @TREE_CHAIN(i64 %29)
  store i64 %30, i64* %1, align 8
  br label %7

31:                                               ; preds = %7
  ret void
}

declare dso_local i64 @DECL_ARGUMENTS(i32) #1

declare dso_local i64 @is_complex_reg(i64) #1

declare dso_local i32* @var_ann(i64) #1

declare dso_local i64 @default_def(i64) #1

declare dso_local i32 @VEC_replace(i32, i32, i32, i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

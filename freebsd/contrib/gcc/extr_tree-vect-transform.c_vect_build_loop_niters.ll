; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-transform.c_vect_build_loop_niters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-transform.c_vect_build_loop_niters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"niters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @vect_build_loop_niters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vect_build_loop_niters(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.loop* @LOOP_VINFO_LOOP(i32 %10)
  store %struct.loop* %11, %struct.loop** %7, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @LOOP_VINFO_NITERS(i32 %12)
  %14 = call i64 @unshare_expr(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @TREE_TYPE(i64 %15)
  %17 = call i64 @create_tmp_var(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @add_referenced_var(i64 %18)
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @force_gimple_operand(i64 %20, i64* %4, i32 0, i64 %21)
  store i64 %22, i64* %3, align 8
  %23 = load %struct.loop*, %struct.loop** %7, align 8
  %24 = call i32 @loop_preheader_edge(%struct.loop* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @bsi_insert_on_edge_immediate(i32 %28, i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @gcc_assert(i32 %34)
  br label %36

36:                                               ; preds = %27, %1
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local %struct.loop* @LOOP_VINFO_LOOP(i32) #1

declare dso_local i64 @unshare_expr(i32) #1

declare dso_local i32 @LOOP_VINFO_NITERS(i32) #1

declare dso_local i64 @create_tmp_var(i32, i8*) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @add_referenced_var(i64) #1

declare dso_local i64 @force_gimple_operand(i64, i64*, i32, i64) #1

declare dso_local i32 @loop_preheader_edge(%struct.loop*) #1

declare dso_local i32 @bsi_insert_on_edge_immediate(i32, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

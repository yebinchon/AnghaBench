; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dce.c_remove_dead_phis.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dce.c_remove_dead_phis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Deleting : \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @remove_dead_phis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_dead_phis(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @NULL_TREE, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @phi_nodes(i32 %7)
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %48, %1
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 1), align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 1), align 4
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @NECESSARY(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @PHI_CHAIN(i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* @dump_file, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load i32, i32* @dump_flags, align 4
  %25 = load i32, i32* @TDF_DETAILS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i64, i64* @dump_file, align 8
  %30 = call i32 @fprintf(i64 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @dump_file, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* @TDF_SLIM, align 4
  %34 = call i32 @print_generic_stmt(i64 %31, i64 %32, i32 %33)
  %35 = load i64, i64* @dump_file, align 8
  %36 = call i32 @fprintf(i64 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %28, %23, %18
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @remove_phi_node(i64 %38, i64 %39)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 4
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %4, align 8
  br label %48

44:                                               ; preds = %12
  %45 = load i64, i64* %4, align 8
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @PHI_CHAIN(i64 %46)
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %44, %37
  br label %9

49:                                               ; preds = %9
  ret void
}

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i32 @NECESSARY(i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_stmt(i64, i64, i32) #1

declare dso_local i32 @remove_phi_node(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

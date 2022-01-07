; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dce.c_print_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dce.c_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_STATS = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"Removed %d of %d statements (%d%%)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Removed %d of %d PHI nodes (%d%%)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stats() #0 {
  %1 = alloca float, align 4
  %2 = load i64, i64* @dump_file, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %42

4:                                                ; preds = %0
  %5 = load i32, i32* @dump_flags, align 4
  %6 = load i32, i32* @TDF_STATS, align 4
  %7 = load i32, i32* @TDF_DETAILS, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 8
  %13 = sitofp i32 %12 to float
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 1), align 4
  %15 = sitofp i32 %14 to float
  %16 = fdiv float %13, %15
  %17 = fmul float %16, 1.000000e+02
  store float %17, float* %1, align 4
  %18 = load i64, i64* @dump_file, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 1), align 4
  %21 = load float, float* %1, align 4
  %22 = fptosi float %21 to i32
  %23 = call i32 @fprintf(i64 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %22)
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 2), align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  store float 0.000000e+00, float* %1, align 4
  br label %34

27:                                               ; preds = %11
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 3), align 8
  %29 = sitofp i32 %28 to float
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 2), align 8
  %31 = sitofp i64 %30 to float
  %32 = fdiv float %29, %31
  %33 = fmul float %32, 1.000000e+02
  store float %33, float* %1, align 4
  br label %34

34:                                               ; preds = %27, %26
  %35 = load i64, i64* @dump_file, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 3), align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 2), align 8
  %38 = trunc i64 %37 to i32
  %39 = load float, float* %1, align 4
  %40 = fptosi float %39 to i32
  %41 = call i32 @fprintf(i64 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %34, %4, %0
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

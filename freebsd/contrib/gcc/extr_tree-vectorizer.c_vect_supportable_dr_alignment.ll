; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_vect_supportable_dr_alignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_vect_supportable_dr_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (...)* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.data_reference = type { i32 }

@dr_aligned = common dso_local global i32 0, align 4
@vec_realign_load_optab = common dso_local global %struct.TYPE_10__* null, align 8
@CODE_FOR_nothing = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@dr_unaligned_software_pipeline = common dso_local global i32 0, align 4
@movmisalign_optab = common dso_local global %struct.TYPE_12__* null, align 8
@dr_unaligned_supported = common dso_local global i32 0, align 4
@dr_unaligned_unsupported = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vect_supportable_dr_alignment(%struct.data_reference* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.data_reference*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.data_reference* %0, %struct.data_reference** %3, align 8
  %6 = load %struct.data_reference*, %struct.data_reference** %3, align 8
  %7 = call i32 @DR_STMT(%struct.data_reference* %6)
  %8 = call i32 @vinfo_for_stmt(i32 %7)
  %9 = call i32 @STMT_VINFO_VECTYPE(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @TYPE_MODE(i32 %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.data_reference*, %struct.data_reference** %3, align 8
  %14 = call i64 @aligned_access_p(%struct.data_reference* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @dr_aligned, align 4
  store i32 %17, i32* %2, align 4
  br label %58

18:                                               ; preds = %1
  %19 = load %struct.data_reference*, %struct.data_reference** %3, align 8
  %20 = call i64 @DR_IS_READ(%struct.data_reference* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vec_realign_load_optab, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CODE_FOR_nothing, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %22
  %34 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @targetm, i32 0, i32 0, i32 0), align 8
  %35 = icmp ne i64 (...)* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @targetm, i32 0, i32 0, i32 0), align 8
  %38 = call i64 (...) %37()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %33
  %41 = load i32, i32* @dr_unaligned_software_pipeline, align 4
  store i32 %41, i32* %2, align 4
  br label %58

42:                                               ; preds = %36, %22
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @movmisalign_optab, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CODE_FOR_nothing, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @dr_unaligned_supported, align 4
  store i32 %54, i32* %2, align 4
  br label %58

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* @dr_unaligned_unsupported, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %53, %40, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @STMT_VINFO_VECTYPE(i32) #1

declare dso_local i32 @vinfo_for_stmt(i32) #1

declare dso_local i32 @DR_STMT(%struct.data_reference*) #1

declare dso_local i64 @TYPE_MODE(i32) #1

declare dso_local i64 @aligned_access_p(%struct.data_reference*) #1

declare dso_local i64 @DR_IS_READ(%struct.data_reference*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

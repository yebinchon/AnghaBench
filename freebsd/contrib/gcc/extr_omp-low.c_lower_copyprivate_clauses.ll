; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_lower_copyprivate_clauses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_lower_copyprivate_clauses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (i64, i64, i64)* }
%struct.TYPE_9__ = type { i64 }

@OMP_CLAUSE_COPYPRIVATE = common dso_local global i64 0, align 8
@MODIFY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, i64*, %struct.TYPE_9__*)* @lower_copyprivate_clauses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lower_copyprivate_clauses(i64 %0, i64* %1, i64* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %9, align 8
  br label %15

15:                                               ; preds = %82, %4
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %85

18:                                               ; preds = %15
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @OMP_CLAUSE_CODE(i64 %19)
  %21 = load i64, i64* @OMP_CLAUSE_COPYPRIVATE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %82

24:                                               ; preds = %18
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @OMP_CLAUSE_DECL(i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @use_pointer_for_field(i64 %27, i32 0)
  store i32 %28, i32* %13, align 4
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = call i64 @build_sender_ref(i64 %29, %struct.TYPE_9__* %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = call i64 @lookup_decl_in_outer_ctx(i64 %37, %struct.TYPE_9__* %38)
  br label %42

40:                                               ; preds = %24
  %41 = load i64, i64* %10, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i64 [ %39, %36 ], [ %41, %40 ]
  store i64 %43, i64* %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @build_fold_addr_expr(i64 %47)
  br label %51

49:                                               ; preds = %42
  %50 = load i64, i64* %12, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i64 [ %48, %46 ], [ %50, %49 ]
  store i64 %52, i64* %12, align 8
  %53 = load i32, i32* @MODIFY_EXPR, align 4
  %54 = load i32, i32* @void_type_node, align 4
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @build2(i32 %53, i32 %54, i64 %55, i64 %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = call i32 @gimplify_and_add(i64 %58, i64* %59)
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = call i64 @build_receiver_ref(i64 %61, i32 %62, %struct.TYPE_9__* %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @is_reference(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %51
  %69 = load i64, i64* %11, align 8
  %70 = call i64 @build_fold_indirect_ref(i64 %69)
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @build_fold_indirect_ref(i64 %71)
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %68, %51
  %74 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i64 %74(i64 %75, i64 %76, i64 %77)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64*, i64** %7, align 8
  %81 = call i32 @gimplify_and_add(i64 %79, i64* %80)
  br label %82

82:                                               ; preds = %73, %23
  %83 = load i64, i64* %9, align 8
  %84 = call i64 @OMP_CLAUSE_CHAIN(i64 %83)
  store i64 %84, i64* %9, align 8
  br label %15

85:                                               ; preds = %15
  ret void
}

declare dso_local i64 @OMP_CLAUSE_CODE(i64) #1

declare dso_local i64 @OMP_CLAUSE_DECL(i64) #1

declare dso_local i32 @use_pointer_for_field(i64, i32) #1

declare dso_local i64 @build_sender_ref(i64, %struct.TYPE_9__*) #1

declare dso_local i64 @lookup_decl_in_outer_ctx(i64, %struct.TYPE_9__*) #1

declare dso_local i64 @build_fold_addr_expr(i64) #1

declare dso_local i64 @build2(i32, i32, i64, i64) #1

declare dso_local i32 @gimplify_and_add(i64, i64*) #1

declare dso_local i64 @build_receiver_ref(i64, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @is_reference(i64) #1

declare dso_local i64 @build_fold_indirect_ref(i64) #1

declare dso_local i64 @OMP_CLAUSE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

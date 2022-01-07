; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_record_estimate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_record_estimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, %struct.nb_iter_bound* }
%struct.nb_iter_bound = type { %struct.nb_iter_bound*, i8*, i8* }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Statements after \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c" are executed at most \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" (bounded by \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c") times in loop %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_estimate(%struct.loop* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nb_iter_bound*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.loop* %0, %struct.loop** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = call %struct.nb_iter_bound* @xmalloc(i32 24)
  store %struct.nb_iter_bound* %12, %struct.nb_iter_bound** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @derive_constant_upper_bound(i8* %13, i8* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @TREE_TYPE(i8* %16)
  %18 = call i32 @unsigned_type_for(i32 %17)
  %19 = load i32, i32* %10, align 4
  %20 = call i8* @double_int_to_tree(i32 %18, i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i64, i64* @dump_file, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %4
  %24 = load i32, i32* @dump_flags, align 4
  %25 = load i32, i32* @TDF_DETAILS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = load i64, i64* @dump_file, align 8
  %30 = call i32 (i64, i8*, ...) @fprintf(i64 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @dump_file, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* @TDF_SLIM, align 4
  %34 = call i32 @print_generic_expr(i64 %31, i8* %32, i32 %33)
  %35 = load i64, i64* @dump_file, align 8
  %36 = call i32 (i64, i8*, ...) @fprintf(i64 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64, i64* @dump_file, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @TDF_SLIM, align 4
  %40 = call i32 @print_generic_expr(i64 %37, i8* %38, i32 %39)
  %41 = load i64, i64* @dump_file, align 8
  %42 = call i32 (i64, i8*, ...) @fprintf(i64 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i64, i64* @dump_file, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* @TDF_SLIM, align 4
  %46 = call i32 @print_generic_expr(i64 %43, i8* %44, i32 %45)
  %47 = load i64, i64* @dump_file, align 8
  %48 = load %struct.loop*, %struct.loop** %5, align 8
  %49 = getelementptr inbounds %struct.loop, %struct.loop* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i64, i8*, ...) @fprintf(i64 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %28, %23, %4
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %9, align 8
  %55 = getelementptr inbounds %struct.nb_iter_bound, %struct.nb_iter_bound* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %9, align 8
  %58 = getelementptr inbounds %struct.nb_iter_bound, %struct.nb_iter_bound* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.loop*, %struct.loop** %5, align 8
  %60 = getelementptr inbounds %struct.loop, %struct.loop* %59, i32 0, i32 1
  %61 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %60, align 8
  %62 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %9, align 8
  %63 = getelementptr inbounds %struct.nb_iter_bound, %struct.nb_iter_bound* %62, i32 0, i32 0
  store %struct.nb_iter_bound* %61, %struct.nb_iter_bound** %63, align 8
  %64 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %9, align 8
  %65 = load %struct.loop*, %struct.loop** %5, align 8
  %66 = getelementptr inbounds %struct.loop, %struct.loop* %65, i32 0, i32 1
  store %struct.nb_iter_bound* %64, %struct.nb_iter_bound** %66, align 8
  ret void
}

declare dso_local %struct.nb_iter_bound* @xmalloc(i32) #1

declare dso_local i32 @derive_constant_upper_bound(i8*, i8*) #1

declare dso_local i8* @double_int_to_tree(i32, i32) #1

declare dso_local i32 @unsigned_type_for(i32) #1

declare dso_local i32 @TREE_TYPE(i8*) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

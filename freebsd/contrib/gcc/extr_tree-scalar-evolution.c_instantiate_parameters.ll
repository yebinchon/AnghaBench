; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_instantiate_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_instantiate_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@hash_scev_info = common dso_local global i32 0, align 4
@eq_scev_info = common dso_local global i32 0, align 4
@del_scev_info = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"(instantiate_parameters \0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"  (loop_nb = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"  (chrec = \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@INSERT_SUPERLOOP_CHRECS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"  (res = \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @instantiate_parameters(%struct.loop* %0, i32 %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @hash_scev_info, align 4
  %8 = load i32, i32* @eq_scev_info, align 4
  %9 = load i32, i32* @del_scev_info, align 4
  %10 = call i32 @htab_create(i32 10, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* @dump_file, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load i32, i32* @dump_flags, align 4
  %15 = load i32, i32* @TDF_DETAILS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load i64, i64* @dump_file, align 8
  %20 = call i32 (i64, i8*, ...) @fprintf(i64 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @dump_file, align 8
  %22 = load %struct.loop*, %struct.loop** %3, align 8
  %23 = getelementptr inbounds %struct.loop, %struct.loop* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i64, i8*, ...) @fprintf(i64 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i64, i64* @dump_file, align 8
  %27 = call i32 (i64, i8*, ...) @fprintf(i64 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i64, i64* @dump_file, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @print_generic_expr(i64 %28, i32 %29, i32 0)
  %31 = load i64, i64* @dump_file, align 8
  %32 = call i32 (i64, i8*, ...) @fprintf(i64 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %18, %13, %2
  %34 = load %struct.loop*, %struct.loop** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @INSERT_SUPERLOOP_CHRECS, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @instantiate_parameters_1(%struct.loop* %34, i32 %35, i32 %36, i32 %37, i32 0)
  store i32 %38, i32* %5, align 4
  %39 = load i64, i64* @dump_file, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load i32, i32* @dump_flags, align 4
  %43 = load i32, i32* @TDF_DETAILS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i64, i64* @dump_file, align 8
  %48 = call i32 (i64, i8*, ...) @fprintf(i64 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i64, i64* @dump_file, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @print_generic_expr(i64 %49, i32 %50, i32 0)
  %52 = load i64, i64* @dump_file, align 8
  %53 = call i32 (i64, i8*, ...) @fprintf(i64 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %54

54:                                               ; preds = %46, %41, %33
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @htab_delete(i32 %55)
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @htab_create(i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i64, i32, i32) #1

declare dso_local i32 @instantiate_parameters_1(%struct.loop*, i32, i32, i32, i32) #1

declare dso_local i32 @htab_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

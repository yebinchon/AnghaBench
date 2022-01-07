; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_dump_sa_points_to_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_dump_sa_points_to_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"\0APoints-to sets\0A\0A\00", align 1
@dump_flags = common dso_local global i32 0, align 4
@TDF_STATS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Stats:\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Total vars:               %d\0A\00", align 1
@stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Non-pointer vars:          %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Statically unified vars:  %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Dynamically unified vars: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Iterations:               %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Number of edges:          %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Number of implicit edges: %d\0A\00", align 1
@varinfo_t = common dso_local global i32 0, align 4
@varmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_sa_points_to_info(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 (i32*, i8*, ...) @fprintf(i32* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @dump_flags, align 4
  %7 = load i32, i32* @TDF_STATS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 4
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 1), align 4
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 2), align 4
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 3), align 4
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 4), align 4
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 5), align 4
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 6), align 4
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %10, %1
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %45, %34
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @varinfo_t, align 4
  %38 = load i32, i32* @varmap, align 4
  %39 = call i32 @VEC_length(i32 %37, i32 %38)
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @dump_solution_for_var(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %35

48:                                               ; preds = %35
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @VEC_length(i32, i32) #1

declare dso_local i32 @dump_solution_for_var(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

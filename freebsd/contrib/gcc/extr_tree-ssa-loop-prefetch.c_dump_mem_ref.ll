; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_dump_mem_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_dump_mem_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Reference %p:\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"  group %p (base \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c", step \00", align 1
@HOST_WIDE_INT_PRINT_DEC = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@dump_file = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"  delta \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.mem_ref*)* @dump_mem_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_mem_ref(i32* %0, %struct.mem_ref* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mem_ref*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.mem_ref* %1, %struct.mem_ref** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %7 = bitcast %struct.mem_ref* %6 to i8*
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %11 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = bitcast %struct.TYPE_2__* %12 to i8*
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %17 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TDF_SLIM, align 4
  %22 = call i32 @print_generic_expr(i32* %15, i32 %20, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %27 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %28 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* %26, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32*, i32** @dump_file, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i32*, i32** %3, align 8
  %38 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %39 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %40 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* %38, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %47 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_ca = type { i64*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"  invariants \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"  cost %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"  candidates \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*, i32*, %struct.iv_ca*)* @iv_ca_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iv_ca_dump(%struct.ivopts_data* %0, i32* %1, %struct.iv_ca* %2) #0 {
  %4 = alloca %struct.ivopts_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iv_ca*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ivopts_data* %0, %struct.ivopts_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.iv_ca* %2, %struct.iv_ca** %6, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %11 = call i32 @iv_ca_cost(%struct.iv_ca* %10)
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %15 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @bitmap_print(i32* %13, i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %18

18:                                               ; preds = %39, %3
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %21 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ule i32 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %26 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %35, i32 %36)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %38

38:                                               ; preds = %33, %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @iv_ca_cost(%struct.iv_ca*) #1

declare dso_local i32 @bitmap_print(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

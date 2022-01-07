; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_register_one_dump_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_register_one_dump_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_opt_pass = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ipa-\00", align 1
@TDF_IPA = common dso_local global i32 0, align 4
@PROP_trees = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"tree-\00", align 1
@TDF_TREE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"rtl-\00", align 1
@TDF_RTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_opt_pass*, i32, i32)* @register_one_dump_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_one_dump_file(%struct.tree_opt_pass* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tree_opt_pass*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [10 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.tree_opt_pass* %0, %struct.tree_opt_pass** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %13, align 1
  %14 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %15 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %20 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %21 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %27 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i32 [ 1, %24 ], [ %28, %25 ]
  %31 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %34 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %37 = call i8* (i8*, i32, i8*, ...) @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %35, i8* %36, i8* null)
  store i8* %37, i8** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %41 = load i32, i32* @TDF_IPA, align 4
  store i32 %41, i32* %12, align 4
  br label %52

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @PROP_trees, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  %48 = load i32, i32* @TDF_TREE, align 4
  store i32 %48, i32* %12, align 4
  br label %51

49:                                               ; preds = %42
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  %50 = load i32, i32* @TDF_RTL, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %55 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %58 = call i8* (i8*, i32, i8*, ...) @concat(i8* %53, i32 %56, i8* %57, i8* null)
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %61 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i8* (i8*, i32, i8*, ...) @concat(i8* %59, i32 %62, i8* null)
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %69 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dump_register(i8* %64, i8* %65, i8* %66, i32 %67, i32 %70)
  %72 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %4, align 8
  %73 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @concat(i8*, i32, i8*, ...) #1

declare dso_local i32 @dump_register(i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

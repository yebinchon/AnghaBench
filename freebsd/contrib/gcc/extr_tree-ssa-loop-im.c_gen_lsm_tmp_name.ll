; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_gen_lsm_tmp_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_gen_lsm_tmp_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"_RE\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"_IM\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"_I\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gen_lsm_tmp_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_lsm_tmp_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @TREE_CODE(i32 %4)
  switch i32 %5, label %55 [
    i32 135, label %6
    i32 142, label %6
    i32 136, label %6
    i32 139, label %10
    i32 128, label %10
    i32 141, label %10
    i32 133, label %13
    i32 137, label %17
    i32 138, label %21
    i32 140, label %35
    i32 131, label %39
    i32 129, label %42
    i32 134, label %42
    i32 130, label %51
    i32 132, label %53
  ]

6:                                                ; preds = %1, %1, %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @TREE_OPERAND(i32 %7, i32 0)
  call void @gen_lsm_tmp_name(i32 %8)
  %9 = call i32 @lsm_tmp_name_add(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %57

10:                                               ; preds = %1, %1, %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @TREE_OPERAND(i32 %11, i32 0)
  call void @gen_lsm_tmp_name(i32 %12)
  br label %57

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @TREE_OPERAND(i32 %14, i32 0)
  call void @gen_lsm_tmp_name(i32 %15)
  %16 = call i32 @lsm_tmp_name_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %57

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @TREE_OPERAND(i32 %18, i32 0)
  call void @gen_lsm_tmp_name(i32 %19)
  %20 = call i32 @lsm_tmp_name_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %57

21:                                               ; preds = %1
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @TREE_OPERAND(i32 %22, i32 0)
  call void @gen_lsm_tmp_name(i32 %23)
  %24 = call i32 @lsm_tmp_name_add(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @TREE_OPERAND(i32 %25, i32 1)
  %27 = call i8* @get_name(i32 %26)
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %31

31:                                               ; preds = %30, %21
  %32 = call i32 @lsm_tmp_name_add(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @lsm_tmp_name_add(i8* %33)
  br label %35

35:                                               ; preds = %1, %31
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @TREE_OPERAND(i32 %36, i32 0)
  call void @gen_lsm_tmp_name(i32 %37)
  %38 = call i32 @lsm_tmp_name_add(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %57

39:                                               ; preds = %1
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @SSA_NAME_VAR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %1, %1, %39
  %43 = load i32, i32* %2, align 4
  %44 = call i8* @get_name(i32 %43)
  store i8* %44, i8** %3, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @lsm_tmp_name_add(i8* %49)
  br label %57

51:                                               ; preds = %1
  %52 = call i32 @lsm_tmp_name_add(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %57

53:                                               ; preds = %1
  %54 = call i32 @lsm_tmp_name_add(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %57

55:                                               ; preds = %1
  %56 = call i32 (...) @gcc_unreachable()
  br label %57

57:                                               ; preds = %55, %53, %51, %48, %35, %17, %13, %10, %6
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @lsm_tmp_name_add(i8*) #1

declare dso_local i8* @get_name(i32) #1

declare dso_local i32 @SSA_NAME_VAR(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

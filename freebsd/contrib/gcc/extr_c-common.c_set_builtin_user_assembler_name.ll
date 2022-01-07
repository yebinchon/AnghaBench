; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_set_builtin_user_assembler_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_set_builtin_user_assembler_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@BUILT_IN_NORMAL = common dso_local global i64 0, align 8
@built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_MEMCPY = common dso_local global i64 0, align 8
@BUILT_IN_MEMSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_builtin_user_assembler_name(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @FUNCTION_DECL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @DECL_BUILT_IN_CLASS(i32 %11)
  %13 = load i64, i64* @BUILT_IN_NORMAL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br label %18

18:                                               ; preds = %15, %10, %2
  %19 = phi i1 [ false, %10 ], [ false, %2 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load i32*, i32** @built_in_decls, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @DECL_FUNCTION_CODE(i32 %23)
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @set_user_assembler_name(i32 %27, i8* %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @DECL_FUNCTION_CODE(i32 %30)
  %32 = load i64, i64* @BUILT_IN_MEMCPY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @init_block_move_fn(i8* %35)
  br label %46

37:                                               ; preds = %18
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @DECL_FUNCTION_CODE(i32 %38)
  %40 = load i64, i64* @BUILT_IN_MEMSET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @init_block_clear_fn(i8* %43)
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %34
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_BUILT_IN_CLASS(i32) #1

declare dso_local i64 @DECL_FUNCTION_CODE(i32) #1

declare dso_local i32 @set_user_assembler_name(i32, i8*) #1

declare dso_local i32 @init_block_move_fn(i8*) #1

declare dso_local i32 @init_block_clear_fn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

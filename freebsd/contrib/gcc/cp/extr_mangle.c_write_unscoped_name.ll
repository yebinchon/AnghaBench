; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_unscoped_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_unscoped_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"unscoped-name\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"St\00", align 1
@global_namespace = common dso_local global i32* null, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @write_unscoped_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_unscoped_name(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32* @CP_DECL_CONTEXT(i32* %4)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @MANGLE_TRACE_TREE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @DECL_NAMESPACE_STD_P(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call i32 @write_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @write_unqualified_name(i32* %13)
  br label %33

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** @global_namespace, align 8
  %18 = icmp eq i32* %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @TREE_CODE(i32* %23)
  %25 = load i64, i64* @FUNCTION_DECL, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %22, %19, %15
  %28 = phi i1 [ true, %19 ], [ true, %15 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @gcc_assert(i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @write_unqualified_name(i32* %31)
  br label %33

33:                                               ; preds = %27, %11
  ret void
}

declare dso_local i32* @CP_DECL_CONTEXT(i32*) #1

declare dso_local i32 @MANGLE_TRACE_TREE(i8*, i32*) #1

declare dso_local i64 @DECL_NAMESPACE_STD_P(i32*) #1

declare dso_local i32 @write_string(i8*) #1

declare dso_local i32 @write_unqualified_name(i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

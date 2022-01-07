; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_gimplify_parm_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_gimplify_parm_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8*)* @gimplify_parm_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gimplify_parm_type(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = call i64 @TYPE_P(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @POINTER_TYPE_P(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  store i32 1, i32* %19, align 4
  br label %40

20:                                               ; preds = %14
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @TYPE_SIZE(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @TYPE_SIZE(i32* %25)
  %27 = call i32 @TREE_CONSTANT(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @TYPE_SIZES_GIMPLIFIED(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to i32**
  %37 = call i32 @gimplify_type_sizes(i32* %34, i32** %36)
  %38 = load i32*, i32** %5, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %29, %24, %20
  br label %40

40:                                               ; preds = %39, %18
  br label %41

41:                                               ; preds = %40, %3
  ret i32* null
}

declare dso_local i64 @TYPE_P(i32*) #1

declare dso_local i64 @POINTER_TYPE_P(i32*) #1

declare dso_local i64 @TYPE_SIZE(i32*) #1

declare dso_local i32 @TREE_CONSTANT(i64) #1

declare dso_local i32 @TYPE_SIZES_GIMPLIFIED(i32*) #1

declare dso_local i32 @gimplify_type_sizes(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

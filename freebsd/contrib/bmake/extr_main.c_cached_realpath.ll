; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_cached_realpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_cached_realpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cached_realpath(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  store i8* null, i8** %3, align 8
  br label %49

17:                                               ; preds = %11
  %18 = call i32* (...) @get_cached_realpaths()
  store i32* %18, i32** %6, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i8* @Var_Value(i8* %19, i32* %20, i8** %8)
  store i8* %21, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @MAXPATHLEN, align 4
  %27 = call i32 @strlcpy(i8* %24, i8* %25, i32 %26)
  br label %39

28:                                               ; preds = %17
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @realpath(i8* %29, i8* %30)
  store i8* %31, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @Var_Set(i8* %34, i8* %35, i32* %36, i32 0)
  br label %38

38:                                               ; preds = %33, %28
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i8*, i8** %5, align 8
  br label %47

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i8* [ %45, %44 ], [ null, %46 ]
  store i8* %48, i8** %3, align 8
  br label %49

49:                                               ; preds = %47, %16
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

declare dso_local i32* @get_cached_realpaths(...) #1

declare dso_local i8* @Var_Value(i8*, i32*, i8**) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @realpath(i8*, i8*) #1

declare dso_local i32 @Var_Set(i8*, i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck2.c_require_complete_eh_spec_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck2.c_require_complete_eh_spec_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"call to function %qD which throws incomplete type %q#T\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"call to function which throws incomplete type %q#T\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @require_complete_eh_spec_types(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @DECL_ARTIFICIAL(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %44

14:                                               ; preds = %9, %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @TYPE_RAISES_EXCEPTIONS(i8* %15)
  store i8* %16, i8** %5, align 8
  br label %17

17:                                               ; preds = %41, %14
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @TREE_VALUE(i8* %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @COMPLETE_TYPE_P(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  br label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %32
  br label %40

40:                                               ; preds = %39, %25, %20
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @TREE_CHAIN(i8* %42)
  store i8* %43, i8** %5, align 8
  br label %17

44:                                               ; preds = %13, %17
  ret void
}

declare dso_local i64 @DECL_ARTIFICIAL(i8*) #1

declare dso_local i8* @TYPE_RAISES_EXCEPTIONS(i8*) #1

declare dso_local i8* @TREE_VALUE(i8*) #1

declare dso_local i32 @COMPLETE_TYPE_P(i8*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i8* @TREE_CHAIN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

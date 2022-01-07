; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_write_global_declarations_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_write_global_declarations_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%q+F used but never defined\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @c_write_global_declarations_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_write_global_declarations_1(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @FUNCTION_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @DECL_INITIAL(i64 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @DECL_EXTERNAL(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @TREE_PUBLIC(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @C_DECL_USED(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @pedwarn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %32)
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %27, %23, %19, %15, %10
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @wrapup_global_declaration_1(i64 %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @TREE_CHAIN(i64 %38)
  store i64 %39, i64* %3, align 8
  br label %7

40:                                               ; preds = %7
  br label %41

41:                                               ; preds = %55, %40
  store i32 0, i32* %4, align 4
  %42 = load i64, i64* %2, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %51, %41
  %44 = load i64, i64* %3, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @wrapup_global_declaration_2(i64 %47)
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @TREE_CHAIN(i64 %52)
  store i64 %53, i64* %3, align 8
  br label %43

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %41, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %2, align 8
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %66, %58
  %61 = load i64, i64* %3, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @check_global_declaration_1(i64 %64)
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %3, align 8
  %68 = call i64 @TREE_CHAIN(i64 %67)
  store i64 %68, i64* %3, align 8
  br label %60

69:                                               ; preds = %60
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_INITIAL(i64) #1

declare dso_local i64 @DECL_EXTERNAL(i64) #1

declare dso_local i32 @TREE_PUBLIC(i64) #1

declare dso_local i64 @C_DECL_USED(i64) #1

declare dso_local i32 @pedwarn(i8*, i64) #1

declare dso_local i32 @wrapup_global_declaration_1(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @wrapup_global_declaration_2(i64) #1

declare dso_local i32 @check_global_declaration_1(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

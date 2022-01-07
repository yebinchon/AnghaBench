; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_flexible_array_type_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_flexible_array_type_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @flexible_array_type_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexible_array_type_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %68 [
    i32 129, label %7
    i32 128, label %50
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @TYPE_FIELDS(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NULL_TREE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %69

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %20, %14
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TREE_CHAIN(i32 %16)
  %18 = load i32, i32* @NULL_TREE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @TREE_CHAIN(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %15

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @TREE_TYPE(i32 %24)
  %26 = call i32 @TREE_CODE(i32 %25)
  %27 = load i32, i32* @ARRAY_TYPE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @TREE_TYPE(i32 %30)
  %32 = call i32 @TYPE_SIZE(i32 %31)
  %33 = load i32, i32* @NULL_TREE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @TREE_TYPE(i32 %36)
  %38 = call i32 @TYPE_DOMAIN(i32 %37)
  %39 = load i32, i32* @NULL_TREE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @TREE_TYPE(i32 %42)
  %44 = call i32 @TYPE_DOMAIN(i32 %43)
  %45 = call i32 @TYPE_MAX_VALUE(i32 %44)
  %46 = load i32, i32* @NULL_TREE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %69

49:                                               ; preds = %41, %35, %29, %23
  store i32 0, i32* %2, align 4
  br label %69

50:                                               ; preds = %1
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @TYPE_FIELDS(i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %64, %50
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @NULL_TREE, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @TREE_TYPE(i32 %58)
  %60 = call i32 @flexible_array_type_p(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 1, i32* %2, align 4
  br label %69

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @TREE_CHAIN(i32 %65)
  store i32 %66, i32* %4, align 4
  br label %53

67:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %69

68:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %67, %62, %49, %48, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_FIELDS(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_SIZE(i32) #1

declare dso_local i32 @TYPE_DOMAIN(i32) #1

declare dso_local i32 @TYPE_MAX_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

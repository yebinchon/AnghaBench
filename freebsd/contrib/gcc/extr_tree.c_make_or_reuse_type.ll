; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_make_or_reuse_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_make_or_reuse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_TYPE_SIZE = common dso_local global i32 0, align 4
@unsigned_type_node = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@CHAR_TYPE_SIZE = common dso_local global i32 0, align 4
@unsigned_char_type_node = common dso_local global i32 0, align 4
@signed_char_type_node = common dso_local global i32 0, align 4
@SHORT_TYPE_SIZE = common dso_local global i32 0, align 4
@short_unsigned_type_node = common dso_local global i32 0, align 4
@short_integer_type_node = common dso_local global i32 0, align 4
@LONG_TYPE_SIZE = common dso_local global i32 0, align 4
@long_unsigned_type_node = common dso_local global i32 0, align 4
@long_integer_type_node = common dso_local global i32 0, align 4
@LONG_LONG_TYPE_SIZE = common dso_local global i32 0, align 4
@long_long_unsigned_type_node = common dso_local global i32 0, align 4
@long_long_integer_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @make_or_reuse_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_or_reuse_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @INT_TYPE_SIZE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @unsigned_type_node, align 4
  br label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @integer_type_node, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %3, align 4
  br label %79

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CHAR_TYPE_SIZE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @unsigned_char_type_node, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @signed_char_type_node, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %3, align 4
  br label %79

31:                                               ; preds = %18
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SHORT_TYPE_SIZE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @short_unsigned_type_node, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @short_integer_type_node, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %3, align 4
  br label %79

44:                                               ; preds = %31
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @LONG_TYPE_SIZE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @long_unsigned_type_node, align 4
  br label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @long_integer_type_node, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %3, align 4
  br label %79

57:                                               ; preds = %44
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @LONG_LONG_TYPE_SIZE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @long_long_unsigned_type_node, align 4
  br label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @long_long_integer_type_node, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %3, align 4
  br label %79

70:                                               ; preds = %57
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @make_unsigned_type(i32 %74)
  store i32 %75, i32* %3, align 4
  br label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @make_signed_type(i32 %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %73, %68, %55, %42, %29, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @make_unsigned_type(i32) #1

declare dso_local i32 @make_signed_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

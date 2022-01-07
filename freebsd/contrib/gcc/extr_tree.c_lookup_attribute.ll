; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_lookup_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_lookup_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lookup_attribute(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %6, align 8
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @TREE_PURPOSE(i64 %15)
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @IDENTIFIER_NODE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @TREE_PURPOSE(i64 %24)
  %26 = call i64 @is_attribute_with_length_p(i8* %22, i64 %23, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %3, align 8
  br label %36

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @TREE_CHAIN(i64 %32)
  store i64 %33, i64* %6, align 8
  br label %11

34:                                               ; preds = %11
  %35 = load i64, i64* @NULL_TREE, align 8
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_PURPOSE(i64) #1

declare dso_local i64 @is_attribute_with_length_p(i8*, i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

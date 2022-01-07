; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_return_interface_record_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_return_interface_record_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDENTIFIER_NODE = common dso_local global i32 0, align 4
@tcc_exceptional = common dso_local global i32 0, align 4
@RECORD_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @c_return_interface_record_type(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32*, i32** %6, align 8
  store i32* %10, i32** %2, align 8
  br label %36

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @TREE_CODE(i32* %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @TREE_CODE_CLASS(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IDENTIFIER_NODE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @tcc_exceptional, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %11
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** %2, align 8
  br label %36

26:                                               ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = call i32* @I_TAG_DECL(i32* %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @TREE_CODE(i32* %29)
  %31 = load i64, i64* @RECORD_TYPE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32* null, i32** %6, align 8
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i32*, i32** %6, align 8
  store i32* %35, i32** %2, align 8
  br label %36

36:                                               ; preds = %34, %24, %9
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32 @TREE_CODE_CLASS(i32) #1

declare dso_local i32* @I_TAG_DECL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

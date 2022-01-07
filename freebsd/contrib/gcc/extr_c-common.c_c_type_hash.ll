; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_type_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_c_type_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @c_type_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_type_hash(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @TREE_CODE(i64 %11)
  switch i32 %12, label %30 [
    i32 131, label %13
    i32 132, label %18
    i32 129, label %21
    i32 130, label %24
    i32 128, label %27
  ]

13:                                               ; preds = %1
  %14 = load i64, i64* %7, align 8
  %15 = call i8* @TREE_TYPE(i64 %14)
  %16 = call i32 @c_type_hash(i8* %15)
  %17 = xor i32 %16, 50343939
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  store i32 3, i32* %5, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @TYPE_VALUES(i64 %19)
  store i64 %20, i64* %8, align 8
  br label %32

21:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @TYPE_FIELDS(i64 %22)
  store i64 %23, i64* %8, align 8
  br label %32

24:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @TYPE_FIELDS(i64 %25)
  store i64 %26, i64* %8, align 8
  br label %32

27:                                               ; preds = %1
  store i32 2, i32* %5, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @TYPE_FIELDS(i64 %28)
  store i64 %29, i64* %8, align 8
  br label %32

30:                                               ; preds = %1
  %31 = call i32 (...) @gcc_unreachable()
  br label %32

32:                                               ; preds = %30, %27, %24, %21, %18
  br label %33

33:                                               ; preds = %39, %32
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @TREE_CHAIN(i64 %40)
  store i64 %41, i64* %8, align 8
  br label %33

42:                                               ; preds = %33
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @TYPE_SIZE(i64 %43)
  %45 = call i32 @TREE_INT_CST_LOW(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 24
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %42, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i8* @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_VALUES(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TYPE_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

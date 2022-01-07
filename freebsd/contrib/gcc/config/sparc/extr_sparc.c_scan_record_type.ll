; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_scan_record_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_scan_record_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIELD_DECL = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@VECTOR_TYPE = common dso_local global i64 0, align 8
@TARGET_FPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i32*, i32*)* @scan_record_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_record_type(i64 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @TYPE_FIELDS(i64 %10)
  store i64 %11, i64* %9, align 8
  br label %12

12:                                               ; preds = %61, %4
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @TREE_CODE(i64 %16)
  %18 = load i64, i64* @FIELD_DECL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %15
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @TREE_TYPE(i64 %21)
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @RECORD_TYPE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @TREE_TYPE(i64 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %7, align 8
  call void @scan_record_type(i64 %28, i32* %29, i32* %30, i32* null)
  br label %50

31:                                               ; preds = %20
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @TREE_TYPE(i64 %32)
  %34 = call i64 @FLOAT_TYPE_P(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @TREE_TYPE(i64 %37)
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i64, i64* @VECTOR_TYPE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36, %31
  %43 = load i64, i64* @TARGET_FPU, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  store i32 1, i32* %46, align 4
  br label %49

47:                                               ; preds = %42, %36
  %48 = load i32*, i32** %6, align 8
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32*, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @DECL_PACKED(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %53, %50
  br label %60

60:                                               ; preds = %59, %15
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @TREE_CHAIN(i64 %62)
  store i64 %63, i64* %9, align 8
  br label %12

64:                                               ; preds = %12
  ret void
}

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @FLOAT_TYPE_P(i64) #1

declare dso_local i64 @DECL_PACKED(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

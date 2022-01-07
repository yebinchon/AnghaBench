; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_reshape_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_reshape_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@constructor_elt = common dso_local global i32 0, align 4
@gc = common dso_local global i32 0, align 4
@v = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"too many initializers for %qT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @reshape_init(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @constructor_elt, align 4
  %9 = load i32, i32* @gc, align 4
  %10 = call i32 @VEC(i32 %8, i32 %9)
  %11 = load i32, i32* @v, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @BRACE_ENCLOSED_INITIALIZER_P(i64 %13)
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @CONSTRUCTOR_ELTS(i64 %16)
  store i32 %17, i32* @v, align 4
  %18 = load i32, i32* @constructor_elt, align 4
  %19 = load i32, i32* @v, align 4
  %20 = call i64 @VEC_empty(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %3, align 8
  br label %54

24:                                               ; preds = %2
  %25 = load i32, i32* @constructor_elt, align 4
  %26 = load i32, i32* @v, align 4
  %27 = call i64 @VEC_index(i32 %25, i32 %26, i32 0)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @constructor_elt, align 4
  %32 = load i32, i32* @v, align 4
  %33 = call i64 @VEC_length(i32 %31, i32 %32)
  %34 = add nsw i64 %30, %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @reshape_init_r(i64 %36, %struct.TYPE_3__* %6, i32 1)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @error_mark_node, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = load i64, i64* @error_mark_node, align 8
  store i64 %42, i64* %3, align 8
  br label %54

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %52, %41, %22
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i32 @VEC(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @BRACE_ENCLOSED_INITIALIZER_P(i64) #1

declare dso_local i32 @CONSTRUCTOR_ELTS(i64) #1

declare dso_local i64 @VEC_empty(i32, i32) #1

declare dso_local i64 @VEC_index(i32, i32, i32) #1

declare dso_local i64 @VEC_length(i32, i32) #1

declare dso_local i64 @reshape_init_r(i64, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

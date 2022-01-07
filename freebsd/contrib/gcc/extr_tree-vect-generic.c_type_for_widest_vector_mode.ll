; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-generic.c_type_for_widest_vector_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-generic.c_type_for_widest_vector_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@VOIDmode = common dso_local global i32 0, align 4
@MIN_MODE_VECTOR_FLOAT = common dso_local global i32 0, align 4
@MIN_MODE_VECTOR_INT = common dso_local global i32 0, align 4
@CODE_FOR_nothing = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*)* @type_for_widest_vector_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_for_widest_vector_mode(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load i32, i32* @VOIDmode, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @SCALAR_FLOAT_MODE_P(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @MIN_MODE_VECTOR_FLOAT, align 4
  store i32 %14, i32* %7, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @MIN_MODE_VECTOR_INT, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %15, %13
  br label %18

18:                                               ; preds = %48, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @VOIDmode, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @GET_MODE_INNER(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @GET_MODE_NUNITS(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CODE_FOR_nothing, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @GET_MODE_NUNITS(i32 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %32, %27, %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @GET_MODE_WIDER_MODE(i32 %49)
  store i32 %50, i32* %7, align 4
  br label %18

51:                                               ; preds = %18
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @VOIDmode, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @NULL_TREE, align 4
  store i32 %56, i32* %3, align 4
  br label %61

57:                                               ; preds = %51
  %58 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 %58(i32 %59, i32 1)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %55
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @GET_MODE_NUNITS(i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

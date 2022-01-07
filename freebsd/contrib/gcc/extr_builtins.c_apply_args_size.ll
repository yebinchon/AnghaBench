; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_apply_args_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_apply_args_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (i32, i32)* }
%struct.TYPE_6__ = type { i32 }

@apply_args_size.size = internal global i32 -1, align 4
@Pmode = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@reg_raw_mode = common dso_local global i32* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@apply_args_reg_offset = common dso_local global i32* null, align 8
@apply_args_mode = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @apply_args_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_args_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @apply_args_size.size, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %91

6:                                                ; preds = %0
  %7 = load i32, i32* @Pmode, align 4
  %8 = call i32 @GET_MODE_SIZE(i32 %7)
  store i32 %8, i32* @apply_args_size.size, align 4
  %9 = load i64 (i32, i32)*, i64 (i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @targetm, i32 0, i32 0, i32 0), align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @TREE_TYPE(i32 %15)
  br label %18

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i32 [ %16, %12 ], [ 0, %17 ]
  %20 = call i64 %9(i32 %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @Pmode, align 4
  %24 = call i32 @GET_MODE_SIZE(i32 %23)
  %25 = load i32, i32* @apply_args_size.size, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* @apply_args_size.size, align 4
  br label %27

27:                                               ; preds = %22, %18
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %87, %27
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %90

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = call i64 @FUNCTION_ARG_REGNO_P(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %76

36:                                               ; preds = %32
  %37 = load i32*, i32** @reg_raw_mode, align 8
  %38 = load i32, i32* %2, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @VOIDmode, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @gcc_assert(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @GET_MODE_ALIGNMENT(i32 %47)
  %49 = load i32, i32* @BITS_PER_UNIT, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* @apply_args_size.size, align 4
  %52 = load i32, i32* %1, align 4
  %53 = srem i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %36
  %56 = load i32, i32* @apply_args_size.size, align 4
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @CEIL(i32 %56, i32 %57)
  %59 = load i32, i32* %1, align 4
  %60 = mul nsw i32 %58, %59
  store i32 %60, i32* @apply_args_size.size, align 4
  br label %61

61:                                               ; preds = %55, %36
  %62 = load i32, i32* @apply_args_size.size, align 4
  %63 = load i32*, i32** @apply_args_reg_offset, align 8
  %64 = load i32, i32* %2, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @GET_MODE_SIZE(i32 %67)
  %69 = load i32, i32* @apply_args_size.size, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* @apply_args_size.size, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32*, i32** @apply_args_mode, align 8
  %73 = load i32, i32* %2, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %86

76:                                               ; preds = %32
  %77 = load i32, i32* @VOIDmode, align 4
  %78 = load i32*, i32** @apply_args_mode, align 8
  %79 = load i32, i32* %2, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i32*, i32** @apply_args_reg_offset, align 8
  %83 = load i32, i32* %2, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %76, %61
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %2, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %28

90:                                               ; preds = %28
  br label %91

91:                                               ; preds = %90, %0
  %92 = load i32, i32* @apply_args_size.size, align 4
  ret i32 %92
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @FUNCTION_ARG_REGNO_P(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_MODE_ALIGNMENT(i32) #1

declare dso_local i32 @CEIL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

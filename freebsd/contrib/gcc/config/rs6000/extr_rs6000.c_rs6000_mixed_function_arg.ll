; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_mixed_function_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_mixed_function_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GP_ARG_NUM_REG = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@GP_ARG_MIN_REG = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rs6000_mixed_function_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_mixed_function_arg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @NULL_RTX, align 4
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %97

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @rs6000_arg_size(i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @BLKmode, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35, %26
  %40 = load i32, i32* %5, align 4
  %41 = load i64, i64* @GP_ARG_MIN_REG, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @gen_rtx_REG(i32 %40, i64 %44)
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %97

46:                                               ; preds = %35, %32
  store i32 0, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load i32, i32* @VOIDmode, align 4
  %54 = load i32, i32* @NULL_RTX, align 4
  %55 = load i32, i32* @const0_rtx, align 4
  %56 = call i32 @gen_rtx_EXPR_LIST(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %20, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %52, %46
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %90, %61
  %63 = load i32, i32* @SImode, align 4
  %64 = load i64, i64* @GP_ARG_MIN_REG, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = call i32 @gen_rtx_REG(i32 %63, i64 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = mul nsw i32 %69, 4
  %72 = call i32 @GEN_INT(i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* @VOIDmode, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @gen_rtx_EXPR_LIST(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %20, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %62
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %86, %81
  %91 = phi i1 [ false, %81 ], [ %89, %86 ]
  br i1 %91, label %62, label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @gen_rtvec_v(i32 %94, i32* %20)
  %96 = call i32 @gen_rtx_PARALLEL(i32 %93, i32 %95)
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %97

97:                                               ; preds = %92, %39, %24
  %98 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rs6000_arg_size(i32, i32) #2

declare dso_local i32 @gen_rtx_REG(i32, i64) #2

declare dso_local i32 @gen_rtx_EXPR_LIST(i32, i32, i32) #2

declare dso_local i32 @GEN_INT(i32) #2

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #2

declare dso_local i32 @gen_rtvec_v(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

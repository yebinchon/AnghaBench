; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_spe_function_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_spe_function_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@TARGET_E500_DOUBLE = common dso_local global i64 0, align 8
@DFmode = common dso_local global i32 0, align 4
@DCmode = common dso_local global i32 0, align 4
@GP_ARG_MAX_REG = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @rs6000_spe_function_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_spe_function_arg(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i64, i64* @TARGET_E500_DOUBLE, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @DFmode, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DCmode, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @rs6000_arg_size(i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @DFmode, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 1, %35
  %37 = and i32 %36, 1
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %34, %27
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* @GP_ARG_MAX_REG, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @NULL_RTX, align 4
  store i32 %48, i32* %4, align 4
  br label %112

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @spe_build_register_parallel(i32 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %112

53:                                               ; preds = %23, %3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @rs6000_arg_size(i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %64, %58
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %72, %73
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* @GP_ARG_MAX_REG, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %100

78:                                               ; preds = %71
  %79 = load i32, i32* @SImode, align 4
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @gen_rtx_REG(i32 %80, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @const0_rtx, align 4
  %86 = call i32 @gen_rtx_EXPR_LIST(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @gen_rtx_REG(i32 %87, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @GEN_INT(i32 4)
  %94 = call i32 @gen_rtx_EXPR_LIST(i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @gen_rtvec(i32 2, i32 %96, i32 %97)
  %99 = call i32 @gen_rtx_PARALLEL(i32 %95, i32 %98)
  store i32 %99, i32* %4, align 4
  br label %112

100:                                              ; preds = %71
  %101 = load i32, i32* @NULL_RTX, align 4
  store i32 %101, i32* %4, align 4
  br label %112

102:                                              ; preds = %53
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @GP_ARG_MAX_REG, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @gen_rtx_REG(i32 %107, i32 %108)
  store i32 %109, i32* %4, align 4
  br label %112

110:                                              ; preds = %102
  %111 = load i32, i32* @NULL_RTX, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %106, %100, %78, %49, %47
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @rs6000_arg_size(i32, i32) #1

declare dso_local i32 @spe_build_register_parallel(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gen_rtx_EXPR_LIST(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_shorten_into_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_shorten_into_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_iv = type { i32, i32, i32, i32 }
%struct.niter_desc = type { i8*, i8* }

@SImode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@SIGN_EXTEND = common dso_local global i32 0, align 4
@ZERO_EXTEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtx_iv*, i32, i32, i32, %struct.niter_desc*)* @shorten_into_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shorten_into_mode(%struct.rtx_iv* %0, i32 %1, i32 %2, i32 %3, %struct.niter_desc* %4) #0 {
  %6 = alloca %struct.rtx_iv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.niter_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rtx_iv* %0, %struct.rtx_iv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.niter_desc* %4, %struct.niter_desc** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %18 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_mode_bounds(i32 %15, i32 %16, i32 %19, i32* %11, i32* %12)
  %21 = load i32, i32* @SImode, align 4
  %22 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %23 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %26 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @simplify_gen_relational(i32 130, i32 %21, i32 %24, i32 %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @SImode, align 4
  %31 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %32 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %35 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @simplify_gen_relational(i32 134, i32 %30, i32 %33, i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %115 [
    i32 132, label %40
    i32 130, label %40
    i32 131, label %40
    i32 129, label %40
    i32 136, label %65
    i32 134, label %65
    i32 135, label %65
    i32 133, label %65
    i32 128, label %90
  ]

40:                                               ; preds = %5, %5, %5, %5
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @const0_rtx, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.niter_desc*, %struct.niter_desc** %10, align 8
  %47 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @alloc_EXPR_LIST(i32 0, i32 %45, i8* %48)
  %50 = load %struct.niter_desc*, %struct.niter_desc** %10, align 8
  %51 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %44, %40
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @const0_rtx, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.niter_desc*, %struct.niter_desc** %10, align 8
  %59 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @alloc_EXPR_LIST(i32 0, i32 %57, i8* %60)
  %62 = load %struct.niter_desc*, %struct.niter_desc** %10, align 8
  %63 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %56, %52
  br label %117

65:                                               ; preds = %5, %5, %5, %5
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @const0_rtx, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.niter_desc*, %struct.niter_desc** %10, align 8
  %72 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @alloc_EXPR_LIST(i32 0, i32 %70, i8* %73)
  %75 = load %struct.niter_desc*, %struct.niter_desc** %10, align 8
  %76 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %69, %65
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @const0_rtx, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.niter_desc*, %struct.niter_desc** %10, align 8
  %84 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @alloc_EXPR_LIST(i32 0, i32 %82, i8* %85)
  %87 = load %struct.niter_desc*, %struct.niter_desc** %10, align 8
  %88 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %81, %77
  br label %117

90:                                               ; preds = %5
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @const0_rtx, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.niter_desc*, %struct.niter_desc** %10, align 8
  %97 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @alloc_EXPR_LIST(i32 0, i32 %95, i8* %98)
  %100 = load %struct.niter_desc*, %struct.niter_desc** %10, align 8
  %101 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %94, %90
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @const0_rtx, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.niter_desc*, %struct.niter_desc** %10, align 8
  %109 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i8* @alloc_EXPR_LIST(i32 0, i32 %107, i8* %110)
  %112 = load %struct.niter_desc*, %struct.niter_desc** %10, align 8
  %113 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %106, %102
  br label %117

115:                                              ; preds = %5
  %116 = call i32 (...) @gcc_unreachable()
  br label %117

117:                                              ; preds = %115, %114, %89, %64
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %120 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* @SIGN_EXTEND, align 4
  br label %127

125:                                              ; preds = %117
  %126 = load i32, i32* @ZERO_EXTEND, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %130 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  ret void
}

declare dso_local i32 @get_mode_bounds(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @simplify_gen_relational(i32, i32, i32, i32, i32) #1

declare dso_local i8* @alloc_EXPR_LIST(i32, i32, i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

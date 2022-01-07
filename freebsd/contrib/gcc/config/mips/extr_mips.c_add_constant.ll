; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_add_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_add_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips16_constant_pool = type { i64, i32, i32 }
%struct.mips16_constant = type { i32, i32, %struct.mips16_constant*, i32 }

@UNITS_PER_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips16_constant_pool*, i32, i32)* @add_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_constant(%struct.mips16_constant_pool* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mips16_constant_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mips16_constant**, align 8
  %9 = alloca %struct.mips16_constant*, align 8
  %10 = alloca i32, align 4
  store %struct.mips16_constant_pool* %0, %struct.mips16_constant_pool** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %10, align 4
  %11 = load %struct.mips16_constant_pool*, %struct.mips16_constant_pool** %5, align 8
  %12 = getelementptr inbounds %struct.mips16_constant_pool, %struct.mips16_constant_pool* %11, i32 0, i32 0
  %13 = bitcast i64* %12 to %struct.mips16_constant**
  store %struct.mips16_constant** %13, %struct.mips16_constant*** %8, align 8
  br label %14

14:                                               ; preds = %59, %3
  %15 = load %struct.mips16_constant**, %struct.mips16_constant*** %8, align 8
  %16 = load %struct.mips16_constant*, %struct.mips16_constant** %15, align 8
  %17 = icmp ne %struct.mips16_constant* %16, null
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.mips16_constant**, %struct.mips16_constant*** %8, align 8
  %21 = load %struct.mips16_constant*, %struct.mips16_constant** %20, align 8
  %22 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mips16_constant**, %struct.mips16_constant*** %8, align 8
  %28 = load %struct.mips16_constant*, %struct.mips16_constant** %27, align 8
  %29 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @rtx_equal_p(i32 %26, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.mips16_constant**, %struct.mips16_constant*** %8, align 8
  %35 = load %struct.mips16_constant*, %struct.mips16_constant** %34, align 8
  %36 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %120

38:                                               ; preds = %25, %18
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @GET_MODE_SIZE(i32 %39)
  %41 = load %struct.mips16_constant**, %struct.mips16_constant*** %8, align 8
  %42 = load %struct.mips16_constant*, %struct.mips16_constant** %41, align 8
  %43 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @GET_MODE_SIZE(i32 %44)
  %46 = icmp slt i64 %40, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %63

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @GET_MODE_SIZE(i32 %49)
  %51 = load %struct.mips16_constant**, %struct.mips16_constant*** %8, align 8
  %52 = load %struct.mips16_constant*, %struct.mips16_constant** %51, align 8
  %53 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @GET_MODE_SIZE(i32 %54)
  %56 = icmp eq i64 %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %48
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.mips16_constant**, %struct.mips16_constant*** %8, align 8
  %61 = load %struct.mips16_constant*, %struct.mips16_constant** %60, align 8
  %62 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %61, i32 0, i32 2
  store %struct.mips16_constant** %62, %struct.mips16_constant*** %8, align 8
  br label %14

63:                                               ; preds = %47, %14
  %64 = load %struct.mips16_constant_pool*, %struct.mips16_constant_pool** %5, align 8
  %65 = getelementptr inbounds %struct.mips16_constant_pool, %struct.mips16_constant_pool* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.mips16_constant_pool*, %struct.mips16_constant_pool** %5, align 8
  %70 = getelementptr inbounds %struct.mips16_constant_pool, %struct.mips16_constant_pool* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @UNITS_PER_WORD, align 4
  %73 = sub nsw i32 %72, 2
  %74 = sub nsw i32 %71, %73
  %75 = add nsw i32 %74, 32768
  %76 = load %struct.mips16_constant_pool*, %struct.mips16_constant_pool** %5, align 8
  %77 = getelementptr inbounds %struct.mips16_constant_pool, %struct.mips16_constant_pool* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %68, %63
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @GET_MODE_SIZE(i32 %79)
  %81 = load %struct.mips16_constant_pool*, %struct.mips16_constant_pool** %5, align 8
  %82 = getelementptr inbounds %struct.mips16_constant_pool, %struct.mips16_constant_pool* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %78
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @GET_MODE_SIZE(i32 %90)
  %92 = sub nsw i64 %91, 1
  %93 = load %struct.mips16_constant_pool*, %struct.mips16_constant_pool** %5, align 8
  %94 = getelementptr inbounds %struct.mips16_constant_pool, %struct.mips16_constant_pool* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 8
  br label %99

99:                                               ; preds = %89, %78
  %100 = call i64 @xmalloc(i32 24)
  %101 = inttoptr i64 %100 to %struct.mips16_constant*
  store %struct.mips16_constant* %101, %struct.mips16_constant** %9, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.mips16_constant*, %struct.mips16_constant** %9, align 8
  %104 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.mips16_constant*, %struct.mips16_constant** %9, align 8
  %107 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = call i32 (...) @gen_label_rtx()
  %109 = load %struct.mips16_constant*, %struct.mips16_constant** %9, align 8
  %110 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.mips16_constant**, %struct.mips16_constant*** %8, align 8
  %112 = load %struct.mips16_constant*, %struct.mips16_constant** %111, align 8
  %113 = load %struct.mips16_constant*, %struct.mips16_constant** %9, align 8
  %114 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %113, i32 0, i32 2
  store %struct.mips16_constant* %112, %struct.mips16_constant** %114, align 8
  %115 = load %struct.mips16_constant*, %struct.mips16_constant** %9, align 8
  %116 = load %struct.mips16_constant**, %struct.mips16_constant*** %8, align 8
  store %struct.mips16_constant* %115, %struct.mips16_constant** %116, align 8
  %117 = load %struct.mips16_constant*, %struct.mips16_constant** %9, align 8
  %118 = getelementptr inbounds %struct.mips16_constant, %struct.mips16_constant* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %99, %33
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @gen_label_rtx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

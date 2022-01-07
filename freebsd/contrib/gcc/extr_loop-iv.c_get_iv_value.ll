; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_get_iv_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_get_iv_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_iv = type { i64, i64, i64, i64, i64, i32, i32, i32 }

@const0_rtx = common dso_local global i64 0, align 8
@PLUS = common dso_local global i32 0, align 4
@MULT = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_iv_value(%struct.rtx_iv* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rtx_iv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rtx_iv* %0, %struct.rtx_iv** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %8 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %15 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @const0_rtx, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @const0_rtx, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i32, i32* @PLUS, align 4
  %25 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %26 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %29 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @MULT, align 4
  %32 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %33 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %36 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @simplify_gen_binary(i32 %31, i32 %34, i64 %37, i64 %38)
  %40 = call i64 @simplify_gen_binary(i32 %24, i32 %27, i64 %30, i64 %39)
  store i64 %40, i64* %6, align 8
  br label %45

41:                                               ; preds = %19, %2
  %42 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %43 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %41, %23
  %46 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %47 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %50 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %3, align 8
  br label %101

55:                                               ; preds = %45
  %56 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %57 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %61 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @lowpart_subreg(i32 %58, i64 %59, i32 %62)
  store i64 %63, i64* %6, align 8
  %64 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %65 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UNKNOWN, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i64, i64* %6, align 8
  store i64 %70, i64* %3, align 8
  br label %101

71:                                               ; preds = %55
  %72 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %73 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %76 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %80 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @simplify_gen_unary(i64 %74, i32 %77, i64 %78, i32 %81)
  store i64 %82, i64* %6, align 8
  %83 = load i32, i32* @PLUS, align 4
  %84 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %85 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %88 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @MULT, align 4
  %91 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %92 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.rtx_iv*, %struct.rtx_iv** %4, align 8
  %95 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i64 @simplify_gen_binary(i32 %90, i32 %93, i64 %96, i64 %97)
  %99 = call i64 @simplify_gen_binary(i32 %83, i32 %86, i64 %89, i64 %98)
  store i64 %99, i64* %6, align 8
  %100 = load i64, i64* %6, align 8
  store i64 %100, i64* %3, align 8
  br label %101

101:                                              ; preds = %71, %69, %53
  %102 = load i64, i64* %3, align 8
  ret i64 %102
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @simplify_gen_binary(i32, i32, i64, i64) #1

declare dso_local i64 @lowpart_subreg(i32, i64, i32) #1

declare dso_local i64 @simplify_gen_unary(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_change_address_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_change_address_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@reload_in_progress = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i64, i32)* @change_address_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @change_address_1(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @MEM_P(i64 %11)
  %13 = call i32 @gcc_assert(i64 %12)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @VOIDmode, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @GET_MODE(i64 %18)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @XEXP(i64 %24, i32 0)
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %7, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @GET_MODE(i64 %28)
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @XEXP(i64 %33, i32 0)
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @memory_address_p(i32 %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %36
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* %5, align 8
  br label %86

46:                                               ; preds = %39, %31, %26
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load i64, i64* @reload_in_progress, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* @reload_completed, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %7, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @memory_address_p(i32 %56, i64 %57)
  %59 = call i32 @gcc_assert(i64 %58)
  br label %64

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @memory_address(i32 %61, i64 %62)
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %60, %55
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @XEXP(i64 %67, i32 0)
  %69 = call i64 @rtx_equal_p(i64 %66, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @GET_MODE(i64 %73)
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i64, i64* %6, align 8
  store i64 %77, i64* %5, align 8
  br label %86

78:                                               ; preds = %71, %65
  %79 = load i32, i32* %7, align 4
  %80 = load i64, i64* %8, align 8
  %81 = call i64 @gen_rtx_MEM(i32 %79, i64 %80)
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @MEM_COPY_ATTRIBUTES(i64 %82, i64 %83)
  %85 = load i64, i64* %10, align 8
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %78, %76, %44
  %87 = load i64, i64* %5, align 8
  ret i64 %87
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @memory_address_p(i32, i64) #1

declare dso_local i64 @memory_address(i32, i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @gen_rtx_MEM(i32, i64) #1

declare dso_local i32 @MEM_COPY_ATTRIBUTES(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

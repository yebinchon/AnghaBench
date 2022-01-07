; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_set_src_needs_barrier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_set_src_needs_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_flags = type { i32 }

@CALL = common dso_local global i64 0, align 8
@pc_rtx = common dso_local global i64 0, align 8
@ZERO_EXTRACT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @set_src_needs_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_src_needs_barrier(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reg_flags, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %5, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store i64 %0, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @SET_SRC(i64 %12)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = call i64 @GET_CODE(i64 %14)
  %16 = load i64, i64* @CALL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i64, i64* %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rtx_needs_barrier(i64 %19, i32 %22, i32 %20)
  store i32 %23, i32* %4, align 4
  br label %92

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @SET_DEST(i64 %25)
  %27 = load i64, i64* @pc_rtx, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @ia64_spec_check_src_p(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %5, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rtx_needs_barrier(i64 %36, i32 %39, i32 %37)
  store i32 %40, i32* %4, align 4
  br label %92

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @ia64_spec_check_src_p(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @XEXP(i64 %47, i32 2)
  %49 = call i32 @REG_P(i64 %48)
  %50 = call i32 @gcc_assert(i32 %49)
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @XEXP(i64 %51, i32 2)
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rtx_needs_barrier(i64 %52, i32 %55, i32 %53)
  store i32 %56, i32* %8, align 4
  %57 = load i64, i64* %10, align 8
  %58 = call i64 @XEXP(i64 %57, i32 1)
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %46, %42
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %5, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @rtx_needs_barrier(i64 %60, i32 %63, i32 %61)
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @SET_DEST(i64 %67)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i64 @GET_CODE(i64 %69)
  %71 = load i64, i64* @ZERO_EXTRACT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %59
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @XEXP(i64 %74, i32 1)
  %76 = load i32, i32* %7, align 4
  %77 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rtx_needs_barrier(i64 %75, i32 %78, i32 %76)
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @XEXP(i64 %82, i32 2)
  %84 = load i32, i32* %7, align 4
  %85 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %5, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @rtx_needs_barrier(i64 %83, i32 %86, i32 %84)
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %73, %59
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %35, %18
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @rtx_needs_barrier(i64, i32, i32) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @ia64_spec_check_src_p(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

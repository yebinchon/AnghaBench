; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_insn_stack_adjust_offset_pre_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_insn_stack_adjust_offset_pre_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@SEQUENCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i64*)* @insn_stack_adjust_offset_pre_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insn_stack_adjust_offset_pre_post(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i64*, i64** %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load i64*, i64** %6, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @PATTERN(i32 %10)
  %12 = call i64 @GET_CODE(i32 %11)
  %13 = load i64, i64* @SET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @PATTERN(i32 %16)
  %18 = load i64*, i64** %5, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = call i32 @stack_adjust_offset_pre_post(i32 %17, i64* %18, i64* %19)
  br label %63

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @PATTERN(i32 %22)
  %24 = call i64 @GET_CODE(i32 %23)
  %25 = load i64, i64* @PARALLEL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @PATTERN(i32 %28)
  %30 = call i64 @GET_CODE(i32 %29)
  %31 = load i64, i64* @SEQUENCE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %27, %21
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @PATTERN(i32 %34)
  %36 = call i32 @XVECLEN(i32 %35, i32 0)
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %58, %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @PATTERN(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @XVECEXP(i32 %43, i32 0, i32 %44)
  %46 = call i64 @GET_CODE(i32 %45)
  %47 = load i64, i64* @SET, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @PATTERN(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @XVECEXP(i32 %51, i32 0, i32 %52)
  %54 = load i64*, i64** %5, align 8
  %55 = load i64*, i64** %6, align 8
  %56 = call i32 @stack_adjust_offset_pre_post(i32 %53, i64* %54, i64* %55)
  br label %57

57:                                               ; preds = %49, %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  br label %38

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61, %27
  br label %63

63:                                               ; preds = %62, %15
  ret void
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @stack_adjust_offset_pre_post(i32, i64*, i64*) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_spec_check_src_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_spec_check_src_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IF_THEN_ELSE = common dso_local global i64 0, align 8
@NE = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@UNSPEC_CHKACLR = common dso_local global i32 0, align 4
@UNSPEC_CHKS = common dso_local global i32 0, align 4
@UNSPEC_LDCCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ia64_spec_check_src_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_spec_check_src_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @GET_CODE(i32 %6)
  %8 = load i64, i64* @IF_THEN_ELSE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @XEXP(i32 %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @GET_CODE(i32 %13)
  %15 = load i64, i64* @NE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @XEXP(i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @GET_CODE(i32 %20)
  %22 = load i64, i64* @UNSPEC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @XINT(i32 %25, i32 1)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @UNSPEC_CHKACLR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @UNSPEC_CHKS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @UNSPEC_LDCCLR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34, %30, %24
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @gcc_assert(i32 %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %48

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %17
  br label %46

46:                                               ; preds = %45, %10
  br label %47

47:                                               ; preds = %46, %1
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

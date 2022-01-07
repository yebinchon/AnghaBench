; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_match_ccmode_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_match_ccmode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@CCTmode = common dso_local global i32 0, align 4
@CCAmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @s390_match_ccmode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_match_ccmode_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @GET_CODE(i32 %7)
  %9 = load i64, i64* @SET, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @SET_DEST(i32 %13)
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = load i64, i64* @REG, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @SET_DEST(i32 %19)
  %21 = call i32 @REGNO(i32 %20)
  %22 = call i32 @CC_REGNO_P(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18, %2
  store i32 1, i32* %3, align 4
  br label %69

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @SET_DEST(i32 %26)
  %28 = call i32 @GET_MODE(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %60 [
    i32 134, label %30
    i32 135, label %30
    i32 129, label %30
    i32 130, label %30
    i32 136, label %30
    i32 139, label %30
    i32 138, label %30
    i32 137, label %30
    i32 133, label %30
    i32 132, label %30
    i32 131, label %30
    i32 128, label %36
    i32 140, label %54
    i32 141, label %54
  ]

30:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %69

35:                                               ; preds = %30
  br label %62

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 134
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 129
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CCTmode, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 135
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 130
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %69

53:                                               ; preds = %49, %46, %42, %39, %36
  br label %62

54:                                               ; preds = %25, %25
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @CCAmode, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %69

59:                                               ; preds = %54
  br label %62

60:                                               ; preds = %25
  %61 = call i32 (...) @gcc_unreachable()
  br label %62

62:                                               ; preds = %60, %59, %53, %35
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @SET_SRC(i32 %63)
  %65 = call i32 @GET_MODE(i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %58, %52, %34, %24
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @CC_REGNO_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @SET_SRC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

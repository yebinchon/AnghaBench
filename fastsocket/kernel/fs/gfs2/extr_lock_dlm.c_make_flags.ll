; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lock_dlm.c_make_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lock_dlm.c_make_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DLM_LKF_VALBLK = common dso_local global i64 0, align 8
@LM_FLAG_TRY = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i64 0, align 8
@LM_FLAG_TRY_1CB = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUEBAST = common dso_local global i64 0, align 8
@LM_FLAG_PRIORITY = common dso_local global i32 0, align 4
@DLM_LKF_NOORDER = common dso_local global i64 0, align 8
@DLM_LKF_HEADQUE = common dso_local global i64 0, align 8
@LM_FLAG_ANY = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@DLM_LKF_ALTCW = common dso_local global i64 0, align 8
@DLM_LOCK_CW = common dso_local global i32 0, align 4
@DLM_LKF_ALTPR = common dso_local global i64 0, align 8
@DLM_LKF_CONVERT = common dso_local global i64 0, align 8
@GLF_BLOCKING = common dso_local global i32 0, align 4
@DLM_LKF_QUECVT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gfs2_glock*, i32, i32)* @make_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_flags(%struct.gfs2_glock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_glock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @DLM_LKF_VALBLK, align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %11 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @LM_FLAG_TRY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i64, i64* @DLM_LKF_NOQUEUE, align 8
  %20 = load i64, i64* %7, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @LM_FLAG_TRY_1CB, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i64, i64* @DLM_LKF_NOQUEUE, align 8
  %29 = load i64, i64* %7, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* @DLM_LKF_NOQUEUEBAST, align 8
  %32 = load i64, i64* %7, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %27, %22
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @LM_FLAG_PRIORITY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i64, i64* @DLM_LKF_NOORDER, align 8
  %41 = load i64, i64* %7, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* @DLM_LKF_HEADQUE, align 8
  %44 = load i64, i64* %7, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @LM_FLAG_ANY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @DLM_LOCK_PR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i64, i64* @DLM_LKF_ALTCW, align 8
  %57 = load i64, i64* %7, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %7, align 8
  br label %70

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @DLM_LOCK_CW, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, i64* @DLM_LKF_ALTPR, align 8
  %65 = load i64, i64* %7, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %7, align 8
  br label %69

67:                                               ; preds = %59
  %68 = call i32 (...) @BUG()
  br label %69

69:                                               ; preds = %67, %63
  br label %70

70:                                               ; preds = %69, %55
  br label %71

71:                                               ; preds = %70, %46
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load i64, i64* @DLM_LKF_CONVERT, align 8
  %76 = load i64, i64* %7, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %7, align 8
  %78 = load i32, i32* @GLF_BLOCKING, align 4
  %79 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %80 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %79, i32 0, i32 0
  %81 = call i64 @test_bit(i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load i64, i64* @DLM_LKF_QUECVT, align 8
  %85 = load i64, i64* %7, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %7, align 8
  br label %87

87:                                               ; preds = %83, %74
  br label %88

88:                                               ; preds = %87, %71
  %89 = load i64, i64* %7, align 8
  ret i64 %89
}

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

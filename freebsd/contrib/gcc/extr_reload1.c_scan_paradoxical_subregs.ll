; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_scan_paradoxical_subregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_scan_paradoxical_subregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg_max_ref_width = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @scan_paradoxical_subregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_paradoxical_subregs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @GET_CODE(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %37 [
    i32 131, label %10
    i32 135, label %10
    i32 137, label %10
    i32 129, label %10
    i32 133, label %10
    i32 136, label %10
    i32 134, label %10
    i32 139, label %10
    i32 132, label %10
    i32 128, label %10
    i32 138, label %10
    i32 130, label %11
  ]

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %89

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @SUBREG_REG(i32 %12)
  %14 = call i32 @REG_P(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @GET_MODE(i32 %17)
  %19 = call i32 @GET_MODE_SIZE(i32 %18)
  %20 = load i32*, i32** @reg_max_ref_width, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @SUBREG_REG(i32 %21)
  %23 = call i64 @REGNO(i32 %22)
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %19, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @GET_MODE(i32 %28)
  %30 = call i32 @GET_MODE_SIZE(i32 %29)
  %31 = load i32*, i32** @reg_max_ref_width, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @SUBREG_REG(i32 %32)
  %34 = call i64 @REGNO(i32 %33)
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %30, i32* %35, align 4
  br label %36

36:                                               ; preds = %27, %16, %11
  br label %89

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = call i8* @GET_RTX_FORMAT(i32 %39)
  store i8* %40, i8** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @GET_RTX_LENGTH(i32 %41)
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %86, %38
  %45 = load i32, i32* %3, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %44
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 101
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @XEXP(i32 %56, i32 %57)
  call void @scan_paradoxical_subregs(i32 %58)
  br label %85

59:                                               ; preds = %47
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 69
  br i1 %66, label %67, label %84

67:                                               ; preds = %59
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @XVECLEN(i32 %68, i32 %69)
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %80, %67
  %73 = load i32, i32* %6, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @XVECEXP(i32 %76, i32 %77, i32 %78)
  call void @scan_paradoxical_subregs(i32 %79)
  br label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %6, align 4
  br label %72

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %59
  br label %85

85:                                               ; preds = %84, %55
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %3, align 4
  br label %44

89:                                               ; preds = %10, %36, %44
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

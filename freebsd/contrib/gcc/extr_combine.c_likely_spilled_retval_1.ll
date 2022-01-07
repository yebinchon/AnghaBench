; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_likely_spilled_retval_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_likely_spilled_retval_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.likely_spilled_retval_info = type { i32, i32, i32 }

@hard_regno_nregs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @likely_spilled_retval_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @likely_spilled_retval_1(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.likely_spilled_retval_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.likely_spilled_retval_info*
  store %struct.likely_spilled_retval_info* %12, %struct.likely_spilled_retval_info** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @XEXP(i32 %13, i32 0)
  %15 = call i32 @REG_P(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %81

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @REGNO(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.likely_spilled_retval_info*, %struct.likely_spilled_retval_info** %7, align 8
  %23 = getelementptr inbounds %struct.likely_spilled_retval_info, %struct.likely_spilled_retval_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.likely_spilled_retval_info*, %struct.likely_spilled_retval_info** %7, align 8
  %26 = getelementptr inbounds %struct.likely_spilled_retval_info, %struct.likely_spilled_retval_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %24, %27
  %29 = icmp uge i32 %21, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %81

31:                                               ; preds = %18
  %32 = load i32**, i32*** @hard_regno_nregs, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @GET_MODE(i32 %37)
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %41, %42
  %44 = load %struct.likely_spilled_retval_info*, %struct.likely_spilled_retval_info** %7, align 8
  %45 = getelementptr inbounds %struct.likely_spilled_retval_info, %struct.likely_spilled_retval_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ule i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  br label %81

49:                                               ; preds = %31
  %50 = load i32, i32* %9, align 4
  %51 = sub i32 %50, 1
  %52 = shl i32 2, %51
  %53 = sub i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.likely_spilled_retval_info*, %struct.likely_spilled_retval_info** %7, align 8
  %56 = getelementptr inbounds %struct.likely_spilled_retval_info, %struct.likely_spilled_retval_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = load %struct.likely_spilled_retval_info*, %struct.likely_spilled_retval_info** %7, align 8
  %61 = getelementptr inbounds %struct.likely_spilled_retval_info, %struct.likely_spilled_retval_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub i32 %62, %63
  %65 = load i32, i32* %10, align 4
  %66 = lshr i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %75

67:                                               ; preds = %49
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.likely_spilled_retval_info*, %struct.likely_spilled_retval_info** %7, align 8
  %70 = getelementptr inbounds %struct.likely_spilled_retval_info, %struct.likely_spilled_retval_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub i32 %68, %71
  %73 = load i32, i32* %10, align 4
  %74 = shl i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %67, %59
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.likely_spilled_retval_info*, %struct.likely_spilled_retval_info** %7, align 8
  %78 = getelementptr inbounds %struct.likely_spilled_retval_info, %struct.likely_spilled_retval_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %48, %30, %17
  ret void
}

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

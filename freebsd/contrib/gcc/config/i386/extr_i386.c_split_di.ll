; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_split_di.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_split_di.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i64 0, align 8
@DImode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @split_di(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  br label %10

10:                                               ; preds = %76, %4
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %77

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @GET_CODE(i32 %20)
  %22 = load i64, i64* @MEM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %14
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SImode, align 4
  %27 = call i32 @adjust_address(i32 %25, i32 %26, i32 0)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @SImode, align 4
  %34 = call i32 @adjust_address(i32 %32, i32 %33, i32 4)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %76

39:                                               ; preds = %14
  %40 = load i32, i32* @SImode, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @GET_MODE(i32 %42)
  %44 = load i64, i64* @VOIDmode, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* @DImode, align 8
  br label %51

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @GET_MODE(i32 %49)
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi i64 [ %47, %46 ], [ %50, %48 ]
  %53 = call i32 @simplify_gen_subreg(i32 %40, i32 %41, i64 %52, i32 0)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @SImode, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @GET_MODE(i32 %60)
  %62 = load i64, i64* @VOIDmode, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i64, i64* @DImode, align 8
  br label %69

66:                                               ; preds = %51
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @GET_MODE(i32 %67)
  br label %69

69:                                               ; preds = %66, %64
  %70 = phi i64 [ %65, %64 ], [ %68, %66 ]
  %71 = call i32 @simplify_gen_subreg(i32 %58, i32 %59, i64 %70, i32 4)
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %69, %24
  br label %10

77:                                               ; preds = %10
  ret void
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

declare dso_local i32 @simplify_gen_subreg(i32, i32, i64, i32) #1

declare dso_local i64 @GET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

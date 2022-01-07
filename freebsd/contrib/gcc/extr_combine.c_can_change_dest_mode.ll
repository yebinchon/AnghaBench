; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_can_change_dest_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_can_change_dest_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @can_change_dest_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_change_dest_mode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @REG_P(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @REGNO(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @HARD_REGNO_MODE_OK(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load i64**, i64*** @hard_regno_nregs, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64*, i64** %25, i64 %27
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @GET_MODE(i32 %30)
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64**, i64*** @hard_regno_nregs, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i64*, i64** %34, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %33, %42
  br label %44

44:                                               ; preds = %24, %19
  %45 = phi i1 [ false, %19 ], [ %43, %24 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %62

47:                                               ; preds = %13
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @REG_N_SETS(i32 %48)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @REG_USERVAR_P(i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %54, %51, %47
  %60 = phi i1 [ false, %51 ], [ false, %47 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %44, %12
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @HARD_REGNO_MODE_OK(i32, i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @REG_N_SETS(i32) #1

declare dso_local i32 @REG_USERVAR_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

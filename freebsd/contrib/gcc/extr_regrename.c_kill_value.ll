; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_kill_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_kill_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_data = type { i32 }

@SUBREG = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.value_data*)* @kill_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_value(i32 %0, %struct.value_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.value_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.value_data* %1, %struct.value_data** %4, align 8
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @GET_CODE(i32 %9)
  %11 = load i64, i64* @SUBREG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @GET_MODE(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @SUBREG_REG(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @SUBREG_REG(i32 %18)
  %20 = call i64 @GET_MODE(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @SUBREG_BYTE(i32 %21)
  %23 = call i32 @simplify_subreg(i64 %15, i32 %17, i64 %20, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @NULL_RTX, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @SUBREG_REG(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %13
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @REG_P(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @REGNO(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32**, i32*** @hard_regno_nregs, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @GET_MODE(i32 %43)
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.value_data*, %struct.value_data** %4, align 8
  %50 = call i32 @kill_value_regno(i32 %47, i32 %48, %struct.value_data* %49)
  br label %51

51:                                               ; preds = %35, %31
  ret void
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @simplify_subreg(i64, i32, i64, i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @SUBREG_BYTE(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @kill_value_regno(i32, i32, %struct.value_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

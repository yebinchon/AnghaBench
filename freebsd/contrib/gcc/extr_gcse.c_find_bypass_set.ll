; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_find_bypass_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_find_bypass_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, i32 }

@set_hash_table = common dso_local global i32 0, align 4
@cprop_avout = common dso_local global i32* null, align 8
@SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (i32, i32)* @find_bypass_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @find_bypass_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.expr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.expr*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.expr* null, %struct.expr** %5, align 8
  br label %8

8:                                                ; preds = %57, %2
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.expr* @lookup_set(i32 %9, i32* @set_hash_table)
  store %struct.expr* %10, %struct.expr** %7, align 8
  br label %11

11:                                               ; preds = %26, %8
  %12 = load %struct.expr*, %struct.expr** %7, align 8
  %13 = icmp ne %struct.expr* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load i32*, i32** @cprop_avout, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.expr*, %struct.expr** %7, align 8
  %21 = getelementptr inbounds %struct.expr, %struct.expr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @TEST_BIT(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %30

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.expr*, %struct.expr** %7, align 8
  %29 = call %struct.expr* @next_set(i32 %27, %struct.expr* %28)
  store %struct.expr* %29, %struct.expr** %7, align 8
  br label %11

30:                                               ; preds = %25, %11
  %31 = load %struct.expr*, %struct.expr** %7, align 8
  %32 = icmp eq %struct.expr* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %60

34:                                               ; preds = %30
  %35 = load %struct.expr*, %struct.expr** %7, align 8
  %36 = getelementptr inbounds %struct.expr, %struct.expr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @GET_CODE(i32 %37)
  %39 = load i64, i64* @SET, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @gcc_assert(i32 %41)
  %43 = load %struct.expr*, %struct.expr** %7, align 8
  %44 = getelementptr inbounds %struct.expr, %struct.expr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SET_SRC(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @gcse_constant_p(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load %struct.expr*, %struct.expr** %7, align 8
  store %struct.expr* %51, %struct.expr** %5, align 8
  br label %52

52:                                               ; preds = %50, %34
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @REG_P(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @REGNO(i32 %58)
  store i32 %59, i32* %3, align 4
  br label %8

60:                                               ; preds = %56, %33
  %61 = load %struct.expr*, %struct.expr** %5, align 8
  ret %struct.expr* %61
}

declare dso_local %struct.expr* @lookup_set(i32, i32*) #1

declare dso_local i64 @TEST_BIT(i32, i32) #1

declare dso_local %struct.expr* @next_set(i32, %struct.expr*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i64 @gcse_constant_p(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

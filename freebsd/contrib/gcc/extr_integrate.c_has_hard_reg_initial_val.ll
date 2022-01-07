; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_integrate.c_has_hard_reg_initial_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_integrate.c_has_hard_reg_initial_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.initial_value_struct* }
%struct.initial_value_struct = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@NULL_RTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @has_hard_reg_initial_val(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.initial_value_struct*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.initial_value_struct*, %struct.initial_value_struct** %9, align 8
  store %struct.initial_value_struct* %10, %struct.initial_value_struct** %6, align 8
  %11 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %12 = icmp ne %struct.initial_value_struct* %11, null
  br i1 %12, label %13, label %58

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %54, %13
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %17 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %14
  %21 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %22 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @GET_MODE(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %20
  %33 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %34 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @REGNO(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %32
  %45 = load %struct.initial_value_struct*, %struct.initial_value_struct** %6, align 8
  %46 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  br label %60

53:                                               ; preds = %32, %20
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %14

57:                                               ; preds = %14
  br label %58

58:                                               ; preds = %57, %2
  %59 = load i32, i32* @NULL_RTX, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %44
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

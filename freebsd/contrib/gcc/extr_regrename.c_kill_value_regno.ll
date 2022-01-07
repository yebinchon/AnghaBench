; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_kill_value_regno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_kill_value_regno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@VOIDmode = common dso_local global i64 0, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.value_data*)* @kill_value_regno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_value_regno(i32 %0, i32 %1, %struct.value_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.value_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.value_data* %2, %struct.value_data** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %20, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %7, align 4
  %17 = add i32 %15, %16
  %18 = load %struct.value_data*, %struct.value_data** %6, align 8
  %19 = call i32 @kill_value_one_regno(i32 %17, %struct.value_data* %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.value_data*, %struct.value_data** %6, align 8
  %26 = getelementptr inbounds %struct.value_data, %struct.value_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %36

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.value_data*, %struct.value_data** %6, align 8
  %33 = getelementptr inbounds %struct.value_data, %struct.value_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub i32 %31, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %30, %29
  br label %37

37:                                               ; preds = %90, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %93

41:                                               ; preds = %37
  %42 = load %struct.value_data*, %struct.value_data** %6, align 8
  %43 = getelementptr inbounds %struct.value_data, %struct.value_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VOIDmode, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %90

53:                                               ; preds = %41
  %54 = load i32**, i32*** @hard_regno_nregs, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.value_data*, %struct.value_data** %6, align 8
  %60 = getelementptr inbounds %struct.value_data, %struct.value_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %58, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %69, %70
  %72 = load i32, i32* %4, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %85, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add i32 %80, %81
  %83 = load %struct.value_data*, %struct.value_data** %6, align 8
  %84 = call i32 @kill_value_one_regno(i32 %82, %struct.value_data* %83)
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %75

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %88, %53
  br label %90

90:                                               ; preds = %89, %52
  %91 = load i32, i32* %7, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %37

93:                                               ; preds = %37
  ret void
}

declare dso_local i32 @kill_value_one_regno(i32, %struct.value_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

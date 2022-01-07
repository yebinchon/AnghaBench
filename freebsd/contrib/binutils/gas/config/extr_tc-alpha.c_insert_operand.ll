; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_insert_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_insert_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_operand = type { i32, i32, i32 (i32, i32, i8**)*, i32 }

@AXP_OPERAND_NOOVERFLOW = common dso_local global i32 0, align 4
@AXP_OPERAND_SIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"operand\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.alpha_operand*, i32, i8*, i32)* @insert_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_operand(i32 %0, %struct.alpha_operand* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.alpha_operand*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.alpha_operand* %1, %struct.alpha_operand** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.alpha_operand*, %struct.alpha_operand** %7, align 8
  %15 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 32
  br i1 %17, label %18, label %68

18:                                               ; preds = %5
  %19 = load %struct.alpha_operand*, %struct.alpha_operand** %7, align 8
  %20 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AXP_OPERAND_NOOVERFLOW, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %68, label %25

25:                                               ; preds = %18
  %26 = load %struct.alpha_operand*, %struct.alpha_operand** %7, align 8
  %27 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AXP_OPERAND_SIGNED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.alpha_operand*, %struct.alpha_operand** %7, align 8
  %34 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = shl i32 1, %36
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  %39 = load %struct.alpha_operand*, %struct.alpha_operand** %7, align 8
  %40 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = shl i32 1, %42
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %51

45:                                               ; preds = %25
  %46 = load %struct.alpha_operand*, %struct.alpha_operand** %7, align 8
  %47 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 1, %48
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %45, %32
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55, %51
  %60 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @as_warn_value_out_of_range(i32 %60, i32 %61, i32 %62, i32 %63, i8* %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %55
  br label %68

68:                                               ; preds = %67, %18, %5
  %69 = load %struct.alpha_operand*, %struct.alpha_operand** %7, align 8
  %70 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %69, i32 0, i32 2
  %71 = load i32 (i32, i32, i8**)*, i32 (i32, i32, i8**)** %70, align 8
  %72 = icmp ne i32 (i32, i32, i8**)* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  store i8* null, i8** %13, align 8
  %74 = load %struct.alpha_operand*, %struct.alpha_operand** %7, align 8
  %75 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %74, i32 0, i32 2
  %76 = load i32 (i32, i32, i8**)*, i32 (i32, i32, i8**)** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 %76(i32 %77, i32 %78, i8** %13)
  store i32 %79, i32* %6, align 4
  %80 = load i8*, i8** %13, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @as_warn(i8* %83)
  br label %85

85:                                               ; preds = %82, %73
  br label %100

86:                                               ; preds = %68
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.alpha_operand*, %struct.alpha_operand** %7, align 8
  %89 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 1, %90
  %92 = sub nsw i32 %91, 1
  %93 = and i32 %87, %92
  %94 = load %struct.alpha_operand*, %struct.alpha_operand** %7, align 8
  %95 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = shl i32 %93, %96
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %86, %85
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @as_warn_value_out_of_range(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @as_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

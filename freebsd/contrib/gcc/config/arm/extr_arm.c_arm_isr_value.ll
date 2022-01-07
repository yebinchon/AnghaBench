; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_isr_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_isr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@NULL_TREE = common dso_local global i64 0, align 8
@ARM_FT_ISR = common dso_local global i64 0, align 8
@STRING_CST = common dso_local global i64 0, align 8
@ARM_FT_UNKNOWN = common dso_local global i64 0, align 8
@isr_attribute_args = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @arm_isr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arm_isr_value(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @NULL_TREE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* @ARM_FT_ISR, align 8
  store i64 %10, i64* %2, align 8
  br label %51

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @TREE_VALUE(i64 %12)
  %14 = load i64, i64* @NULL_TREE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @TREE_VALUE(i64 %17)
  %19 = call i64 @TREE_CODE(i64 %18)
  %20 = load i64, i64* @STRING_CST, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %11
  %23 = load i64, i64* @ARM_FT_UNKNOWN, align 8
  store i64 %23, i64* %2, align 8
  br label %51

24:                                               ; preds = %16
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @TREE_VALUE(i64 %25)
  %27 = call i8* @TREE_STRING_POINTER(i64 %26)
  store i8* %27, i8** %5, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @isr_attribute_args, align 8
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %4, align 8
  br label %29

29:                                               ; preds = %46, %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @streq(i8* %35, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %2, align 8
  br label %51

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 1
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %4, align 8
  br label %29

49:                                               ; preds = %29
  %50 = load i64, i64* @ARM_FT_UNKNOWN, align 8
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %49, %41, %22, %9
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i8* @TREE_STRING_POINTER(i64) #1

declare dso_local i64 @streq(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_comp_type_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_comp_type_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"long_call\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"short_call\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"isr\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @arm_comp_type_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_comp_type_attributes(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @TREE_CODE(i32 %10)
  %12 = load i64, i64* @FUNCTION_TYPE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %99

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TYPE_ATTRIBUTES(i32 %16)
  %18 = call i32* @lookup_attribute(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @TYPE_ATTRIBUTES(i32 %21)
  %23 = call i32* @lookup_attribute(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TYPE_ATTRIBUTES(i32 %26)
  %28 = call i32* @lookup_attribute(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @TYPE_ATTRIBUTES(i32 %31)
  %33 = call i32* @lookup_attribute(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %15
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44
  store i32 0, i32* %3, align 4
  br label %99

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %53
  store i32 0, i32* %3, align 4
  br label %99

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %15
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @TYPE_ATTRIBUTES(i32 %66)
  %68 = call i32* @lookup_attribute(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = icmp ne i32* %68, null
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @TYPE_ATTRIBUTES(i32 %74)
  %76 = call i32* @lookup_attribute(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = icmp ne i32* %76, null
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %73, %65
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @TYPE_ATTRIBUTES(i32 %80)
  %82 = call i32* @lookup_attribute(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = icmp ne i32* %82, null
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @TYPE_ATTRIBUTES(i32 %88)
  %90 = call i32* @lookup_attribute(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = icmp ne i32* %90, null
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %87, %79
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %99

98:                                               ; preds = %93
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %97, %63, %52, %14
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32* @lookup_attribute(i8*, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

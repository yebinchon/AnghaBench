; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_outputdots.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_outputdots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @outputdots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outputdots() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  %4 = call i32 @init_string(i32* %2)
  br label %5

5:                                                ; preds = %80, %0
  %6 = load i32, i32* @tos, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call signext i8 @at(i32 %6, i32 %7)
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %81

10:                                               ; preds = %5
  %11 = load i32, i32* @tos, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call signext i8 @at(i32 %11, i32 %12)
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %77

16:                                               ; preds = %10
  %17 = load i32, i32* @tos, align 4
  %18 = load i32, i32* %1, align 4
  %19 = add i32 %18, 1
  %20 = call signext i8 @at(i32 %17, i32 %19)
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 46
  br i1 %22, label %23, label %77

23:                                               ; preds = %16
  %24 = load i32, i32* %1, align 4
  %25 = add i32 %24, 2
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %74, %23
  %27 = load i32, i32* @tos, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call signext i8 @at(i32 %27, i32 %28)
  store i8 %29, i8* %3, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i8, i8* %3, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 10
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi i1 [ false, %26 ], [ %35, %32 ]
  br i1 %37, label %38, label %75

38:                                               ; preds = %36
  %39 = load i8, i8* %3, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 123
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* @tos, align 4
  %44 = load i32, i32* %1, align 4
  %45 = add i32 %44, 1
  %46 = call signext i8 @at(i32 %43, i32 %45)
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 42
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = call i32 @cattext(i32* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %1, align 4
  %52 = add i32 %51, 2
  store i32 %52, i32* %1, align 4
  br label %74

53:                                               ; preds = %42, %38
  %54 = load i8, i8* %3, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 42
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i32, i32* @tos, align 4
  %59 = load i32, i32* %1, align 4
  %60 = add i32 %59, 1
  %61 = call signext i8 @at(i32 %58, i32 %60)
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 125
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = call i32 @cattext(i32* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %1, align 4
  %67 = add i32 %66, 2
  store i32 %67, i32* %1, align 4
  br label %73

68:                                               ; preds = %57, %53
  %69 = load i8, i8* %3, align 1
  %70 = call i32 @catchar(i32* %2, i8 signext %69)
  %71 = load i32, i32* %1, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %68, %64
  br label %74

74:                                               ; preds = %73, %49
  br label %26

75:                                               ; preds = %36
  %76 = call i32 @catchar(i32* %2, i8 signext 10)
  br label %80

77:                                               ; preds = %16, %10
  %78 = load i32, i32* %1, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %1, align 4
  br label %80

80:                                               ; preds = %77, %75
  br label %5

81:                                               ; preds = %5
  %82 = load i32, i32* @tos, align 4
  %83 = call i32 @overwrite_string(i32 %82, i32* %2)
  %84 = load i32, i32* @pc, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @pc, align 4
  ret void
}

declare dso_local i32 @init_string(i32*) #1

declare dso_local signext i8 @at(i32, i32) #1

declare dso_local i32 @cattext(i32*, i8*) #1

declare dso_local i32 @catchar(i32*, i8 signext) #1

declare dso_local i32 @overwrite_string(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

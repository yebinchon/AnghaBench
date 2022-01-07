; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_bulletize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_bulletize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tos = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0A@itemize @bullet\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\0A@item\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"@end itemize\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"@end itemize\0A\00", align 1
@pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bulletize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bulletize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %4 = call i32 @init_string(i32* %3)
  br label %5

5:                                                ; preds = %89, %0
  %6 = load i32*, i32** @tos, align 8
  %7 = load i32, i32* %1, align 4
  %8 = call signext i8 @at(i32* %6, i32 %7)
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %90

10:                                               ; preds = %5
  %11 = load i32*, i32** @tos, align 8
  %12 = load i32, i32* %1, align 4
  %13 = call signext i8 @at(i32* %11, i32 %12)
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 64
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load i32*, i32** @tos, align 8
  %18 = load i32, i32* %1, align 4
  %19 = add i32 %18, 1
  %20 = call signext i8 @at(i32* %17, i32 %19)
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 42
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = call i32 @cattext(i32* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %1, align 4
  %26 = add i32 %25, 2
  store i32 %26, i32* %1, align 4
  br label %89

27:                                               ; preds = %16, %10
  %28 = load i32*, i32** @tos, align 8
  %29 = load i32, i32* %1, align 4
  %30 = call signext i8 @at(i32* %28, i32 %29)
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = load i32*, i32** @tos, align 8
  %35 = load i32, i32* %1, align 4
  %36 = add i32 %35, 1
  %37 = call signext i8 @at(i32* %34, i32 %36)
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 111
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load i32*, i32** @tos, align 8
  %42 = load i32, i32* %1, align 4
  %43 = add i32 %42, 2
  %44 = call signext i8 @at(i32* %41, i32 %43)
  %45 = call i64 @isspace(i8 zeroext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call i32 @cattext(i32* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = call i32 @cattext(i32* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %1, align 4
  %55 = add i32 %54, 3
  store i32 %55, i32* %1, align 4
  br label %88

56:                                               ; preds = %40, %33, %27
  %57 = load i32*, i32** @tos, align 8
  %58 = load i32, i32* %1, align 4
  %59 = call signext i8 @at(i32* %57, i32 %58)
  %60 = call i32 @catchar(i32* %3, i8 signext %59)
  %61 = load i32, i32* %2, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %56
  %64 = load i32*, i32** @tos, align 8
  %65 = load i32, i32* %1, align 4
  %66 = call signext i8 @at(i32* %64, i32 %65)
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load i32*, i32** @tos, align 8
  %71 = load i32, i32* %1, align 4
  %72 = add i32 %71, 1
  %73 = call signext i8 @at(i32* %70, i32 %72)
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load i32*, i32** @tos, align 8
  %78 = load i32, i32* %1, align 4
  %79 = add i32 %78, 2
  %80 = call signext i8 @at(i32* %77, i32 %79)
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 111
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = call i32 @cattext(i32* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %76, %69, %63, %56
  %86 = load i32, i32* %1, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %1, align 4
  br label %88

88:                                               ; preds = %85, %52
  br label %89

89:                                               ; preds = %88, %23
  br label %5

90:                                               ; preds = %5
  %91 = load i32, i32* %2, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 @cattext(i32* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i32*, i32** @tos, align 8
  %97 = call i32 @delete_string(i32* %96)
  %98 = load i32, i32* %3, align 4
  %99 = load i32*, i32** @tos, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* @pc, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @pc, align 4
  ret void
}

declare dso_local i32 @init_string(i32*) #1

declare dso_local signext i8 @at(i32*, i32) #1

declare dso_local i32 @cattext(i32*, i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @catchar(i32*, i8 signext) #1

declare dso_local i32 @delete_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

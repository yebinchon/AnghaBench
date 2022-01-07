; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_prev_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_prev_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@position = common dso_local global i32 0, align 4
@point = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prev_word() #0 {
  %1 = load i32, i32* @position, align 4
  %2 = icmp ne i32 %1, 1
  br i1 %2, label %3, label %99

3:                                                ; preds = %0
  %4 = load i32, i32* @position, align 4
  %5 = icmp ne i32 %4, 1
  br i1 %5, label %6, label %40

6:                                                ; preds = %3
  %7 = load i8*, i8** @point, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 -1
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = load i8*, i8** @point, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 -1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %18, label %40

18:                                               ; preds = %12, %6
  br label %19

19:                                               ; preds = %36, %18
  %20 = load i32, i32* @position, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i8*, i8** @point, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 32
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** @point, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 9
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ false, %22 ], [ %31, %27 ]
  br label %34

34:                                               ; preds = %32, %19
  %35 = phi i1 [ false, %19 ], [ %33, %32 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @left(i32 %37)
  br label %19

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %12, %3
  br label %41

41:                                               ; preds = %58, %40
  %42 = load i32, i32* @position, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i8*, i8** @point, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** @point, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 9
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i1 [ true, %44 ], [ %53, %49 ]
  br label %56

56:                                               ; preds = %54, %41
  %57 = phi i1 [ false, %41 ], [ %55, %54 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i32 @left(i32 %59)
  br label %41

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %79, %61
  %63 = load i32, i32* @position, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i8*, i8** @point, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 32
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i8*, i8** @point, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 9
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i1 [ false, %65 ], [ %74, %70 ]
  br label %77

77:                                               ; preds = %75, %62
  %78 = phi i1 [ false, %62 ], [ %76, %75 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i32, i32* @TRUE, align 4
  %81 = call i32 @left(i32 %80)
  br label %62

82:                                               ; preds = %77
  %83 = load i32, i32* @position, align 4
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i8*, i8** @point, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 32
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load i8*, i8** @point, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 9
  br i1 %94, label %95, label %98

95:                                               ; preds = %90, %85
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i32 @right(i32 %96)
  br label %98

98:                                               ; preds = %95, %90, %82
  br label %102

99:                                               ; preds = %0
  %100 = load i32, i32* @TRUE, align 4
  %101 = call i32 @left(i32 %100)
  br label %102

102:                                              ; preds = %99, %98
  ret void
}

declare dso_local i32 @left(i32) #1

declare dso_local i32 @right(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

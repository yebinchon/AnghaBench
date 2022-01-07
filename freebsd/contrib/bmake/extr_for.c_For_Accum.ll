; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_for.c_For_Accum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_for.c_For_Accum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"endfor\00", align 1
@FOR = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"For: end for %d\0A\00", align 1
@forLevel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"For: new loop %d\0A\00", align 1
@accumFor = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @For_Accum(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 46
  br i1 %9, label %10, label %81

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %26, %10
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 zeroext %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  br label %13

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 6
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @isspace(i8 zeroext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 6
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %39, %33
  %45 = load i32, i32* @FOR, align 4
  %46 = call i64 @DEBUG(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @debug_file, align 4
  %50 = load i32, i32* @forLevel, align 4
  %51 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @forLevel, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* @forLevel, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %91

57:                                               ; preds = %52
  br label %80

58:                                               ; preds = %39, %29
  %59 = load i8*, i8** %4, align 8
  %60 = call i64 @strncmp(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @isspace(i8 zeroext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load i32, i32* @forLevel, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @forLevel, align 4
  %71 = load i32, i32* @FOR, align 4
  %72 = call i64 @DEBUG(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @debug_file, align 4
  %76 = load i32, i32* @forLevel, align 4
  %77 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %68
  br label %79

79:                                               ; preds = %78, %62, %58
  br label %80

80:                                               ; preds = %79, %57
  br label %81

81:                                               ; preds = %80, %1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @accumFor, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 @Buf_AddBytes(i32* %83, i32 %85, i8* %86)
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @accumFor, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @Buf_AddByte(i32* %89, i8 signext 10)
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %81, %56
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @Buf_AddBytes(i32*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Buf_AddByte(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

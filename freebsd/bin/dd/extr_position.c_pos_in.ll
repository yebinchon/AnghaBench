; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_position.c_pos_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_position.c_pos_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32, i32, i32 }

@in = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ISSEEK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: illegal offset\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"iseek/skip\00", align 1
@ISPIPE = common dso_local global i32 0, align 4
@need_summary = common dso_local global i64 0, align 8
@need_progress = common dso_local global i64 0, align 8
@files_cnt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"skip reached end of input\00", align 1
@ddflags = common dso_local global i32 0, align 4
@C_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pos_in() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @in, i32 0, i32 0), align 8
  %6 = load i32, i32* @ISSEEK, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %0
  store i64 0, i64* @errno, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @in, i32 0, i32 5), align 8
  %11 = call i32 @seek_offset(%struct.TYPE_3__* @in)
  %12 = load i32, i32* @SEEK_CUR, align 4
  %13 = call i32 @lseek(i32 %10, i32 %11, i32 %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load i64, i64* @errno, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @in, i32 0, i32 3), align 8
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %15, %9
  br label %95

22:                                               ; preds = %0
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @in, i32 0, i32 1), align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @in, i32 0, i32 2), align 8
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @in, i32 0, i32 1), align 8
  store i64 %29, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %92, %91, %74, %67, %27
  %31 = load i64, i64* %1, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %30
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @in, i32 0, i32 5), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @in, i32 0, i32 4), align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @read(i32 %34, i32 %35, i64 %36)
  store i64 %37, i64* %3, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @in, i32 0, i32 0), align 8
  %41 = load i32, i32* @ISPIPE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @in, i32 0, i32 2), align 8
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %1, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %1, align 8
  br label %53

53:                                               ; preds = %49, %44
  br label %57

54:                                               ; preds = %39
  %55 = load i64, i64* %1, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %1, align 8
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i64, i64* @need_summary, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (...) @summary()
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i64, i64* @need_progress, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (...) @progress()
  br label %67

67:                                               ; preds = %65, %62
  br label %30

68:                                               ; preds = %33
  %69 = load i64, i64* %3, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* @files_cnt, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @files_cnt, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* @files_cnt, align 4
  br label %30

77:                                               ; preds = %71
  %78 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %68
  %80 = load i32, i32* @ddflags, align 4
  %81 = load i32, i32* @C_NOERROR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i32, i32* %2, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @in, i32 0, i32 3), align 8
  %89 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %88)
  store i32 1, i32* %2, align 4
  %90 = call i32 (...) @summary()
  br label %91

91:                                               ; preds = %87, %84
  br label %30

92:                                               ; preds = %79
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @in, i32 0, i32 3), align 8
  %94 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %30

95:                                               ; preds = %21, %30
  ret void
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @seek_offset(%struct.TYPE_3__*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @read(i32, i32, i64) #1

declare dso_local i32 @summary(...) #1

declare dso_local i32 @progress(...) #1

declare dso_local i32 @warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

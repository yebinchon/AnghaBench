; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_position.c_pos_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_position.c_pos_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i64, i32, i32, i32 }
%struct.mtop = type { i32, i32 }

@out = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ISSEEK = common dso_local global i32 0, align 4
@ISPIPE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: illegal offset\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"oseek/seek\00", align 1
@NOREAD = common dso_local global i32 0, align 4
@MTFSR = common dso_local global i32 0, align 4
@MTIOCTOP = common dso_local global i32 0, align 4
@MTBSR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%s: write failure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pos_out() #0 {
  %1 = alloca %struct.mtop, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 0), align 8
  %5 = load i32, i32* @ISSEEK, align 4
  %6 = load i32, i32* @ISPIPE, align 4
  %7 = or i32 %5, %6
  %8 = and i32 %4, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %0
  store i64 0, i64* @errno, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 5), align 8
  %12 = call i32 @seek_offset(%struct.TYPE_3__* @out)
  %13 = load i32, i32* @SEEK_CUR, align 4
  %14 = call i32 @lseek(i32 %11, i32 %12, i32 %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i64, i64* @errno, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 1), align 8
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %16, %10
  br label %104

23:                                               ; preds = %0
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 2), align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 0), align 8
  %30 = load i32, i32* @NOREAD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32, i32* @MTFSR, align 4
  %35 = getelementptr inbounds %struct.mtop, %struct.mtop* %1, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 2), align 8
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.mtop, %struct.mtop* %1, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 5), align 8
  %40 = load i32, i32* @MTIOCTOP, align 4
  %41 = call i32 @ioctl(i32 %39, i32 %40, %struct.mtop* %1)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 1), align 8
  %45 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %33
  br label %104

47:                                               ; preds = %28
  store i64 0, i64* %2, align 8
  br label %48

48:                                               ; preds = %101, %47
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 2), align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %104

52:                                               ; preds = %48
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 5), align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 4), align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 3), align 8
  %56 = call i32 @read(i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %101

59:                                               ; preds = %52
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 1), align 8
  %64 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* @MTBSR, align 4
  %67 = getelementptr inbounds %struct.mtop, %struct.mtop* %1, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.mtop, %struct.mtop* %1, i32 0, i32 0
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 5), align 8
  %70 = load i32, i32* @MTIOCTOP, align 4
  %71 = call i32 @ioctl(i32 %69, i32 %70, %struct.mtop* %1)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 1), align 8
  %75 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %65
  br label %77

77:                                               ; preds = %99, %76
  %78 = load i64, i64* %2, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %2, align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 2), align 8
  %81 = icmp slt i64 %78, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 5), align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 4), align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 3), align 8
  %86 = call i32 @write(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 1), align 8
  %91 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 3), align 8
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out, i32 0, i32 1), align 8
  %98 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %96, %92
  br label %77

100:                                              ; preds = %77
  br label %104

101:                                              ; preds = %58
  %102 = load i64, i64* %2, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %2, align 8
  br label %48

104:                                              ; preds = %22, %46, %100, %48
  ret void
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @seek_offset(%struct.TYPE_3__*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.mtop*) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

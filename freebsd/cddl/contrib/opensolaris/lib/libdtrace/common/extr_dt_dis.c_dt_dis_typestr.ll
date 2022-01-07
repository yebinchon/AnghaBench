; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_dis.c_dt_dis_typestr.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_dis.c_dt_dis_typestr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"D type\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"restrict\00", align 1
@DIF_TF_BYREF = common dso_local global i32 0, align 4
@DIF_TF_BYUREF = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"%s (%s) by %sref (size %lu)\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"user \00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"%s (%s) (size %lu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*, i64)* @dt_dis_typestr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dt_dis_typestr(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca [16 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %18 [
    i32 129, label %12
    i32 128, label %15
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %14 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %24

15:                                               ; preds = %3
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %17 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %24

18:                                               ; preds = %3
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %19, i64 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %15, %12
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %70 [
    i32 131, label %28
    i32 137, label %31
    i32 140, label %34
    i32 136, label %37
    i32 143, label %40
    i32 138, label %43
    i32 134, label %46
    i32 132, label %49
    i32 141, label %52
    i32 139, label %55
    i32 133, label %58
    i32 130, label %61
    i32 142, label %64
    i32 135, label %67
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %30 = call i32 @strcpy(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %76

31:                                               ; preds = %24
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %33 = call i32 @strcpy(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %76

34:                                               ; preds = %24
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %36 = call i32 @strcpy(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %76

37:                                               ; preds = %24
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %39 = call i32 @strcpy(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %76

40:                                               ; preds = %24
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %42 = call i32 @strcpy(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %76

43:                                               ; preds = %24
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %45 = call i32 @strcpy(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %76

46:                                               ; preds = %24
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %48 = call i32 @strcpy(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %76

49:                                               ; preds = %24
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %51 = call i32 @strcpy(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %76

52:                                               ; preds = %24
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %54 = call i32 @strcpy(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %76

55:                                               ; preds = %24
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %57 = call i32 @strcpy(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %76

58:                                               ; preds = %24
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %60 = call i32 @strcpy(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %76

61:                                               ; preds = %24
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %63 = call i32 @strcpy(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %76

64:                                               ; preds = %24
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %66 = call i32 @strcpy(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %76

67:                                               ; preds = %24
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %69 = call i32 @strcpy(i8* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %76

70:                                               ; preds = %24
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %71, i64 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DIF_TF_BYREF, align 4
  %81 = load i32, i32* @DIF_TF_BYUREF, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %76
  %86 = load i8*, i8** %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %89 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @DIF_TF_BYUREF, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %86, i64 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* %88, i8* %89, i8* %97, i32 %101)
  br label %113

103:                                              ; preds = %76
  %104 = load i8*, i8** %5, align 8
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %107 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %104, i64 %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* %106, i8* %107, i32 %111)
  br label %113

113:                                              ; preds = %103, %85
  %114 = load i8*, i8** %5, align 8
  ret i8* %114
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

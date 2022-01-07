; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c_open_with_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c_open_with_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@procfs_trace = common dso_local global i64 0, align 8
@info_verbose = common dso_local global i64 0, align 8
@procfs_file = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s:%d -- \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"[open FAILED! (%s) line %d]\\n\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%d = open (%s, \00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"O_RDONLY) %d\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"O_WRONLY) %d\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"O_RDWR)   %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_with_trace(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i32 (...) @prepare_to_trace()
  store i64 0, i64* @errno, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @open(i8* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* @procfs_trace, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %113

16:                                               ; preds = %4
  %17 = load i64, i64* @info_verbose, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i64, i64* @procfs_file, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i64, i64* @procfs_file, align 8
  br label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @stdout, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i64, i8*, ...) @fprintf(i64 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %16
  %32 = load i64, i64* @errno, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i64, i64* @procfs_file, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i64, i64* @procfs_file, align 8
  br label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @stdout, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i64 [ %38, %37 ], [ %40, %39 ]
  %43 = load i64, i64* @errno, align 8
  %44 = call i8* @safe_strerror(i64 %43)
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i64, i8*, ...) @fprintf(i64 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %45)
  br label %106

47:                                               ; preds = %31
  %48 = load i64, i64* @procfs_file, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i64, i64* @procfs_file, align 8
  br label %54

52:                                               ; preds = %47
  %53 = load i64, i64* @stdout, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  %56 = load i32, i32* %9, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 (i64, i8*, ...) @fprintf(i64 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %56, i8* %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @O_RDONLY, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %54
  %63 = load i64, i64* @procfs_file, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i64, i64* @procfs_file, align 8
  br label %69

67:                                               ; preds = %62
  %68 = load i64, i64* @stdout, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i64 [ %66, %65 ], [ %68, %67 ]
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i64, i8*, ...) @fprintf(i64 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %105

73:                                               ; preds = %54
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @O_WRONLY, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load i64, i64* @procfs_file, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i64, i64* @procfs_file, align 8
  br label %84

82:                                               ; preds = %77
  %83 = load i64, i64* @stdout, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i64 [ %81, %80 ], [ %83, %82 ]
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i64, i8*, ...) @fprintf(i64 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %104

88:                                               ; preds = %73
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @O_RDWR, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i64, i64* @procfs_file, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i64, i64* @procfs_file, align 8
  br label %99

97:                                               ; preds = %92
  %98 = load i64, i64* @stdout, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i64 [ %96, %95 ], [ %98, %97 ]
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (i64, i8*, ...) @fprintf(i64 %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %99, %88
  br label %104

104:                                              ; preds = %103, %84
  br label %105

105:                                              ; preds = %104, %69
  br label %106

106:                                              ; preds = %105, %41
  %107 = load i64, i64* @procfs_file, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i64, i64* @procfs_file, align 8
  %111 = call i32 @fflush(i64 %110)
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %4
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i32 @prepare_to_trace(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i8* @safe_strerror(i64) #1

declare dso_local i32 @fflush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/bin/rm/extr_rm.c_check2.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/rm/extr_rm.c_check2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@rflag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"recursively remove\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" %d dirs\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" and 1 file\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" and %d files\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"remove %d files\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"? \00", align 1
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @check2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check2(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i8**, i8*** %3, align 8
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %11
  %19 = load i8**, i8*** %3, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @lstat(i8* %23, %struct.stat* %4)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISDIR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i8**, i8*** %3, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %10, align 8
  br label %42

39:                                               ; preds = %26
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %31
  br label %43

43:                                               ; preds = %42, %18
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %11

47:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %131, %47
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 110
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 78
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 121
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 89
  br label %60

60:                                               ; preds = %57, %54, %51, %48
  %61 = phi i1 [ false, %54 ], [ false, %51 ], [ false, %48 ], [ %59, %57 ]
  br i1 %61, label %62, label %132

62:                                               ; preds = %60
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %62
  %66 = load i64, i64* @rflag, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %65
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @stderr, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %81

77:                                               ; preds = %68
  %78 = load i32, i32* @stderr, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %95

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* @stderr, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %87
  br label %95

95:                                               ; preds = %94, %84
  br label %109

96:                                               ; preds = %65, %62
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %97, %98
  %100 = icmp sgt i32 %99, 3
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32, i32* @stderr, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %103, %104
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  br label %108

107:                                              ; preds = %96
  store i32 1, i32* %2, align 4
  br label %141

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %95
  %110 = load i32, i32* @stderr, align 4
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %112 = load i32, i32* @stderr, align 4
  %113 = call i32 @fflush(i32 %112)
  %114 = call i32 (...) @getchar()
  store i32 %114, i32* %6, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %124, %109
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 10
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @EOF, align 4
  %121 = icmp ne i32 %119, %120
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi i1 [ false, %115 ], [ %121, %118 ]
  br i1 %123, label %124, label %126

124:                                              ; preds = %122
  %125 = call i32 (...) @getchar()
  store i32 %125, i32* %6, align 4
  br label %115

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @EOF, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %132

131:                                              ; preds = %126
  br label %48

132:                                              ; preds = %130, %60
  %133 = load i32, i32* %5, align 4
  %134 = icmp eq i32 %133, 121
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %136, 89
  br label %138

138:                                              ; preds = %135, %132
  %139 = phi i1 [ true, %132 ], [ %137, %135 ]
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %138, %107
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

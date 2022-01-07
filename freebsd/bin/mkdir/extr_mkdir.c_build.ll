; ModuleID = '/home/carl/AnghaBench/freebsd/bin/mkdir/extr_mkdir.c_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/mkdir/extr_mkdir.c_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOTDIR = common dso_local global i64 0, align 8
@vflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %11, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %10, align 4
  %13 = load i8*, i8** %11, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %11, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %11, align 8
  br label %21

21:                                               ; preds = %18, %2
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %140, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %143

26:                                               ; preds = %22
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %41

33:                                               ; preds = %26
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 47
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %140

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i8*, i8** %11, align 8
  store i8 0, i8* %42, align 1
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %45, %41
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = call i32 @umask(i32 0)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @S_IWUSR, align 4
  %59 = load i32, i32* @S_IXUSR, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = and i32 %57, %61
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @umask(i32 %63)
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %55, %52
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @umask(i32 %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i8*, i8** %3, align 8
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  br label %83

77:                                               ; preds = %71
  %78 = load i32, i32* @S_IRWXU, align 4
  %79 = load i32, i32* @S_IRWXG, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @S_IRWXO, align 4
  %82 = or i32 %80, %81
  br label %83

83:                                               ; preds = %77, %75
  %84 = phi i32 [ %76, %75 ], [ %82, %77 ]
  %85 = call i64 @mkdir(i8* %72, i32 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %127

87:                                               ; preds = %83
  %88 = load i64, i64* @errno, align 8
  %89 = load i64, i64* @EEXIST, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* @errno, align 8
  %93 = load i64, i64* @EISDIR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %123

95:                                               ; preds = %91, %87
  %96 = load i8*, i8** %3, align 8
  %97 = call i64 @stat(i8* %96, %struct.stat* %5)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %100)
  store i32 0, i32* %10, align 4
  br label %143

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @S_ISDIR(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i64, i64* @EEXIST, align 8
  store i64 %111, i64* @errno, align 8
  br label %114

112:                                              ; preds = %107
  %113 = load i64, i64* @ENOTDIR, align 8
  store i64 %113, i64* @errno, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = load i8*, i8** %3, align 8
  %116 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %115)
  store i32 0, i32* %10, align 4
  br label %143

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 2, i32* %10, align 4
  br label %122

122:                                              ; preds = %121, %118
  br label %126

123:                                              ; preds = %91
  %124 = load i8*, i8** %3, align 8
  %125 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %124)
  store i32 0, i32* %10, align 4
  br label %143

126:                                              ; preds = %122
  br label %134

127:                                              ; preds = %83
  %128 = load i64, i64* @vflag, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i8*, i8** %3, align 8
  %132 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133, %126
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** %11, align 8
  store i8 47, i8* %138, align 1
  br label %139

139:                                              ; preds = %137, %134
  br label %140

140:                                              ; preds = %139, %39
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %11, align 8
  br label %22

143:                                              ; preds = %123, %114, %99, %22
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @umask(i32 %150)
  br label %152

152:                                              ; preds = %149, %146, %143
  %153 = load i32, i32* %10, align 4
  ret i32 %153
}

declare dso_local i32 @umask(i32) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

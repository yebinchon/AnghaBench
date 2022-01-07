; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_exec.c_fgets_timed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_exec.c_fgets_timed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"fgets_timed read error: %m\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"executable map read timed out (> %d secs)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"fgets_timed select error: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32, i32)* @fgets_timed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fgets_timed(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %4
  store i8* null, i8** %5, align 8
  br label %159

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 1
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %5, align 8
  br label %159

32:                                               ; preds = %25
  %33 = call i32 @clocktime(i32* null)
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %143, %133, %72, %32
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 10
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp slt i32 %43, %45
  br label %47

47:                                               ; preds = %42, %34
  %48 = phi i1 [ false, %34 ], [ %46, %42 ]
  br i1 %48, label %49, label %144

49:                                               ; preds = %47
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = call i32 @read(i32 %55, i8* %59, i32 1)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %75

63:                                               ; preds = %49
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 0, i32* %14, align 4
  br label %144

72:                                               ; preds = %63
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %34

75:                                               ; preds = %49
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %144

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i64, i64* @errno, align 8
  %84 = load i64, i64* @EAGAIN, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i64, i64* @errno, align 8
  %88 = load i64, i64* @EINTR, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @XLOG_WARNING, align 4
  %92 = call i32 (i32, i8*, ...) @plog(i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %144

93:                                               ; preds = %86, %82, %79
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = call i32 @clocktime(i32* null)
  %98 = load i32, i32* %12, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %118

104:                                              ; preds = %95
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 %109, %110
  %112 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  br label %117

113:                                              ; preds = %104
  %114 = load i32, i32* @XLOG_WARNING, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 (i32, i8*, ...) @plog(i32 %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  store i32 -1, i32* %14, align 4
  br label %144

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %102
  %119 = call i32 @FD_ZERO(i32* %10)
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @FD_SET(i32 %120, i32* %10)
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 @select(i32 %123, i32* %10, i32* null, i32* null, %struct.timeval* %11)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %118
  %128 = load i32, i32* @XLOG_WARNING, align 4
  %129 = call i32 (i32, i8*, ...) @plog(i32 %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i64, i64* @errno, align 8
  %131 = load i64, i64* @EINTR, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %34

134:                                              ; preds = %127
  store i32 -1, i32* %14, align 4
  br label %144

135:                                              ; preds = %118
  %136 = load i32, i32* %14, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* @XLOG_WARNING, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 (i32, i8*, ...) @plog(i32 %139, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  store i32 -1, i32* %14, align 4
  br label %144

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142
  br label %34

144:                                              ; preds = %138, %134, %113, %90, %78, %71, %47
  %145 = load i32, i32* %14, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i8*, i8** %6, align 8
  store i8* %148, i8** %5, align 8
  br label %159

149:                                              ; preds = %144
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @close(i32 %150)
  %152 = load i32, i32* %14, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i8*, i8** %6, align 8
  br label %157

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi i8* [ %155, %154 ], [ null, %156 ]
  store i8* %158, i8** %5, align 8
  br label %159

159:                                              ; preds = %157, %147, %30, %24
  %160 = load i8*, i8** %5, align 8
  ret i8* %160
}

declare dso_local i32 @clocktime(i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @plog(i32, i8*, ...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

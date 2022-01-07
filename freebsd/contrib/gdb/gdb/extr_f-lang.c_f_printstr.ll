; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-lang.c_f_printstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-lang.c_f_printstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"''\00", align 1
@gdb_stdout = common dso_local global %struct.ui_file* null, align 8
@print_max = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@repeat_count_threshold = common dso_local global i32 0, align 4
@inspect_it = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"\\', \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"', \00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" <repeats %u times>\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_file*, i8*, i32, i32, i32)* @f_printstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_printstr(%struct.ui_file* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ui_file* %0, %struct.ui_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load %struct.ui_file*, %struct.ui_file** @gdb_stdout, align 8
  %21 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %20)
  br label %151

22:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %125, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @print_max, align 4
  %30 = icmp ult i32 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %128

33:                                               ; preds = %31
  %34 = load i32, i32* @QUIT, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %39 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %38)
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* %11, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %43

43:                                               ; preds = %63, %40
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %15, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %53, %59
  br label %61

61:                                               ; preds = %47, %43
  %62 = phi i1 [ false, %43 ], [ %60, %47 ]
  br i1 %62, label %63, label %68

63:                                               ; preds = %61
  %64 = load i32, i32* %15, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %16, align 4
  br label %43

68:                                               ; preds = %61
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @repeat_count_threshold, align 4
  %71 = icmp ugt i32 %69, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %68
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i64, i64* @inspect_it, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %80 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %79)
  br label %84

81:                                               ; preds = %75
  %82 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %83 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %82)
  br label %84

84:                                               ; preds = %81, %78
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %84, %72
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %92 = call i32 @f_printchar(i8 signext %90, %struct.ui_file* %91)
  %93 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @fprintf_filtered(%struct.ui_file* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %15, align 4
  %97 = sub i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* @repeat_count_threshold, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add i32 %99, %98
  store i32 %100, i32* %12, align 4
  store i32 1, i32* %14, align 4
  br label %124

101:                                              ; preds = %68
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %101
  %105 = load i64, i64* @inspect_it, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %109 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %108)
  br label %113

110:                                              ; preds = %104
  %111 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %112 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %111)
  br label %113

113:                                              ; preds = %110, %107
  store i32 1, i32* %13, align 4
  br label %114

114:                                              ; preds = %113, %101
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %121 = call i32 @LA_EMIT_CHAR(i8 signext %119, %struct.ui_file* %120, i8 signext 34)
  %122 = load i32, i32* %12, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %114, %85
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %11, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %23

128:                                              ; preds = %31
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i64, i64* @inspect_it, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %136 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %135)
  br label %140

137:                                              ; preds = %131
  %138 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %139 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %138)
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %128
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144, %141
  %149 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %150 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.ui_file* %149)
  br label %151

151:                                              ; preds = %19, %148, %144
  ret void
}

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @f_printchar(i8 signext, %struct.ui_file*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i32) #1

declare dso_local i32 @LA_EMIT_CHAR(i8 signext, %struct.ui_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

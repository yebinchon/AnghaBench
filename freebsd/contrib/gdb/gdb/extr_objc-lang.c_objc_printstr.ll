; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_objc_printstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_objc_printstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@print_max = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@repeat_count_threshold = common dso_local global i32 0, align 4
@inspect_it = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"\\\22, \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\22, \00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" <repeats %u times>\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_file*, i8*, i32, i32, i32)* @objc_printstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @objc_printstr(%struct.ui_file* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp ugt i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %22, %19, %5
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %39 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %38)
  br label %169

40:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %143, %40
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @print_max, align 4
  %48 = icmp ult i32 %46, %47
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ false, %41 ], [ %48, %45 ]
  br i1 %50, label %51, label %146

51:                                               ; preds = %49
  %52 = load i32, i32* @QUIT, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %57 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %56)
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i32, i32* %11, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %61

61:                                               ; preds = %81, %58
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %15, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %71, %77
  br label %79

79:                                               ; preds = %65, %61
  %80 = phi i1 [ false, %61 ], [ %78, %65 ]
  br i1 %80, label %81, label %86

81:                                               ; preds = %79
  %82 = load i32, i32* %15, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %16, align 4
  br label %61

86:                                               ; preds = %79
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* @repeat_count_threshold, align 4
  %89 = icmp ugt i32 %87, %88
  br i1 %89, label %90, label %119

90:                                               ; preds = %86
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i64, i64* @inspect_it, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %98 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %97)
  br label %102

99:                                               ; preds = %93
  %100 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %101 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %100)
  br label %102

102:                                              ; preds = %99, %96
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %102, %90
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %110 = call i32 @objc_printchar(i8 signext %108, %struct.ui_file* %109)
  %111 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @fprintf_filtered(%struct.ui_file* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %15, align 4
  %115 = sub i32 %114, 1
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* @repeat_count_threshold, align 4
  %117 = load i32, i32* %12, align 4
  %118 = add i32 %117, %116
  store i32 %118, i32* %12, align 4
  store i32 1, i32* %14, align 4
  br label %142

119:                                              ; preds = %86
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %119
  %123 = load i64, i64* @inspect_it, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %127 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %126)
  br label %131

128:                                              ; preds = %122
  %129 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %130 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %129)
  br label %131

131:                                              ; preds = %128, %125
  store i32 1, i32* %13, align 4
  br label %132

132:                                              ; preds = %131, %119
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* %11, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %139 = call i32 @objc_emit_char(i8 signext %137, %struct.ui_file* %138, i8 signext 34)
  %140 = load i32, i32* %12, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %142

142:                                              ; preds = %132, %103
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %41

146:                                              ; preds = %49
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i64, i64* @inspect_it, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %154 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %153)
  br label %158

155:                                              ; preds = %149
  %156 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %157 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %156)
  br label %158

158:                                              ; preds = %155, %152
  br label %159

159:                                              ; preds = %158, %146
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ult i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %162, %159
  %167 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %168 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.ui_file* %167)
  br label %169

169:                                              ; preds = %37, %166, %162
  ret void
}

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @objc_printchar(i8 signext, %struct.ui_file*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i32) #1

declare dso_local i32 @objc_emit_char(i8 signext, %struct.ui_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

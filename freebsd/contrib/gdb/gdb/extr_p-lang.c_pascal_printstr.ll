; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-lang.c_pascal_printstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-lang.c_pascal_printstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"''\00", align 1
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pascal_printstr(%struct.ui_file* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %17 = alloca i32, align 4
  store %struct.ui_file* %0, %struct.ui_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp ugt i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %23, %20, %5
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %40 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %39)
  br label %176

41:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %150, %41
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @print_max, align 4
  %49 = icmp ult i32 %47, %48
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i1 [ false, %42 ], [ %49, %46 ]
  br i1 %51, label %52, label %153

52:                                               ; preds = %50
  %53 = load i32, i32* @QUIT, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %58 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %57)
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %62

62:                                               ; preds = %82, %59
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %15, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %72, %78
  br label %80

80:                                               ; preds = %66, %62
  %81 = phi i1 [ false, %62 ], [ %79, %66 ]
  br i1 %81, label %82, label %87

82:                                               ; preds = %80
  %83 = load i32, i32* %15, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %62

87:                                               ; preds = %80
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @repeat_count_threshold, align 4
  %90 = icmp ugt i32 %88, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i64, i64* @inspect_it, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %99 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %98)
  br label %103

100:                                              ; preds = %94
  %101 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %102 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %101)
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %103, %91
  %105 = load i8*, i8** %7, align 8
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %111 = call i32 @pascal_printchar(i8 signext %109, %struct.ui_file* %110)
  %112 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @fprintf_filtered(%struct.ui_file* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %15, align 4
  %116 = sub i32 %115, 1
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* @repeat_count_threshold, align 4
  %118 = load i32, i32* %12, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %12, align 4
  store i32 1, i32* %14, align 4
  br label %149

120:                                              ; preds = %87
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* %11, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %120
  %130 = load i32, i32* %17, align 4
  %131 = call i64 @PRINT_LITERAL_FORM(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load i64, i64* @inspect_it, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %138 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %137)
  br label %142

139:                                              ; preds = %133
  %140 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %141 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %140)
  br label %142

142:                                              ; preds = %139, %136
  store i32 1, i32* %13, align 4
  br label %143

143:                                              ; preds = %142, %129, %120
  %144 = load i32, i32* %17, align 4
  %145 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %146 = call i32 @pascal_one_char(i32 %144, %struct.ui_file* %145, i32* %13)
  %147 = load i32, i32* %12, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %143, %104
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %11, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %42

153:                                              ; preds = %50
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load i64, i64* @inspect_it, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %161 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %160)
  br label %165

162:                                              ; preds = %156
  %163 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %164 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %163)
  br label %165

165:                                              ; preds = %162, %159
  br label %166

166:                                              ; preds = %165, %153
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ult i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169, %166
  %174 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %175 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.ui_file* %174)
  br label %176

176:                                              ; preds = %38, %173, %169
  ret void
}

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @pascal_printchar(i8 signext, %struct.ui_file*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i32) #1

declare dso_local i64 @PRINT_LITERAL_FORM(i32) #1

declare dso_local i32 @pascal_one_char(i32, %struct.ui_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

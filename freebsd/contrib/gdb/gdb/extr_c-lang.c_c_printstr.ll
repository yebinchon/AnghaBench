; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-lang.c_c_printstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-lang.c_c_printstr.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_printstr(%struct.ui_file* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %17 = alloca i64, align 8
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
  br i1 %19, label %37, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp ugt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub i32 %25, 1
  %27 = load i32, i32* %9, align 4
  %28 = mul i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %24, i64 %29
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @extract_unsigned_integer(i8* %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %23, %20, %5
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %42 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %41)
  br label %169

43:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %143, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @print_max, align 4
  %51 = icmp ult i32 %49, %50
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ false, %44 ], [ %51, %48 ]
  br i1 %53, label %54, label %146

54:                                               ; preds = %52
  %55 = load i32, i32* @QUIT, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %60 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %59)
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %9, align 4
  %65 = mul i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @extract_unsigned_integer(i8* %67, i32 %68)
  store i64 %69, i64* %17, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %72

72:                                               ; preds = %89, %61
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %9, align 4
  %80 = mul i32 %78, %79
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @extract_unsigned_integer(i8* %82, i32 %83)
  %85 = load i64, i64* %17, align 8
  %86 = icmp eq i64 %84, %85
  br label %87

87:                                               ; preds = %76, %72
  %88 = phi i1 [ false, %72 ], [ %86, %76 ]
  br i1 %88, label %89, label %94

89:                                               ; preds = %87
  %90 = load i32, i32* %15, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %16, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %16, align 4
  br label %72

94:                                               ; preds = %87
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* @repeat_count_threshold, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %94
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i64, i64* @inspect_it, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %106 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %105)
  br label %110

107:                                              ; preds = %101
  %108 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %109 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %108)
  br label %110

110:                                              ; preds = %107, %104
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %110, %98
  %112 = load i64, i64* %17, align 8
  %113 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %114 = call i32 @LA_PRINT_CHAR(i64 %112, %struct.ui_file* %113)
  %115 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @fprintf_filtered(%struct.ui_file* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %15, align 4
  %119 = sub i32 %118, 1
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* @repeat_count_threshold, align 4
  %121 = load i32, i32* %12, align 4
  %122 = add i32 %121, %120
  store i32 %122, i32* %12, align 4
  store i32 1, i32* %14, align 4
  br label %142

123:                                              ; preds = %94
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %123
  %127 = load i64, i64* @inspect_it, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %131 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %130)
  br label %135

132:                                              ; preds = %126
  %133 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %134 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %133)
  br label %135

135:                                              ; preds = %132, %129
  store i32 1, i32* %13, align 4
  br label %136

136:                                              ; preds = %135, %123
  %137 = load i64, i64* %17, align 8
  %138 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %139 = call i32 @LA_EMIT_CHAR(i64 %137, %struct.ui_file* %138, i8 signext 34)
  %140 = load i32, i32* %12, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %142

142:                                              ; preds = %136, %111
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %44

146:                                              ; preds = %52
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

169:                                              ; preds = %40, %166, %162
  ret void
}

declare dso_local i64 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @LA_PRINT_CHAR(i64, %struct.ui_file*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i32) #1

declare dso_local i32 @LA_EMIT_CHAR(i64, %struct.ui_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

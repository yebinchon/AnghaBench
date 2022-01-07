; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_get_selections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_get_selections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"PS2\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"one or more choice numbers\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Argument must be choice number\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"cancelled\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Select no more than %d of the above\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_selections(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 2, i32 1
  store i32 %23, i32* %15, align 4
  %24 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %28

28:                                               ; preds = %27, %5
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @gdb_stdout, align 4
  %32 = call i32 @gdb_flush(i32 %31)
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* @command_line_input(i8* null, i32 0, i8* %33)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = call i32 @error_no_arg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %28
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %39, %174
  br label %41

41:                                               ; preds = %46, %40
  %42 = load i8*, i8** %12, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @isspace(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %12, align 8
  br label %41

49:                                               ; preds = %41
  %50 = load i8*, i8** %12, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @error_no_arg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %66

59:                                               ; preds = %54, %49
  %60 = load i8*, i8** %12, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %175

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %57
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @strtol(i8* %67, i8** %16, i32 10)
  store i32 %68, i32* %17, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = icmp eq i8* %69, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %17, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %77, %78
  %80 = sub nsw i32 %79, 1
  %81 = icmp sgt i32 %76, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75, %72, %66
  %83 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %75
  %85 = load i8*, i8** %16, align 8
  store i8* %85, i8** %12, align 8
  %86 = load i32, i32* %17, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %84
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %96

96:                                               ; preds = %106, %94
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i32, i32* %18, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  br label %96

109:                                              ; preds = %96
  br label %175

110:                                              ; preds = %90
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %17, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %14, align 4
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %18, align 4
  br label %116

116:                                              ; preds = %130, %110
  %117 = load i32, i32* %18, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load i32, i32* %17, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %120, %125
  br label %127

127:                                              ; preds = %119, %116
  %128 = phi i1 [ false, %116 ], [ %126, %119 ]
  br i1 %128, label %129, label %133

129:                                              ; preds = %127
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %18, align 4
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %18, align 4
  br label %116

133:                                              ; preds = %127
  %134 = load i32, i32* %18, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %17, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %137, %142
  br i1 %143, label %144, label %174

144:                                              ; preds = %136, %133
  %145 = load i32, i32* %14, align 4
  %146 = sub nsw i32 %145, 1
  store i32 %146, i32* %19, align 4
  br label %147

147:                                              ; preds = %162, %144
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %147
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %19, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %19, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 %156, i32* %161, align 4
  br label %162

162:                                              ; preds = %151
  %163 = load i32, i32* %19, align 4
  %164 = sub nsw i32 %163, 1
  store i32 %164, i32* %19, align 4
  br label %147

165:                                              ; preds = %147
  %166 = load i32, i32* %17, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32 %166, i32* %171, align 4
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %165, %136
  br label %40

175:                                              ; preds = %109, %64
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* %8, align 4
  %181 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %179, %175
  %183 = load i32, i32* %14, align 4
  ret i32 %183
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @printf_unfiltered(i8*, i8*) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i8* @command_line_input(i8*, i32, i8*) #1

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @error(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

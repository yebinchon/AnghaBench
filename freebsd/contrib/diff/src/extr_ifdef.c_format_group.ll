; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_format_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_format_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"=?\00", align 1
@line_format = common dso_local global i32* null, align 8
@OLD = common dso_local global i64 0, align 8
@UNCHANGED = common dso_local global i64 0, align 8
@NEW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8, %struct.group*)* @format_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_group(i32* %0, i8* %1, i8 signext %2, %struct.group* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.group*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.group* %3, %struct.group** %8, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %10, align 8
  br label %18

18:                                               ; preds = %175, %163, %146, %137, %128, %127, %4
  %19 = load i8*, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %9, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* %7, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i8, i8* %9, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %25, %18
  %30 = phi i1 [ false, %18 ], [ %28, %25 ]
  br i1 %30, label %31, label %176

31:                                               ; preds = %29
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %10, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i8, i8* %9, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %168

37:                                               ; preds = %31
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %10, align 8
  %40 = load i8, i8* %38, align 1
  store i8 %40, i8* %9, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %155 [
    i32 37, label %42
    i32 40, label %43
    i32 60, label %128
    i32 61, label %137
    i32 62, label %146
  ]

42:                                               ; preds = %37
  br label %167

43:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %93, %43
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %96

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @ISDIGIT(i8 signext %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  store i32 0, i32* @errno, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @strtoumax(i8* %53, i8** %16, i32 10)
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %165

61:                                               ; preds = %52
  %62 = load i8*, i8** %16, align 8
  store i8* %62, i8** %10, align 8
  br label %80

63:                                               ; preds = %47
  %64 = load %struct.group*, %struct.group** %8, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @groups_letter_value(%struct.group* %64, i8 signext %66)
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %69
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %165

77:                                               ; preds = %63
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %10, align 8
  br label %80

80:                                               ; preds = %77, %61
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %10, align 8
  %83 = load i8, i8* %81, align 1
  %84 = sext i8 %83 to i32
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x i8], [3 x i8]* @.str, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %84, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %165

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %44

96:                                               ; preds = %44
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32*, i32** %5, align 8
  store i32* %103, i32** %14, align 8
  store i32* null, i32** %15, align 8
  br label %106

104:                                              ; preds = %96
  store i32* null, i32** %14, align 8
  %105 = load i32*, i32** %5, align 8
  store i32* %105, i32** %15, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = load i32*, i32** %14, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load %struct.group*, %struct.group** %8, align 8
  %110 = call i8* @format_group(i32* %107, i8* %108, i8 signext 58, %struct.group* %109)
  store i8* %110, i8** %10, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load i8, i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %106
  %115 = load i32*, i32** %15, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load %struct.group*, %struct.group** %8, align 8
  %119 = call i8* @format_group(i32* %115, i8* %117, i8 signext 41, %struct.group* %118)
  store i8* %119, i8** %10, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i8, i8* %120, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %10, align 8
  br label %126

126:                                              ; preds = %123, %114
  br label %127

127:                                              ; preds = %126, %106
  br label %18

128:                                              ; preds = %37
  %129 = load i32*, i32** %5, align 8
  %130 = load i32*, i32** @line_format, align 8
  %131 = load i64, i64* @OLD, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.group*, %struct.group** %8, align 8
  %135 = getelementptr inbounds %struct.group, %struct.group* %134, i64 0
  %136 = call i32 @print_ifdef_lines(i32* %129, i32 %133, %struct.group* %135)
  br label %18

137:                                              ; preds = %37
  %138 = load i32*, i32** %5, align 8
  %139 = load i32*, i32** @line_format, align 8
  %140 = load i64, i64* @UNCHANGED, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.group*, %struct.group** %8, align 8
  %144 = getelementptr inbounds %struct.group, %struct.group* %143, i64 0
  %145 = call i32 @print_ifdef_lines(i32* %138, i32 %142, %struct.group* %144)
  br label %18

146:                                              ; preds = %37
  %147 = load i32*, i32** %5, align 8
  %148 = load i32*, i32** @line_format, align 8
  %149 = load i64, i64* @NEW, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.group*, %struct.group** %8, align 8
  %153 = getelementptr inbounds %struct.group, %struct.group* %152, i64 1
  %154 = call i32 @print_ifdef_lines(i32* %147, i32 %151, %struct.group* %153)
  br label %18

155:                                              ; preds = %37
  %156 = load i32*, i32** %5, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 -2
  %159 = load %struct.group*, %struct.group** %8, align 8
  %160 = call i8* @do_printf_spec(i32* %156, i8* %158, i32 0, i32 0, %struct.group* %159)
  store i8* %160, i8** %10, align 8
  %161 = load i8*, i8** %10, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %18

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164, %91, %76, %60
  store i8 37, i8* %9, align 1
  %166 = load i8*, i8** %11, align 8
  store i8* %166, i8** %10, align 8
  br label %167

167:                                              ; preds = %165, %42
  br label %168

168:                                              ; preds = %167, %31
  %169 = load i32*, i32** %5, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i8, i8* %9, align 1
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @putc(i8 signext %172, i32* %173)
  br label %175

175:                                              ; preds = %171, %168
  br label %18

176:                                              ; preds = %29
  %177 = load i8*, i8** %10, align 8
  ret i8* %177
}

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @strtoumax(i8*, i8**, i32) #1

declare dso_local i32 @groups_letter_value(%struct.group*, i8 signext) #1

declare dso_local i32 @print_ifdef_lines(i32*, i32, %struct.group*) #1

declare dso_local i8* @do_printf_spec(i32*, i8*, i32, i32, %struct.group*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

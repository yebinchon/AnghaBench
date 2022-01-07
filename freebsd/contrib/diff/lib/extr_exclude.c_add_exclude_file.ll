; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_exclude.c_add_exclude_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_exclude.c_add_exclude_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exclude = type { i32 }

@stdin = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_exclude_file(void (%struct.exclude*, i8*, i32)* %0, %struct.exclude* %1, i8* %2, i32 %3, i8 signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.exclude*, i8*, i32)*, align 8
  %8 = alloca %struct.exclude*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store void (%struct.exclude*, i8*, i32)* %0, void (%struct.exclude*, i8*, i32)** %7, align 8
  store %struct.exclude* %1, %struct.exclude** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 45
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %5
  %35 = phi i1 [ false, %5 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %12, align 4
  store i8* null, i8** %14, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %21, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32*, i32** @stdin, align 8
  store i32* %40, i32** %13, align 8
  br label %47

41:                                               ; preds = %34
  %42 = load i8*, i8** %9, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %43, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 -1, i32* %6, align 4
  br label %168

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %39
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @getc(i32* %49)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* @EOF, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load i64, i64* %19, align 8
  %55 = load i64, i64* %18, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %14, align 8
  %59 = call i8* @x2realloc(i8* %58, i64* %18)
  store i8* %59, i8** %14, align 8
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* %20, align 4
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %14, align 8
  %64 = load i64, i64* %19, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %19, align 8
  %66 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 %62, i8* %66, align 1
  br label %48

67:                                               ; preds = %48
  %68 = load i32*, i32** %13, align 8
  %69 = call i64 @ferror(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @errno, align 4
  store i32 %72, i32* %21, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32*, i32** %13, align 8
  %78 = call i64 @fclose(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @errno, align 4
  store i32 %81, i32* %21, align 4
  br label %82

82:                                               ; preds = %80, %76, %73
  %83 = load i8*, i8** %14, align 8
  %84 = load i64, i64* %19, align 8
  %85 = add i64 %84, 1
  %86 = call i8* @xrealloc(i8* %83, i64 %85)
  store i8* %86, i8** %14, align 8
  %87 = load i8, i8* %11, align 1
  %88 = load i8*, i8** %14, align 8
  %89 = load i64, i64* %19, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 %87, i8* %90, align 1
  %91 = load i8*, i8** %14, align 8
  %92 = load i64, i64* %19, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i64, i64* %19, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %82
  %97 = load i8*, i8** %14, align 8
  %98 = load i64, i64* %19, align 8
  %99 = sub i64 %98, 1
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* %11, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %102, %104
  br label %106

106:                                              ; preds = %96, %82
  %107 = phi i1 [ true, %82 ], [ %105, %96 ]
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %93, i64 %110
  store i8* %111, i8** %17, align 8
  %112 = load i8*, i8** %14, align 8
  store i8* %112, i8** %16, align 8
  %113 = load i8*, i8** %14, align 8
  store i8* %113, i8** %15, align 8
  br label %114

114:                                              ; preds = %159, %106
  %115 = load i8*, i8** %15, align 8
  %116 = load i8*, i8** %17, align 8
  %117 = icmp ult i8* %115, %116
  br i1 %117, label %118, label %162

118:                                              ; preds = %114
  %119 = load i8*, i8** %15, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = load i8, i8* %11, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %158

125:                                              ; preds = %118
  %126 = load i8*, i8** %15, align 8
  store i8* %126, i8** %22, align 8
  %127 = load i8, i8* %11, align 1
  %128 = call i64 @is_space(i8 signext %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %149

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %145, %130
  %132 = load i8*, i8** %22, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = icmp eq i8* %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %155

136:                                              ; preds = %131
  %137 = load i8*, i8** %22, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 -1
  %139 = load i8, i8* %138, align 1
  %140 = call i64 @is_space(i8 signext %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %136
  br label %148

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  %146 = load i8*, i8** %22, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 -1
  store i8* %147, i8** %22, align 8
  br label %131

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148, %125
  %150 = load i8*, i8** %22, align 8
  store i8 0, i8* %150, align 1
  %151 = load void (%struct.exclude*, i8*, i32)*, void (%struct.exclude*, i8*, i32)** %7, align 8
  %152 = load %struct.exclude*, %struct.exclude** %8, align 8
  %153 = load i8*, i8** %16, align 8
  %154 = load i32, i32* %10, align 4
  call void %151(%struct.exclude* %152, i8* %153, i32 %154)
  br label %155

155:                                              ; preds = %149, %135
  %156 = load i8*, i8** %15, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  store i8* %157, i8** %16, align 8
  br label %158

158:                                              ; preds = %155, %118
  br label %159

159:                                              ; preds = %158
  %160 = load i8*, i8** %15, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %15, align 8
  br label %114

162:                                              ; preds = %114
  %163 = load i32, i32* %21, align 4
  store i32 %163, i32* @errno, align 4
  %164 = load i32, i32* %21, align 4
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 -1, i32 0
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %162, %45
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i8* @x2realloc(i8*, i64*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i64 @is_space(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

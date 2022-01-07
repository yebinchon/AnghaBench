; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_shortpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_shortpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cwd_buffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DIR_SEPARATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @shortpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @shortpath(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** @cwd_buffer, align 8
  store i8* %12, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %11, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @abspath(i8* %16, i8* %17)
  store i8* %18, i8** %9, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call i8* @xmalloc(i64 %19)
  store i8* %20, i8** %6, align 8
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %35, %2
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @IS_SAME_PATH_CHAR(i8 signext %28, i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %26, %21
  %34 = phi i1 [ false, %21 ], [ %32, %26 ]
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  br label %21

40:                                               ; preds = %33
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @IS_DIR_SEPARATOR(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48, %44
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %168

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  store i8* %60, i8** %3, align 8
  br label %168

61:                                               ; preds = %48, %40
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %67, i8** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 -1
  store i8* %69, i8** %9, align 8
  br label %70

70:                                               ; preds = %76, %65
  %71 = load i8*, i8** %8, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @IS_DIR_SEPARATOR(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 -1
  store i8* %78, i8** %8, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %80, i8** %9, align 8
  br label %70

81:                                               ; preds = %70
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %8, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %81, %61
  br label %89

89:                                               ; preds = %103, %88
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %8, align 8
  %92 = load i8, i8* %90, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 -1
  %97 = load i8, i8* %96, align 1
  %98 = call i64 @IS_DIR_SEPARATOR(i8 signext %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %100, %94
  br label %89

104:                                              ; preds = %89
  %105 = load i32, i32* %10, align 4
  %106 = mul nsw i32 %105, 3
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = add nsw i32 %106, %108
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %11, align 8
  %112 = icmp uge i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = load i8*, i8** %5, align 8
  store i8* %114, i8** %3, align 8
  br label %168

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %129, %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %10, align 4
  %119 = icmp ne i32 %117, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %116
  %121 = load i8*, i8** %6, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 3
  %126 = icmp ule i8* %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i8*, i8** %5, align 8
  store i8* %128, i8** %3, align 8
  br label %168

129:                                              ; preds = %120
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %7, align 8
  store i8 46, i8* %130, align 1
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %7, align 8
  store i8 46, i8* %132, align 1
  %134 = load i32, i32* @DIR_SEPARATOR, align 4
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %7, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %7, align 8
  store i8 %135, i8* %136, align 1
  br label %116

138:                                              ; preds = %116
  br label %139

139:                                              ; preds = %148, %138
  %140 = load i8*, i8** %6, align 8
  %141 = load i64, i64* %11, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i8*, i8** %7, align 8
  %144 = icmp ule i8* %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i8*, i8** %5, align 8
  store i8* %146, i8** %3, align 8
  br label %168

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %9, align 8
  %151 = load i8, i8* %149, align 1
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %7, align 8
  store i8 %151, i8* %152, align 1
  %154 = icmp ne i8 %151, 0
  br i1 %154, label %139, label %155

155:                                              ; preds = %148
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 -1
  store i8* %157, i8** %7, align 8
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 -1
  %160 = load i8, i8* %159, align 1
  %161 = call i64 @IS_DIR_SEPARATOR(i8 signext %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load i8*, i8** %7, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 -1
  store i8* %165, i8** %7, align 8
  store i8 0, i8* %165, align 1
  br label %166

166:                                              ; preds = %163, %155
  %167 = load i8*, i8** %6, align 8
  store i8* %167, i8** %3, align 8
  br label %168

168:                                              ; preds = %166, %145, %127, %113, %58, %57
  %169 = load i8*, i8** %3, align 8
  ret i8* %169
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @abspath(i8*, i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @IS_SAME_PATH_CHAR(i8 signext, i8 signext) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

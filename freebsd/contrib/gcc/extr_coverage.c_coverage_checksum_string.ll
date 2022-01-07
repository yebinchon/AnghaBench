; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_coverage.c_coverage_checksum_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_coverage.c_coverage_checksum_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"_GLOBAL__\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"N_\00", align 1
@GLOBAL_PREFIX = common dso_local global i32 0, align 4
@NDIGITS = common dso_local global i32 0, align 4
@TRAILING_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @coverage_checksum_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coverage_checksum_string(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @strstr(i8* %8, i32 ptrtoint ([10 x i8]* @.str to i32))
  store i8* %9, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %147

11:                                               ; preds = %2
  %12 = call i32 @strlen(i32 ptrtoint ([10 x i8]* @.str to i32))
  %13 = load i8*, i8** %6, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i32 ptrtoint ([3 x i8]* @.str.1 to i32))
  %18 = call i32 @strncmp(i8* %16, i32 ptrtoint ([3 x i8]* @.str.1 to i32), i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %11
  %21 = call i32 @strlen(i32 ptrtoint ([3 x i8]* @.str.1 to i32))
  %22 = load i8*, i8** %6, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %20, %11
  br label %26

26:                                               ; preds = %145, %78, %25
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 95)
  store i8* %28, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %146

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %65, %30
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 8
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi i1 [ false, %33 ], [ %40, %38 ]
  br i1 %42, label %43, label %70

43:                                               ; preds = %41
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sge i32 %46, 48
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 %51, 57
  br i1 %52, label %64, label %53

53:                                               ; preds = %48, %43
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %56, 65
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sle i32 %61, 70
  br i1 %62, label %64, label %63

63:                                               ; preds = %58, %53
  br label %70

64:                                               ; preds = %58, %48
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  br label %33

70:                                               ; preds = %63, %41
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 8
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 95
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %70
  br label %26

79:                                               ; preds = %73
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %114, %79
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = phi i1 [ false, %82 ], [ %89, %87 ]
  br i1 %91, label %92, label %119

92:                                               ; preds = %90
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp sge i32 %95, 48
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i8*, i8** %6, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sle i32 %100, 57
  br i1 %101, label %113, label %102

102:                                              ; preds = %97, %92
  %103 = load i8*, i8** %6, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sge i32 %105, 65
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8*, i8** %6, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp sle i32 %110, 70
  br i1 %111, label %113, label %112

112:                                              ; preds = %107, %102
  br label %119

113:                                              ; preds = %107, %97
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 8
  br label %82

119:                                              ; preds = %112, %90
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 8
  br i1 %121, label %122, label %145

122:                                              ; preds = %119
  %123 = load i8*, i8** %4, align 8
  %124 = call i8* @xstrdup(i8* %123)
  store i8* %124, i8** %5, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = getelementptr inbounds i8, i8* %125, i64 %130
  store i8* %131, i8** %6, align 8
  store i32 -9, i32* %7, align 4
  br label %132

132:                                              ; preds = %140, %122
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8 48, i8* %139, align 1
  br label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %132

143:                                              ; preds = %132
  %144 = load i8*, i8** %5, align 8
  store i8* %144, i8** %6, align 8
  br label %146

145:                                              ; preds = %119
  br label %26

146:                                              ; preds = %143, %26
  br label %147

147:                                              ; preds = %146, %2
  %148 = load i32, i32* %3, align 4
  %149 = load i8*, i8** %6, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i8*, i8** %6, align 8
  br label %155

153:                                              ; preds = %147
  %154 = load i8*, i8** %4, align 8
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i8* [ %152, %151 ], [ %154, %153 ]
  %157 = call i32 @crc32_string(i32 %148, i8* %156)
  store i32 %157, i32* %3, align 4
  %158 = load i8*, i8** %5, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i8*, i8** %5, align 8
  %162 = call i32 @free(i8* %161)
  br label %163

163:                                              ; preds = %160, %155
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i8* @strstr(i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @crc32_string(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

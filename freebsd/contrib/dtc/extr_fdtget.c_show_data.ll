; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_fdtget.c_show_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_fdtget.c_show_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_info = type { i8, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unterminated string\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Property length must be a multiple of selected data size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display_info*, i8*, i32)* @show_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_data(%struct.display_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.display_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i8], align 1
  store %struct.display_info* %0, %struct.display_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %167

20:                                               ; preds = %3
  %21 = load %struct.display_info*, %struct.display_info** %5, align 8
  %22 = getelementptr inbounds %struct.display_info, %struct.display_info* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 4
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 115
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.display_info*, %struct.display_info** %5, align 8
  %28 = getelementptr inbounds %struct.display_info, %struct.display_info* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 4
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @util_is_printable_string(i8* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  br label %38

38:                                               ; preds = %36, %20
  %39 = phi i1 [ true, %20 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %167

55:                                               ; preds = %43
  %56 = load i8*, i8** %6, align 8
  store i8* %56, i8** %11, align 8
  br label %57

57:                                               ; preds = %75, %55
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %57
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ne i8* %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %11, align 8
  %77 = call i64 @strlen(i8* %76)
  %78 = add nsw i64 %77, 1
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  store i8* %80, i8** %11, align 8
  br label %57

81:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %167

82:                                               ; preds = %38
  %83 = load %struct.display_info*, %struct.display_info** %5, align 8
  %84 = getelementptr inbounds %struct.display_info, %struct.display_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  %90 = srem i32 %89, 4
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 4, i32 1
  store i32 %93, i32* %9, align 4
  br label %103

94:                                               ; preds = %82
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %9, align 4
  %97 = srem i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %167

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %88
  %104 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  store i8 37, i8* %104, align 1
  %105 = load %struct.display_info*, %struct.display_info** %5, align 8
  %106 = getelementptr inbounds %struct.display_info, %struct.display_info* %105, i32 0, i32 0
  %107 = load i8, i8* %106, align 4
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.display_info*, %struct.display_info** %5, align 8
  %112 = getelementptr inbounds %struct.display_info, %struct.display_info* %111, i32 0, i32 0
  %113 = load i8, i8* %112, align 4
  %114 = sext i8 %113 to i32
  br label %116

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %110
  %117 = phi i32 [ %114, %110 ], [ 100, %115 ]
  %118 = trunc i32 %117 to i8
  %119 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 1
  store i8 %118, i8* %119, align 1
  %120 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 2
  store i8 0, i8* %120, align 1
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %158, %116
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %166

125:                                              ; preds = %121
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %125
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 4
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @fdt32_to_cpu(i32 %135)
  br label %153

137:                                              ; preds = %130
  %138 = load i32, i32* %9, align 4
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 8
  %144 = load i32*, i32** %10, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %143, %146
  br label %151

148:                                              ; preds = %137
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %149, align 4
  br label %151

151:                                              ; preds = %148, %140
  %152 = phi i32 [ %147, %140 ], [ %150, %148 ]
  br label %153

153:                                              ; preds = %151, %133
  %154 = phi i32 [ %136, %133 ], [ %152, %151 ]
  store i32 %154, i32* %12, align 4
  %155 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %156 = load i32, i32* %12, align 4
  %157 = call i32 (i8*, ...) @printf(i8* %155, i32 %156)
  br label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32* %165, i32** %10, align 8
  br label %121

166:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %99, %81, %52, %19
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i64 @util_is_printable_string(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

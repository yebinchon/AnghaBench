; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_start_class_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_start_class_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"class \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"union class \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%%anon%u\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" /*\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" size \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" vtable \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"self \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" id %u\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" */\00", align 1
@DEBUG_VISIBILITY_PRIVATE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i32)* @pr_start_class_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pr_start_class_type(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pr_handle*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [20 x i8], align 16
  %19 = alloca [20 x i8], align 16
  %20 = alloca [30 x i8], align 16
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.pr_handle*
  store %struct.pr_handle* %22, %struct.pr_handle** %16, align 8
  store i8* null, i8** %17, align 8
  %23 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %24 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 2
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %7
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %34 = call i8* @pop_type(%struct.pr_handle* %33)
  store i8* %34, i8** %17, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %8, align 4
  br label %183

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %29, %7
  %41 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)
  %46 = call i32 @push_type(%struct.pr_handle* %41, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %8, align 4
  br label %183

50:                                               ; preds = %40
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i64 @append_type(%struct.pr_handle* %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %8, align 4
  br label %183

60:                                               ; preds = %53
  br label %72

61:                                               ; preds = %50
  %62 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %66 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %67 = call i64 @append_type(%struct.pr_handle* %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %8, align 4
  br label %183

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %60
  %73 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %74 = call i64 @append_type(%struct.pr_handle* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %8, align 4
  br label %183

78:                                               ; preds = %72
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %167

90:                                               ; preds = %87, %84, %81, %78
  %91 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %92 = call i64 @append_type(%struct.pr_handle* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @FALSE, align 4
  store i32 %95, i32* %8, align 4
  br label %183

96:                                               ; preds = %90
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %96
  %100 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @sprintf(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %104 = call i64 @append_type(%struct.pr_handle* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %108 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  %109 = call i64 @append_type(%struct.pr_handle* %107, i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %106, %99
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %8, align 4
  br label %183

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %96
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %146

117:                                              ; preds = %114
  %118 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %119 = call i64 @append_type(%struct.pr_handle* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %8, align 4
  br label %183

123:                                              ; preds = %117
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %128 = call i64 @append_type(%struct.pr_handle* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %8, align 4
  br label %183

132:                                              ; preds = %126
  br label %145

133:                                              ; preds = %123
  %134 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %135 = load i8*, i8** %17, align 8
  %136 = call i64 @append_type(%struct.pr_handle* %134, i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %140 = call i64 @append_type(%struct.pr_handle* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %138, %133
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %8, align 4
  br label %183

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %132
  br label %146

146:                                              ; preds = %145, %114
  %147 = load i8*, i8** %10, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = getelementptr inbounds [30 x i8], [30 x i8]* %20, i64 0, i64 0
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @sprintf(i8* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %151)
  %153 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %154 = getelementptr inbounds [30 x i8], [30 x i8]* %20, i64 0, i64 0
  %155 = call i64 @append_type(%struct.pr_handle* %153, i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %149
  %158 = load i32, i32* @FALSE, align 4
  store i32 %158, i32* %8, align 4
  br label %183

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159, %146
  %161 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %162 = call i64 @append_type(%struct.pr_handle* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* @FALSE, align 4
  store i32 %165, i32* %8, align 4
  br label %183

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %87
  %168 = load i32, i32* @DEBUG_VISIBILITY_PRIVATE, align 4
  %169 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %170 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %169, i32 0, i32 1
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  store i32 %168, i32* %172, align 4
  %173 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %174 = call i64 @append_type(%struct.pr_handle* %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %167
  %177 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %178 = call i64 @indent_type(%struct.pr_handle* %177)
  %179 = icmp ne i64 %178, 0
  br label %180

180:                                              ; preds = %176, %167
  %181 = phi i1 [ false, %167 ], [ %179, %176 ]
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %180, %164, %157, %142, %130, %121, %111, %94, %76, %69, %58, %48, %37
  %184 = load i32, i32* %8, align 4
  ret i32 %184
}

declare dso_local i8* @pop_type(%struct.pr_handle*) #1

declare dso_local i32 @push_type(%struct.pr_handle*, i8*) #1

declare dso_local i64 @append_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @indent_type(%struct.pr_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

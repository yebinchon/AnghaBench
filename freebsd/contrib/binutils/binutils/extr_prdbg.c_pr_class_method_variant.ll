; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_class_method_variant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_class_method_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" /* \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"context \00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"voffset \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" */;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i64, i32)* @pr_class_method_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pr_class_method_variant(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.pr_handle*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [20 x i8], align 16
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.pr_handle*
  store %struct.pr_handle* %21, %struct.pr_handle** %16, align 8
  %22 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %23 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %29 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %7
  %39 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %40 = call i64 @append_type(%struct.pr_handle* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %8, align 4
  br label %182

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %7
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %50 = call i64 @append_type(%struct.pr_handle* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %8, align 4
  br label %182

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %45
  %56 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %61 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  br label %77

69:                                               ; preds = %55
  %70 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %71 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  br label %77

77:                                               ; preds = %69, %59
  %78 = phi i32 [ %68, %59 ], [ %76, %69 ]
  %79 = call i32 @substitute_type(%struct.pr_handle* %56, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %8, align 4
  br label %182

83:                                               ; preds = %77
  %84 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %85 = call i8* @pop_type(%struct.pr_handle* %84)
  store i8* %85, i8** %17, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %8, align 4
  br label %182

90:                                               ; preds = %83
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  store i8* null, i8** %18, align 8
  br label %102

94:                                               ; preds = %90
  %95 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %96 = call i8* @pop_type(%struct.pr_handle* %95)
  store i8* %96, i8** %18, align 8
  %97 = load i8*, i8** %18, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %8, align 4
  br label %182

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %93
  %103 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @pr_fix_visibility(%struct.pr_handle* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %8, align 4
  br label %182

109:                                              ; preds = %102
  %110 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = call i64 @append_type(%struct.pr_handle* %110, i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %109
  %115 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %116 = call i64 @append_type(%struct.pr_handle* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i64 @append_type(%struct.pr_handle* %119, i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %125 = call i64 @append_type(%struct.pr_handle* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123, %118, %114, %109
  %128 = load i32, i32* @FALSE, align 4
  store i32 %128, i32* %8, align 4
  br label %182

129:                                              ; preds = %123
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i64, i64* %14, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %171

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %135
  %139 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %140 = call i64 @append_type(%struct.pr_handle* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %144 = load i8*, i8** %18, align 8
  %145 = call i64 @append_type(%struct.pr_handle* %143, i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %149 = call i64 @append_type(%struct.pr_handle* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %147, %142, %138
  %152 = load i32, i32* @FALSE, align 4
  store i32 %152, i32* %8, align 4
  br label %182

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %153, %135
  %155 = load i64, i64* %14, align 8
  %156 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  %157 = load i32, i32* @TRUE, align 4
  %158 = load i32, i32* @FALSE, align 4
  %159 = call i32 @print_vma(i64 %155, i8* %156, i32 %157, i32 %158)
  %160 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %161 = call i64 @append_type(%struct.pr_handle* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %154
  %164 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %165 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  %166 = call i64 @append_type(%struct.pr_handle* %164, i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %163, %154
  %169 = load i32, i32* @FALSE, align 4
  store i32 %169, i32* %8, align 4
  br label %182

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %170, %132
  %172 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %173 = call i64 @append_type(%struct.pr_handle* %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load %struct.pr_handle*, %struct.pr_handle** %16, align 8
  %177 = call i64 @indent_type(%struct.pr_handle* %176)
  %178 = icmp ne i64 %177, 0
  br label %179

179:                                              ; preds = %175, %171
  %180 = phi i1 [ false, %171 ], [ %178, %175 ]
  %181 = zext i1 %180 to i32
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %179, %168, %151, %127, %107, %99, %88, %81, %52, %42
  %183 = load i32, i32* %8, align 4
  ret i32 %183
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @append_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @substitute_type(%struct.pr_handle*, i32) #1

declare dso_local i8* @pop_type(%struct.pr_handle*) #1

declare dso_local i32 @pr_fix_visibility(%struct.pr_handle*, i32) #1

declare dso_local i32 @print_vma(i64, i8*, i32, i32) #1

declare dso_local i64 @indent_type(%struct.pr_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

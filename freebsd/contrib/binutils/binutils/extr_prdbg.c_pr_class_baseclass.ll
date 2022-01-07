; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_class_baseclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_class_baseclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"virtual \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"public \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"protected \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"private \00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"/* unknown visibility */ \00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c" /* bitpos \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" */\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i32)* @pr_class_baseclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pr_class_baseclass(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pr_handle*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [20 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.pr_handle*
  store %struct.pr_handle* %18, %struct.pr_handle** %10, align 8
  %19 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %20 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %25 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br label %30

30:                                               ; preds = %23, %4
  %31 = phi i1 [ false, %4 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %35 = call i32 @substitute_type(%struct.pr_handle* %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %5, align 8
  br label %221

39:                                               ; preds = %30
  %40 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %41 = call i8* @pop_type(%struct.pr_handle* %40)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %5, align 8
  br label %221

46:                                               ; preds = %39
  %47 = load i8*, i8** %11, align 8
  %48 = call i64 @CONST_STRNEQ(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 6
  store i8* %52, i8** %11, align 8
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @push_type(%struct.pr_handle* %54, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* @FALSE, align 8
  store i64 %59, i64* %5, align 8
  br label %221

60:                                               ; preds = %53
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %65 = call i32 @prepend_type(%struct.pr_handle* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* @FALSE, align 8
  store i64 %68, i64* %5, align 8
  br label %221

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %60
  %71 = load i32, i32* %9, align 4
  switch i32 %71, label %75 [
    i32 128, label %72
    i32 129, label %73
    i32 130, label %74
  ]

72:                                               ; preds = %70
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %76

73:                                               ; preds = %70
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %76

74:                                               ; preds = %70
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %76

75:                                               ; preds = %70
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %76

76:                                               ; preds = %75, %74, %73, %72
  %77 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @prepend_type(%struct.pr_handle* %77, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = load i64, i64* @FALSE, align 8
  store i64 %82, i64* %5, align 8
  br label %221

83:                                               ; preds = %76
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %83
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %89 = load i64, i64* @TRUE, align 8
  %90 = load i64, i64* @FALSE, align 8
  %91 = call i32 @print_vma(i64 %87, i8* %88, i64 %89, i64 %90)
  %92 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %93 = call i32 @append_type(%struct.pr_handle* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %97 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %98 = call i32 @append_type(%struct.pr_handle* %96, i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %102 = call i32 @append_type(%struct.pr_handle* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100, %95, %86
  %105 = load i64, i64* @FALSE, align 8
  store i64 %105, i64* %5, align 8
  br label %221

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %83
  %108 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %109 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @strchr(i8* %114, i8 signext 123)
  store i8* %115, i8** %14, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = icmp ne i8* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i8*, i8** %14, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 -1
  store i8* %121, i8** %14, align 8
  %122 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %123 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %15, align 8
  br label %129

129:                                              ; preds = %140, %107
  %130 = load i8*, i8** %15, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = icmp ne i8* %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load i8*, i8** %15, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 58
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %143

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139
  %141 = load i8*, i8** %15, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %15, align 8
  br label %129

143:                                              ; preds = %138, %129
  %144 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %145 = load i8*, i8** %15, align 8
  %146 = load i8*, i8** %14, align 8
  %147 = icmp eq i8* %145, %146
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %150 = call i32 @prepend_type(%struct.pr_handle* %144, i8* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %143
  %153 = load i64, i64* @FALSE, align 8
  store i64 %153, i64* %5, align 8
  br label %221

154:                                              ; preds = %143
  %155 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %156 = call i8* @pop_type(%struct.pr_handle* %155)
  store i8* %156, i8** %11, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i64, i64* @FALSE, align 8
  store i64 %160, i64* %5, align 8
  br label %221

161:                                              ; preds = %154
  %162 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %163 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i64 @strlen(i8* %166)
  %168 = load i8*, i8** %11, align 8
  %169 = call i64 @strlen(i8* %168)
  %170 = add nsw i64 %167, %169
  %171 = add nsw i64 %170, 1
  %172 = call i64 @xmalloc(i64 %171)
  %173 = inttoptr i64 %172 to i8*
  store i8* %173, i8** %16, align 8
  %174 = load i8*, i8** %16, align 8
  %175 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %176 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i8*, i8** %14, align 8
  %181 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %182 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %181, i32 0, i32 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = ptrtoint i8* %180 to i64
  %187 = ptrtoint i8* %185 to i64
  %188 = sub i64 %186, %187
  %189 = trunc i64 %188 to i32
  %190 = call i32 @memcpy(i8* %174, i8* %179, i32 %189)
  %191 = load i8*, i8** %16, align 8
  %192 = load i8*, i8** %14, align 8
  %193 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %194 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = ptrtoint i8* %192 to i64
  %199 = ptrtoint i8* %197 to i64
  %200 = sub i64 %198, %199
  %201 = getelementptr inbounds i8, i8* %191, i64 %200
  %202 = load i8*, i8** %11, align 8
  %203 = call i32 @strcpy(i8* %201, i8* %202)
  %204 = load i8*, i8** %16, align 8
  %205 = load i8*, i8** %14, align 8
  %206 = call i32 @strcat(i8* %204, i8* %205)
  %207 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %208 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @free(i8* %211)
  %213 = load i8*, i8** %16, align 8
  %214 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %215 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %214, i32 0, i32 0
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  store i8* %213, i8** %217, align 8
  %218 = load i8*, i8** %11, align 8
  %219 = call i32 @free(i8* %218)
  %220 = load i64, i64* @TRUE, align 8
  store i64 %220, i64* %5, align 8
  br label %221

221:                                              ; preds = %161, %159, %152, %104, %81, %67, %58, %44, %37
  %222 = load i64, i64* %5, align 8
  ret i64 %222
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @substitute_type(%struct.pr_handle*, i8*) #1

declare dso_local i8* @pop_type(%struct.pr_handle*) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i32 @push_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @prepend_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @print_vma(i64, i8*, i64, i64) #1

declare dso_local i32 @append_type(%struct.pr_handle*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_build_id_cache__add_s.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_build_id_cache__add_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@PATH_MAX = common dso_local global i64 0, align 8
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [47 x i8] c"Not caching a kptr_restrict'ed /proc/kallsyms\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VDSO__MAP_NAME = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%s/.build-id/%.2s\00", align 1
@X_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"../..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_id_cache__add_s(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i64, i64* @PATH_MAX, align 8
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call i8* @zalloc(i64 %21)
  store i8* %22, i8** %14, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call i8* @zalloc(i64 %23)
  store i8* %24, i8** %15, align 8
  store i32 -1, i32* %18, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %27, %5
  %31 = phi i1 [ true, %5 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %166

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  store i8* %41, i8** %13, align 8
  br label %45

42:                                               ; preds = %30
  %43 = load i8*, i8** %9, align 8
  %44 = call i8* @realpath(i8* %43, i32* null)
  store i8* %44, i8** %13, align 8
  br label %45

45:                                               ; preds = %42, %40
  %46 = load i8*, i8** %13, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %14, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %15, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48, %45
  br label %154

55:                                               ; preds = %51
  %56 = load i8*, i8** %14, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %19, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i8*, i8** @VDSO__MAP_NAME, align 8
  br label %69

67:                                               ; preds = %55
  %68 = load i8*, i8** %13, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i8* [ %66, %65 ], [ %68, %67 ]
  %71 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @scnprintf(i8* %56, i64 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %62, i8* %70)
  store i32 %71, i32* %17, align 4
  %72 = load i8*, i8** %14, align 8
  %73 = call i64 @mkdir_p(i8* %72, i32 493)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %154

76:                                               ; preds = %69
  %77 = load i8*, i8** %14, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i64, i64* %12, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 %81, %83
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @snprintf(i8* %80, i64 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = load i8*, i8** %14, align 8
  %88 = load i32, i32* @F_OK, align 4
  %89 = call i64 @access(i8* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %76
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i8*, i8** %14, align 8
  %96 = call i64 @copyfile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %154

99:                                               ; preds = %94
  br label %112

100:                                              ; preds = %91
  %101 = load i8*, i8** %13, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = call i64 @link(i8* %101, i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i8*, i8** %9, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = call i64 @copyfile(i8* %106, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %154

111:                                              ; preds = %105, %100
  br label %112

112:                                              ; preds = %111, %99
  br label %113

113:                                              ; preds = %112, %76
  %114 = load i8*, i8** %15, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 (i8*, i64, i8*, i8*, i8*, ...) @scnprintf(i8* %114, i64 %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %116, i8* %117)
  store i32 %118, i32* %17, align 4
  %119 = load i8*, i8** %15, align 8
  %120 = load i32, i32* @X_OK, align 4
  %121 = call i64 @access(i8* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %113
  %124 = load i8*, i8** %15, align 8
  %125 = call i64 @mkdir_p(i8* %124, i32 493)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %154

128:                                              ; preds = %123, %113
  %129 = load i8*, i8** %15, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i64, i64* %12, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = sub i64 %133, %135
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  %139 = call i32 @snprintf(i8* %132, i64 %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %138)
  %140 = load i8*, i8** %14, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 @strlen(i8* %141)
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  %145 = getelementptr inbounds i8, i8* %144, i64 -5
  store i8* %145, i8** %16, align 8
  %146 = load i8*, i8** %16, align 8
  %147 = call i32 @memcpy(i8* %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %148 = load i8*, i8** %16, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = call i64 @symlink(i8* %148, i8* %149)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %128
  store i32 0, i32* %18, align 4
  br label %153

153:                                              ; preds = %152, %128
  br label %154

154:                                              ; preds = %153, %127, %110, %98, %75, %54
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i8*, i8** %13, align 8
  %159 = call i32 @free(i8* %158)
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i8*, i8** %14, align 8
  %162 = call i32 @free(i8* %161)
  %163 = load i8*, i8** %15, align 8
  %164 = call i32 @free(i8* %163)
  %165 = load i32, i32* %18, align 4
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %160, %38
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local i8* @zalloc(i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i8* @realpath(i8*, i32*) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i8*, i8*, ...) #1

declare dso_local i64 @mkdir_p(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @copyfile(i8*, i8*) #1

declare dso_local i64 @link(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @symlink(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_finish_root_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_finish_root_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flist = type { i32, i64, %struct.flist*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@base_files = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"extern const struct %s gt_%s_\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"[];\0A\00", align 1
@NUM_BASE_FILES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"const struct %s * const %s[] = {\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"  gt_%s_\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"  NULL\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flist*, i8*, i8*, i8*, i8*)* @finish_root_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_root_table(%struct.flist* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.flist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.flist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.flist* %0, %struct.flist** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load %struct.flist*, %struct.flist** %6, align 8
  store %struct.flist* %18, %struct.flist** %11, align 8
  br label %19

19:                                               ; preds = %38, %5
  %20 = load %struct.flist*, %struct.flist** %11, align 8
  %21 = icmp ne %struct.flist* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = load %struct.flist*, %struct.flist** %11, align 8
  %24 = getelementptr inbounds %struct.flist, %struct.flist* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.flist*, %struct.flist** %11, align 8
  %29 = getelementptr inbounds %struct.flist, %struct.flist* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 (i32, i8*, ...) @oprintf(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.flist*, %struct.flist** %11, align 8
  %34 = getelementptr inbounds %struct.flist, %struct.flist* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @oprintf(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %27, %22
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.flist*, %struct.flist** %11, align 8
  %40 = getelementptr inbounds %struct.flist, %struct.flist* %39, i32 0, i32 2
  %41 = load %struct.flist*, %struct.flist** %40, align 8
  store %struct.flist* %41, %struct.flist** %11, align 8
  br label %19

42:                                               ; preds = %19
  %43 = load %struct.flist*, %struct.flist** %6, align 8
  store %struct.flist* %43, %struct.flist** %11, align 8
  br label %44

44:                                               ; preds = %96, %42
  %45 = load %struct.flist*, %struct.flist** %11, align 8
  %46 = icmp ne %struct.flist* %45, null
  br i1 %46, label %47, label %100

47:                                               ; preds = %44
  %48 = load %struct.flist*, %struct.flist** %11, align 8
  %49 = getelementptr inbounds %struct.flist, %struct.flist* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %95

52:                                               ; preds = %47
  %53 = load %struct.flist*, %struct.flist** %11, align 8
  %54 = getelementptr inbounds %struct.flist, %struct.flist* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @get_base_file_bitmap(i32 %55)
  store i32 %56, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %89, %52
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %60
  %65 = load i32*, i32** @base_files, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 (i32, i8*, ...) @oprintf(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %70, i8* %71)
  %73 = load i32*, i32** @base_files, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.flist*, %struct.flist** %11, align 8
  %79 = getelementptr inbounds %struct.flist, %struct.flist* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @put_mangled_filename(i32 %77, i32 %80)
  %82 = load i32*, i32** @base_files, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, ...) @oprintf(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %64, %60
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %12, align 4
  %93 = ashr i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %57

94:                                               ; preds = %57
  br label %95

95:                                               ; preds = %94, %47
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.flist*, %struct.flist** %11, align 8
  %98 = getelementptr inbounds %struct.flist, %struct.flist* %97, i32 0, i32 2
  %99 = load %struct.flist*, %struct.flist** %98, align 8
  store %struct.flist* %99, %struct.flist** %11, align 8
  br label %44

100:                                              ; preds = %44
  store i64 0, i64* %14, align 8
  br label %101

101:                                              ; preds = %113, %100
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* @NUM_BASE_FILES, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i32*, i32** @base_files, align 8
  %107 = load i64, i64* %14, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 (i32, i8*, ...) @oprintf(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %105
  %114 = load i64, i64* %14, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %14, align 8
  br label %101

116:                                              ; preds = %101
  %117 = load %struct.flist*, %struct.flist** %6, align 8
  store %struct.flist* %117, %struct.flist** %11, align 8
  br label %118

118:                                              ; preds = %171, %116
  %119 = load %struct.flist*, %struct.flist** %11, align 8
  %120 = icmp ne %struct.flist* %119, null
  br i1 %120, label %121, label %175

121:                                              ; preds = %118
  %122 = load %struct.flist*, %struct.flist** %11, align 8
  %123 = getelementptr inbounds %struct.flist, %struct.flist* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %170

126:                                              ; preds = %121
  %127 = load %struct.flist*, %struct.flist** %11, align 8
  %128 = getelementptr inbounds %struct.flist, %struct.flist* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @get_base_file_bitmap(i32 %129)
  store i32 %130, i32* %15, align 4
  %131 = load %struct.flist*, %struct.flist** %11, align 8
  %132 = getelementptr inbounds %struct.flist, %struct.flist* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  store i32 0, i32* %16, align 4
  br label %133

133:                                              ; preds = %164, %126
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %169

136:                                              ; preds = %133
  %137 = load i32, i32* %15, align 4
  %138 = and i32 %137, 1
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %163

140:                                              ; preds = %136
  %141 = load i32*, i32** @base_files, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 (i32, i8*, ...) @oprintf(i32 %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %146)
  %148 = load i32*, i32** @base_files, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.flist*, %struct.flist** %11, align 8
  %154 = getelementptr inbounds %struct.flist, %struct.flist* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @put_mangled_filename(i32 %152, i32 %155)
  %157 = load i32*, i32** @base_files, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, ...) @oprintf(i32 %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %163

163:                                              ; preds = %140, %136
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %15, align 4
  %168 = ashr i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %133

169:                                              ; preds = %133
  br label %170

170:                                              ; preds = %169, %121
  br label %171

171:                                              ; preds = %170
  %172 = load %struct.flist*, %struct.flist** %11, align 8
  %173 = getelementptr inbounds %struct.flist, %struct.flist* %172, i32 0, i32 2
  %174 = load %struct.flist*, %struct.flist** %173, align 8
  store %struct.flist* %174, %struct.flist** %11, align 8
  br label %118

175:                                              ; preds = %118
  store i64 0, i64* %17, align 8
  br label %176

176:                                              ; preds = %191, %175
  %177 = load i64, i64* %17, align 8
  %178 = load i64, i64* @NUM_BASE_FILES, align 8
  %179 = icmp ult i64 %177, %178
  br i1 %179, label %180, label %194

180:                                              ; preds = %176
  %181 = load i32*, i32** @base_files, align 8
  %182 = load i64, i64* %17, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, ...) @oprintf(i32 %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %186 = load i32*, i32** @base_files, align 8
  %187 = load i64, i64* %17, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i32, i8*, ...) @oprintf(i32 %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %191

191:                                              ; preds = %180
  %192 = load i64, i64* %17, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %17, align 8
  br label %176

194:                                              ; preds = %176
  ret void
}

declare dso_local i32 @oprintf(i32, i8*, ...) #1

declare dso_local i32 @get_base_file_bitmap(i32) #1

declare dso_local i32 @put_mangled_filename(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

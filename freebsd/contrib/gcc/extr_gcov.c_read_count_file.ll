; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_read_count_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_read_count_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function_info = type { i32, i32, i32, i32*, i32, %struct.function_info* }

@da_file_name = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s:cannot open data file, assuming not executed\0A\00", align 1
@no_data_file = common dso_local global i32 0, align 4
@GCOV_DATA_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s:not a gcov data file\0A\00", align 1
@GCOV_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%s:version '%.4s', prefer version '%.4s'\0A\00", align 1
@bbg_stamp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"%s:stamp mismatch with graph file\0A\00", align 1
@GCOV_TAG_OBJECT_SUMMARY = common dso_local global i32 0, align 4
@object_summary = common dso_local global i32 0, align 4
@GCOV_TAG_PROGRAM_SUMMARY = common dso_local global i32 0, align 4
@program_count = common dso_local global i32 0, align 4
@GCOV_TAG_FUNCTION = common dso_local global i32 0, align 4
@functions = common dso_local global %struct.function_info* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"%s:unknown function '%u'\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s:profile mismatch for '%s'\0A\00", align 1
@GCOV_COUNTER_ARCS = common dso_local global i32 0, align 4
@gcov_type = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"%s:overflowed\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s:corrupted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_count_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_count_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.function_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  %8 = alloca [4 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.function_info*, align 8
  store %struct.function_info* null, %struct.function_info** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @da_file_name, align 4
  %14 = call i32 @gcov_open(i32 %13, i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %0
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* @da_file_name, align 4
  %19 = call i32 (i32, i8*, i32, ...) @fnotice(i32 %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 1, i32* @no_data_file, align 4
  store i32 0, i32* %1, align 4
  br label %210

20:                                               ; preds = %0
  %21 = call i32 (...) @gcov_read_unsigned()
  %22 = load i32, i32* @GCOV_DATA_MAGIC, align 4
  %23 = call i32 @gcov_magic(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* @da_file_name, align 4
  %28 = call i32 (i32, i8*, i32, ...) @fnotice(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %199, %129, %53, %25
  %30 = call i32 (...) @gcov_close()
  store i32 1, i32* %1, align 4
  br label %210

31:                                               ; preds = %20
  %32 = call i32 (...) @gcov_read_unsigned()
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @GCOV_VERSION, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @GCOV_UNSIGNED2STRING(i8* %37, i32 %38)
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %41 = load i32, i32* @GCOV_VERSION, align 4
  %42 = call i32 @GCOV_UNSIGNED2STRING(i8* %40, i32 %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* @da_file_name, align 4
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %47 = call i32 (i32, i8*, i32, ...) @fnotice(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %44, i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %36, %31
  %49 = call i32 (...) @gcov_read_unsigned()
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @bbg_stamp, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* @da_file_name, align 4
  %56 = call i32 (i32, i8*, i32, ...) @fnotice(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  br label %29

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %207, %57
  %59 = call i32 (...) @gcov_read_unsigned()
  store i32 %59, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %208

61:                                               ; preds = %58
  %62 = call i32 (...) @gcov_read_unsigned()
  store i32 %62, i32* %9, align 4
  %63 = call i64 (...) @gcov_position()
  store i64 %63, i64* %10, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @GCOV_TAG_OBJECT_SUMMARY, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call i32 @gcov_read_summary(i32* @object_summary)
  br label %193

69:                                               ; preds = %61
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @GCOV_TAG_PROGRAM_SUMMARY, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @program_count, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @program_count, align 4
  br label %192

76:                                               ; preds = %69
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @GCOV_TAG_FUNCTION, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %138

80:                                               ; preds = %76
  %81 = call i32 (...) @gcov_read_unsigned()
  store i32 %81, i32* %11, align 4
  %82 = load %struct.function_info*, %struct.function_info** @functions, align 8
  store %struct.function_info* %82, %struct.function_info** %12, align 8
  %83 = load %struct.function_info*, %struct.function_info** %5, align 8
  %84 = icmp ne %struct.function_info* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.function_info*, %struct.function_info** %5, align 8
  %87 = getelementptr inbounds %struct.function_info, %struct.function_info* %86, i32 0, i32 5
  %88 = load %struct.function_info*, %struct.function_info** %87, align 8
  br label %90

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %85
  %91 = phi %struct.function_info* [ %88, %85 ], [ null, %89 ]
  store %struct.function_info* %91, %struct.function_info** %5, align 8
  br label %92

92:                                               ; preds = %114, %90
  %93 = load %struct.function_info*, %struct.function_info** %5, align 8
  %94 = icmp ne %struct.function_info* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %106

96:                                               ; preds = %92
  %97 = load %struct.function_info*, %struct.function_info** %12, align 8
  store %struct.function_info* %97, %struct.function_info** %5, align 8
  %98 = icmp ne %struct.function_info* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store %struct.function_info* null, %struct.function_info** %12, align 8
  br label %105

100:                                              ; preds = %96
  %101 = load i32, i32* @stderr, align 4
  %102 = load i32, i32* @da_file_name, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 (i32, i8*, i32, ...) @fnotice(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %102, i32 %103)
  br label %118

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %95
  %107 = load %struct.function_info*, %struct.function_info** %5, align 8
  %108 = getelementptr inbounds %struct.function_info, %struct.function_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %118

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.function_info*, %struct.function_info** %5, align 8
  %116 = getelementptr inbounds %struct.function_info, %struct.function_info* %115, i32 0, i32 5
  %117 = load %struct.function_info*, %struct.function_info** %116, align 8
  store %struct.function_info* %117, %struct.function_info** %5, align 8
  br label %92

118:                                              ; preds = %112, %100
  %119 = load %struct.function_info*, %struct.function_info** %5, align 8
  %120 = icmp ne %struct.function_info* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  br label %137

122:                                              ; preds = %118
  %123 = call i32 (...) @gcov_read_unsigned()
  %124 = load %struct.function_info*, %struct.function_info** %5, align 8
  %125 = getelementptr inbounds %struct.function_info, %struct.function_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %153, %128
  %130 = load i32, i32* @stderr, align 4
  %131 = load i32, i32* @da_file_name, align 4
  %132 = load %struct.function_info*, %struct.function_info** %5, align 8
  %133 = getelementptr inbounds %struct.function_info, %struct.function_info* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i32, i8*, i32, ...) @fnotice(i32 %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %131, i32 %134)
  br label %29

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %136, %121
  br label %191

138:                                              ; preds = %76
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @GCOV_COUNTER_ARCS, align 4
  %141 = call i32 @GCOV_TAG_FOR_COUNTER(i32 %140)
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %190

143:                                              ; preds = %138
  %144 = load %struct.function_info*, %struct.function_info** %5, align 8
  %145 = icmp ne %struct.function_info* %144, null
  br i1 %145, label %146, label %190

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.function_info*, %struct.function_info** %5, align 8
  %149 = getelementptr inbounds %struct.function_info, %struct.function_info* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @GCOV_TAG_COUNTER_LENGTH(i32 %150)
  %152 = icmp ne i32 %147, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %129

154:                                              ; preds = %146
  %155 = load %struct.function_info*, %struct.function_info** %5, align 8
  %156 = getelementptr inbounds %struct.function_info, %struct.function_info* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %167, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* @gcov_type, align 4
  %161 = load %struct.function_info*, %struct.function_info** %5, align 8
  %162 = getelementptr inbounds %struct.function_info, %struct.function_info* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32* @XCNEWVEC(i32 %160, i32 %163)
  %165 = load %struct.function_info*, %struct.function_info** %5, align 8
  %166 = getelementptr inbounds %struct.function_info, %struct.function_info* %165, i32 0, i32 3
  store i32* %164, i32** %166, align 8
  br label %167

167:                                              ; preds = %159, %154
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %186, %167
  %169 = load i32, i32* %2, align 4
  %170 = load %struct.function_info*, %struct.function_info** %5, align 8
  %171 = getelementptr inbounds %struct.function_info, %struct.function_info* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %169, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %168
  %175 = call i64 (...) @gcov_read_counter()
  %176 = load %struct.function_info*, %struct.function_info** %5, align 8
  %177 = getelementptr inbounds %struct.function_info, %struct.function_info* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %2, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %175
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %181, align 4
  br label %186

186:                                              ; preds = %174
  %187 = load i32, i32* %2, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %2, align 4
  br label %168

189:                                              ; preds = %168
  br label %190

190:                                              ; preds = %189, %143, %138
  br label %191

191:                                              ; preds = %190, %137
  br label %192

192:                                              ; preds = %191, %73
  br label %193

193:                                              ; preds = %192, %67
  %194 = load i64, i64* %10, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @gcov_sync(i64 %194, i32 %195)
  %197 = call i32 (...) @gcov_is_error()
  store i32 %197, i32* %6, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %193
  %200 = load i32, i32* @stderr, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp slt i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)
  %205 = load i32, i32* @da_file_name, align 4
  %206 = call i32 (i32, i8*, i32, ...) @fnotice(i32 %200, i8* %204, i32 %205)
  br label %29

207:                                              ; preds = %193
  br label %58

208:                                              ; preds = %58
  %209 = call i32 (...) @gcov_close()
  store i32 0, i32* %1, align 4
  br label %210

210:                                              ; preds = %208, %29, %16
  %211 = load i32, i32* %1, align 4
  ret i32 %211
}

declare dso_local i32 @gcov_open(i32, i32) #1

declare dso_local i32 @fnotice(i32, i8*, i32, ...) #1

declare dso_local i32 @gcov_magic(i32, i32) #1

declare dso_local i32 @gcov_read_unsigned(...) #1

declare dso_local i32 @gcov_close(...) #1

declare dso_local i32 @GCOV_UNSIGNED2STRING(i8*, i32) #1

declare dso_local i64 @gcov_position(...) #1

declare dso_local i32 @gcov_read_summary(i32*) #1

declare dso_local i32 @GCOV_TAG_FOR_COUNTER(i32) #1

declare dso_local i32 @GCOV_TAG_COUNTER_LENGTH(i32) #1

declare dso_local i32* @XCNEWVEC(i32, i32) #1

declare dso_local i64 @gcov_read_counter(...) #1

declare dso_local i32 @gcov_sync(i64, i32) #1

declare dso_local i32 @gcov_is_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

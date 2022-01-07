; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_sort.c_sort_dimension__add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_sort.c_sort_dimension__add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_dimension = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i64 }

@sort_dimensions = common dso_local global %struct.sort_dimension* null, align 8
@sort_parent = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@parent_regex = common dso_local global i32 0, align 4
@parent_pattern = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid regex: %s\0A%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sort__has_parent = common dso_local global i32 0, align 4
@sort_sym = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@sort_sym_from = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@sort_sym_to = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@sort__has_sym = common dso_local global i32 0, align 4
@sort__need_collapse = common dso_local global i32 0, align 4
@hist_entry__sort_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@SORT_PID = common dso_local global i32 0, align 4
@sort__first_dimension = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@SORT_COMM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"dso\00", align 1
@SORT_DSO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@SORT_SYM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@SORT_PARENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@SORT_CPU = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"symbol_from\00", align 1
@SORT_SYM_FROM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"symbol_to\00", align 1
@SORT_SYM_TO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"dso_from\00", align 1
@SORT_DSO_FROM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"dso_to\00", align 1
@SORT_DSO_TO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"mispredict\00", align 1
@SORT_MISPREDICT = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sort_dimension__add(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sort_dimension*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %194, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.sort_dimension*, %struct.sort_dimension** @sort_dimensions, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.sort_dimension* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %197

14:                                               ; preds = %9
  %15 = load %struct.sort_dimension*, %struct.sort_dimension** @sort_dimensions, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %15, i64 %17
  store %struct.sort_dimension* %18, %struct.sort_dimension** %5, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %21 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i64 @strncasecmp(i8* %19, i32 %22, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %194

28:                                               ; preds = %14
  %29 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %30 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp eq %struct.TYPE_5__* %31, @sort_parent
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load i32, i32* @parent_pattern, align 4
  %35 = load i32, i32* @REG_EXTENDED, align 4
  %36 = call i32 @regcomp(i32* @parent_regex, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load i32, i32* @BUFSIZ, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %7, align 8
  %43 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = trunc i64 %41 to i32
  %46 = call i32 @regerror(i32 %44, i32* @parent_regex, i8* %43, i32 %45)
  %47 = load i32, i32* @parent_pattern, align 4
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %47, i8* %43)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  %51 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %51)
  br label %200

52:                                               ; preds = %33
  store i32 1, i32* @sort__has_parent, align 4
  br label %70

53:                                               ; preds = %28
  %54 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %55 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = icmp eq %struct.TYPE_5__* %56, @sort_sym
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %60 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = icmp eq %struct.TYPE_5__* %61, @sort_sym_from
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %65 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = icmp eq %struct.TYPE_5__* %66, @sort_sym_to
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %58, %53
  store i32 1, i32* @sort__has_sym, align 4
  br label %69

69:                                               ; preds = %68, %63
  br label %70

70:                                               ; preds = %69, %52
  %71 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %72 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %200

76:                                               ; preds = %70
  %77 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %78 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 1, i32* @sort__need_collapse, align 4
  br label %84

84:                                               ; preds = %83, %76
  %85 = call i64 @list_empty(i32* @hist_entry__sort_list)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %186

87:                                               ; preds = %84
  %88 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %89 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @strcmp(i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @SORT_PID, align 4
  store i32 %94, i32* @sort__first_dimension, align 4
  br label %185

95:                                               ; preds = %87
  %96 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %97 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @strcmp(i32 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @SORT_COMM, align 4
  store i32 %102, i32* @sort__first_dimension, align 4
  br label %184

103:                                              ; preds = %95
  %104 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %105 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @strcmp(i32 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* @SORT_DSO, align 4
  store i32 %110, i32* @sort__first_dimension, align 4
  br label %183

111:                                              ; preds = %103
  %112 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %113 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @strcmp(i32 %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* @SORT_SYM, align 4
  store i32 %118, i32* @sort__first_dimension, align 4
  br label %182

119:                                              ; preds = %111
  %120 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %121 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @strcmp(i32 %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* @SORT_PARENT, align 4
  store i32 %126, i32* @sort__first_dimension, align 4
  br label %181

127:                                              ; preds = %119
  %128 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %129 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @strcmp(i32 %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* @SORT_CPU, align 4
  store i32 %134, i32* @sort__first_dimension, align 4
  br label %180

135:                                              ; preds = %127
  %136 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %137 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @strcmp(i32 %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %135
  %142 = load i32, i32* @SORT_SYM_FROM, align 4
  store i32 %142, i32* @sort__first_dimension, align 4
  br label %179

143:                                              ; preds = %135
  %144 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %145 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @strcmp(i32 %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %143
  %150 = load i32, i32* @SORT_SYM_TO, align 4
  store i32 %150, i32* @sort__first_dimension, align 4
  br label %178

151:                                              ; preds = %143
  %152 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %153 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @strcmp(i32 %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %151
  %158 = load i32, i32* @SORT_DSO_FROM, align 4
  store i32 %158, i32* @sort__first_dimension, align 4
  br label %177

159:                                              ; preds = %151
  %160 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %161 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @strcmp(i32 %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %159
  %166 = load i32, i32* @SORT_DSO_TO, align 4
  store i32 %166, i32* @sort__first_dimension, align 4
  br label %176

167:                                              ; preds = %159
  %168 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %169 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @strcmp(i32 %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %167
  %174 = load i32, i32* @SORT_MISPREDICT, align 4
  store i32 %174, i32* @sort__first_dimension, align 4
  br label %175

175:                                              ; preds = %173, %167
  br label %176

176:                                              ; preds = %175, %165
  br label %177

177:                                              ; preds = %176, %157
  br label %178

178:                                              ; preds = %177, %149
  br label %179

179:                                              ; preds = %178, %141
  br label %180

180:                                              ; preds = %179, %133
  br label %181

181:                                              ; preds = %180, %125
  br label %182

182:                                              ; preds = %181, %117
  br label %183

183:                                              ; preds = %182, %109
  br label %184

184:                                              ; preds = %183, %101
  br label %185

185:                                              ; preds = %184, %93
  br label %186

186:                                              ; preds = %185, %84
  %187 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %188 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %187, i32 0, i32 1
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = call i32 @list_add_tail(i32* %190, i32* @hist_entry__sort_list)
  %192 = load %struct.sort_dimension*, %struct.sort_dimension** %5, align 8
  %193 = getelementptr inbounds %struct.sort_dimension, %struct.sort_dimension* %192, i32 0, i32 0
  store i32 1, i32* %193, align 8
  store i32 0, i32* %2, align 4
  br label %200

194:                                              ; preds = %27
  %195 = load i32, i32* %4, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %4, align 4
  br label %9

197:                                              ; preds = %9
  %198 = load i32, i32* @ESRCH, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %197, %186, %75, %39
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @ARRAY_SIZE(%struct.sort_dimension*) #1

declare dso_local i64 @strncasecmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @regcomp(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

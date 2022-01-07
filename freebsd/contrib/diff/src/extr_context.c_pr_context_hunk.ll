; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_context.c_pr_context_hunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_context.c_pr_context_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.change = type { i64, i64, i64, i64, %struct.change* }

@files = common dso_local global %struct.TYPE_4__* null, align 8
@context = common dso_local global i64 0, align 8
@function_regexp = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@outfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"***************\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\0A*** \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" ****\0A\00", align 1
@OLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"--- \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" ----\0A\00", align 1
@NEW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.change*)* @pr_context_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_context_hunk(%struct.change* %0) #0 {
  %2 = alloca %struct.change*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.change*, align 8
  %13 = alloca %struct.change*, align 8
  store %struct.change* %0, %struct.change** %2, align 8
  %14 = load %struct.change*, %struct.change** %2, align 8
  %15 = call i32 @analyze_hunk(%struct.change* %14, i64* %3, i64* %4, i64* %5, i64* %6)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %233

19:                                               ; preds = %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @context, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @MAX(i64 %27, i64 %28)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @context, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @MAX(i64 %32, i64 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @context, align 8
  %41 = sub nsw i64 %39, %40
  %42 = icmp slt i64 %35, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %19
  %44 = load i64, i64* @context, align 8
  %45 = load i64, i64* %4, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %4, align 8
  br label %53

47:                                               ; preds = %19
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 1
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %47, %43
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @context, align 8
  %60 = sub nsw i64 %58, %59
  %61 = icmp slt i64 %54, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i64, i64* @context, align 8
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %6, align 8
  br label %72

66:                                               ; preds = %53
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, 1
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %66, %62
  store i8* null, i8** %9, align 8
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @function_regexp, i32 0, i32 0), align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %3, align 8
  %81 = call i8* @find_function(i32* %79, i64 %80)
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %75, %72
  %83 = call i32 (...) @begin_output()
  %84 = load i32*, i32** @outfile, align 8
  store i32* %84, i32** %10, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @fprintf(i32* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32*, i32** %10, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @print_context_function(i32* %90, i8* %91)
  br label %93

93:                                               ; preds = %89, %82
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @fprintf(i32* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 0
  %98 = load i64, i64* %3, align 8
  %99 = load i64, i64* %4, align 8
  %100 = call i32 @print_context_number_range(%struct.TYPE_4__* %97, i64 %98, i64 %99)
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @fprintf(i32* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @OLD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %163

107:                                              ; preds = %93
  %108 = load %struct.change*, %struct.change** %2, align 8
  store %struct.change* %108, %struct.change** %12, align 8
  %109 = load i64, i64* %3, align 8
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %159, %107
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* %4, align 8
  %113 = icmp sle i64 %111, %112
  br i1 %113, label %114, label %162

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %130, %114
  %116 = load %struct.change*, %struct.change** %12, align 8
  %117 = icmp ne %struct.change* %116, null
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load %struct.change*, %struct.change** %12, align 8
  %120 = getelementptr inbounds %struct.change, %struct.change* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.change*, %struct.change** %12, align 8
  %123 = getelementptr inbounds %struct.change, %struct.change* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = load i64, i64* %7, align 8
  %127 = icmp sle i64 %125, %126
  br label %128

128:                                              ; preds = %118, %115
  %129 = phi i1 [ false, %115 ], [ %127, %118 ]
  br i1 %129, label %130, label %134

130:                                              ; preds = %128
  %131 = load %struct.change*, %struct.change** %12, align 8
  %132 = getelementptr inbounds %struct.change, %struct.change* %131, i32 0, i32 4
  %133 = load %struct.change*, %struct.change** %132, align 8
  store %struct.change* %133, %struct.change** %12, align 8
  br label %115

134:                                              ; preds = %128
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %135 = load %struct.change*, %struct.change** %12, align 8
  %136 = icmp ne %struct.change* %135, null
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = load %struct.change*, %struct.change** %12, align 8
  %139 = getelementptr inbounds %struct.change, %struct.change* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %7, align 8
  %142 = icmp sle i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load %struct.change*, %struct.change** %12, align 8
  %145 = getelementptr inbounds %struct.change, %struct.change* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  store i8* %149, i8** %8, align 8
  br label %150

150:                                              ; preds = %143, %137, %134
  %151 = load i8*, i8** %8, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %7, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = call i32 @print_1_line(i8* %151, i32* %157)
  br label %159

159:                                              ; preds = %150
  %160 = load i64, i64* %7, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %7, align 8
  br label %110

162:                                              ; preds = %110
  br label %163

163:                                              ; preds = %162, %93
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @fprintf(i32* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 1
  %168 = load i64, i64* %5, align 8
  %169 = load i64, i64* %6, align 8
  %170 = call i32 @print_context_number_range(%struct.TYPE_4__* %167, i64 %168, i64 %169)
  %171 = load i32*, i32** %10, align 8
  %172 = call i32 @fprintf(i32* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @NEW, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %233

177:                                              ; preds = %163
  %178 = load %struct.change*, %struct.change** %2, align 8
  store %struct.change* %178, %struct.change** %13, align 8
  %179 = load i64, i64* %5, align 8
  store i64 %179, i64* %7, align 8
  br label %180

180:                                              ; preds = %229, %177
  %181 = load i64, i64* %7, align 8
  %182 = load i64, i64* %6, align 8
  %183 = icmp sle i64 %181, %182
  br i1 %183, label %184, label %232

184:                                              ; preds = %180
  br label %185

185:                                              ; preds = %200, %184
  %186 = load %struct.change*, %struct.change** %13, align 8
  %187 = icmp ne %struct.change* %186, null
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = load %struct.change*, %struct.change** %13, align 8
  %190 = getelementptr inbounds %struct.change, %struct.change* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.change*, %struct.change** %13, align 8
  %193 = getelementptr inbounds %struct.change, %struct.change* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %191, %194
  %196 = load i64, i64* %7, align 8
  %197 = icmp sle i64 %195, %196
  br label %198

198:                                              ; preds = %188, %185
  %199 = phi i1 [ false, %185 ], [ %197, %188 ]
  br i1 %199, label %200, label %204

200:                                              ; preds = %198
  %201 = load %struct.change*, %struct.change** %13, align 8
  %202 = getelementptr inbounds %struct.change, %struct.change* %201, i32 0, i32 4
  %203 = load %struct.change*, %struct.change** %202, align 8
  store %struct.change* %203, %struct.change** %13, align 8
  br label %185

204:                                              ; preds = %198
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %205 = load %struct.change*, %struct.change** %13, align 8
  %206 = icmp ne %struct.change* %205, null
  br i1 %206, label %207, label %220

207:                                              ; preds = %204
  %208 = load %struct.change*, %struct.change** %13, align 8
  %209 = getelementptr inbounds %struct.change, %struct.change* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %7, align 8
  %212 = icmp sle i64 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %207
  %214 = load %struct.change*, %struct.change** %13, align 8
  %215 = getelementptr inbounds %struct.change, %struct.change* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp sgt i64 %216, 0
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  store i8* %219, i8** %8, align 8
  br label %220

220:                                              ; preds = %213, %207, %204
  %221 = load i8*, i8** %8, align 8
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %7, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = call i32 @print_1_line(i8* %221, i32* %227)
  br label %229

229:                                              ; preds = %220
  %230 = load i64, i64* %7, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %7, align 8
  br label %180

232:                                              ; preds = %180
  br label %233

233:                                              ; preds = %18, %232, %163
  ret void
}

declare dso_local i32 @analyze_hunk(%struct.change*, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i8* @find_function(i32*, i64) #1

declare dso_local i32 @begin_output(...) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @print_context_function(i32*, i8*) #1

declare dso_local i32 @print_context_number_range(%struct.TYPE_4__*, i64, i64) #1

declare dso_local i32 @print_1_line(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

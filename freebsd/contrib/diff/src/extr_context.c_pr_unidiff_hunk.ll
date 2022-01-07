; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_context.c_pr_unidiff_hunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_context.c_pr_unidiff_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.change = type { i64, i64, i64, %struct.change* }

@files = common dso_local global %struct.TYPE_4__* null, align 8
@context = common dso_local global i64 0, align 8
@function_regexp = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@outfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"@@ -\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" @@\00", align 1
@initial_tab = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.change*)* @pr_unidiff_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_unidiff_hunk(%struct.change* %0) #0 {
  %2 = alloca %struct.change*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.change*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.change* %0, %struct.change** %2, align 8
  %13 = load %struct.change*, %struct.change** %2, align 8
  %14 = call i32 @analyze_hunk(%struct.change* %13, i64* %3, i64* %4, i64* %5, i64* %6)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %203

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @context, align 8
  %25 = sub nsw i64 %23, %24
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @MAX(i64 %25, i64 %26)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @context, align 8
  %30 = sub nsw i64 %28, %29
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @MAX(i64 %30, i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @context, align 8
  %39 = sub nsw i64 %37, %38
  %40 = icmp slt i64 %33, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %17
  %42 = load i64, i64* @context, align 8
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %4, align 8
  br label %51

45:                                               ; preds = %17
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 1
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @context, align 8
  %58 = sub nsw i64 %56, %57
  %59 = icmp slt i64 %52, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i64, i64* @context, align 8
  %62 = load i64, i64* %6, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %6, align 8
  br label %70

64:                                               ; preds = %51
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %64, %60
  store i8* null, i8** %11, align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @function_regexp, i32 0, i32 0), align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %3, align 8
  %79 = call i8* @find_function(i32* %77, i64 %78)
  store i8* %79, i8** %11, align 8
  br label %80

80:                                               ; preds = %73, %70
  %81 = call i32 (...) @begin_output()
  %82 = load i32*, i32** @outfile, align 8
  store i32* %82, i32** %12, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @fprintf(i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 0
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @print_unidiff_number_range(%struct.TYPE_4__* %86, i64 %87, i64 %88)
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @fprintf(i32* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 1
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @print_unidiff_number_range(%struct.TYPE_4__* %93, i64 %94, i64 %95)
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @fprintf(i32* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i8*, i8** %11, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %80
  %102 = load i32*, i32** %12, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @print_context_function(i32* %102, i8* %103)
  br label %105

105:                                              ; preds = %101, %80
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @putc(i8 signext 10, i32* %106)
  %108 = load %struct.change*, %struct.change** %2, align 8
  store %struct.change* %108, %struct.change** %10, align 8
  %109 = load i64, i64* %3, align 8
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %5, align 8
  store i64 %110, i64* %8, align 8
  br label %111

111:                                              ; preds = %202, %105
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %4, align 8
  %114 = icmp sle i64 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %6, align 8
  %118 = icmp sle i64 %116, %117
  br label %119

119:                                              ; preds = %115, %111
  %120 = phi i1 [ true, %111 ], [ %118, %115 ]
  br i1 %120, label %121, label %203

121:                                              ; preds = %119
  %122 = load %struct.change*, %struct.change** %10, align 8
  %123 = icmp ne %struct.change* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i64, i64* %7, align 8
  %126 = load %struct.change*, %struct.change** %10, align 8
  %127 = getelementptr inbounds %struct.change, %struct.change* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %125, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %124, %121
  %131 = load i64, i64* @initial_tab, align 8
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 9, i32 32
  %135 = trunc i32 %134 to i8
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @putc(i8 signext %135, i32* %136)
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* %7, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %7, align 8
  %144 = getelementptr inbounds i32, i32* %141, i64 %142
  %145 = call i32 @print_1_line(i32 0, i32* %144)
  %146 = load i64, i64* %8, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %8, align 8
  br label %202

148:                                              ; preds = %124
  %149 = load %struct.change*, %struct.change** %10, align 8
  %150 = getelementptr inbounds %struct.change, %struct.change* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %9, align 8
  br label %152

152:                                              ; preds = %164, %148
  %153 = load i64, i64* %9, align 8
  %154 = add nsw i64 %153, -1
  store i64 %154, i64* %9, align 8
  %155 = icmp ne i64 %153, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %152
  %157 = load i32*, i32** %12, align 8
  %158 = call i32 @putc(i8 signext 45, i32* %157)
  %159 = load i64, i64* @initial_tab, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32*, i32** %12, align 8
  %163 = call i32 @putc(i8 signext 9, i32* %162)
  br label %164

164:                                              ; preds = %161, %156
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* %7, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %7, align 8
  %171 = getelementptr inbounds i32, i32* %168, i64 %169
  %172 = call i32 @print_1_line(i32 0, i32* %171)
  br label %152

173:                                              ; preds = %152
  %174 = load %struct.change*, %struct.change** %10, align 8
  %175 = getelementptr inbounds %struct.change, %struct.change* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %9, align 8
  br label %177

177:                                              ; preds = %189, %173
  %178 = load i64, i64* %9, align 8
  %179 = add nsw i64 %178, -1
  store i64 %179, i64* %9, align 8
  %180 = icmp ne i64 %178, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %177
  %182 = load i32*, i32** %12, align 8
  %183 = call i32 @putc(i8 signext 43, i32* %182)
  %184 = load i64, i64* @initial_tab, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load i32*, i32** %12, align 8
  %188 = call i32 @putc(i8 signext 9, i32* %187)
  br label %189

189:                                              ; preds = %186, %181
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** @files, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* %8, align 8
  %195 = add nsw i64 %194, 1
  store i64 %195, i64* %8, align 8
  %196 = getelementptr inbounds i32, i32* %193, i64 %194
  %197 = call i32 @print_1_line(i32 0, i32* %196)
  br label %177

198:                                              ; preds = %177
  %199 = load %struct.change*, %struct.change** %10, align 8
  %200 = getelementptr inbounds %struct.change, %struct.change* %199, i32 0, i32 3
  %201 = load %struct.change*, %struct.change** %200, align 8
  store %struct.change* %201, %struct.change** %10, align 8
  br label %202

202:                                              ; preds = %198, %130
  br label %111

203:                                              ; preds = %16, %119
  ret void
}

declare dso_local i32 @analyze_hunk(%struct.change*, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i8* @find_function(i32*, i64) #1

declare dso_local i32 @begin_output(...) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @print_unidiff_number_range(%struct.TYPE_4__*, i64, i64) #1

declare dso_local i32 @print_context_function(i32*, i8*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @print_1_line(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

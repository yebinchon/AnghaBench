; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_find_variable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_find_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_finder = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32*, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Searching '%s' variable in context.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to find '%s' in this function.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.probe_finder*)* @find_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_variable(i32* %0, %struct.probe_finder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.probe_finder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.probe_finder* %1, %struct.probe_finder** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %11 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @is_c_varname(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %102, label %17

17:                                               ; preds = %2
  %18 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %19 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @strdup(i8* %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %26 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32* %24, i32** %28, align 8
  %29 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %30 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %206

38:                                               ; preds = %17
  %39 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %40 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %67

45:                                               ; preds = %38
  %46 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %47 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @strdup(i8* %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %54 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32* %52, i32** %56, align 8
  %57 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %58 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %45
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %206

66:                                               ; preds = %45
  br label %67

67:                                               ; preds = %66, %38
  %68 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %69 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %67
  %75 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %76 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @strdup(i8* %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %83 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %82, i32 0, i32 3
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32* %81, i32** %85, align 8
  %86 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %87 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %86, i32 0, i32 3
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %206

95:                                               ; preds = %74
  br label %101

96:                                               ; preds = %67
  %97 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %98 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %97, i32 0, i32 3
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %96, %95
  store i32 0, i32* %3, align 4
  br label %206

102:                                              ; preds = %2
  %103 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %104 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %121

109:                                              ; preds = %102
  %110 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %111 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @strdup(i8* %114)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %118 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %117, i32 0, i32 3
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32* %116, i32** %120, align 8
  br label %146

121:                                              ; preds = %102
  %122 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %123 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %126 = call i32 @synthesize_perf_probe_arg(%struct.TYPE_4__* %124, i8* %125, i32 32)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %3, align 4
  br label %206

131:                                              ; preds = %121
  %132 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %133 = call i8* @strchr(i8* %132, i8 signext 58)
  store i8* %133, i8** %8, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i8*, i8** %8, align 8
  store i8 95, i8* %137, align 1
  br label %138

138:                                              ; preds = %136, %131
  %139 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %140 = call i8* @strdup(i8* %139)
  %141 = bitcast i8* %140 to i32*
  %142 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %143 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %142, i32 0, i32 3
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i32* %141, i32** %145, align 8
  br label %146

146:                                              ; preds = %138, %109
  %147 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %148 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %147, i32 0, i32 3
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %206

156:                                              ; preds = %146
  %157 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %158 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %161)
  %163 = load i32*, i32** %4, align 8
  %164 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %165 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %164, i32 0, i32 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %170 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @die_find_variable_at(i32* %163, i8* %168, i32 %171, i32* %6)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %188, label %174

174:                                              ; preds = %156
  %175 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %176 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %175, i32 0, i32 1
  %177 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %178 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %177, i32 0, i32 0
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @die_find_variable_at(i32* %176, i8* %181, i32 0, i32* %6)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %174
  %185 = load i32, i32* @ENOENT, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %184, %174
  br label %188

188:                                              ; preds = %187, %156
  %189 = load i32, i32* %9, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %193 = call i32 @convert_variable(i32* %6, %struct.probe_finder* %192)
  store i32 %193, i32* %9, align 4
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i32, i32* %9, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load %struct.probe_finder*, %struct.probe_finder** %5, align 8
  %199 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %198, i32 0, i32 0
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @pr_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %202)
  br label %204

204:                                              ; preds = %197, %194
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %204, %153, %129, %101, %92, %63, %35
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @is_c_varname(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @synthesize_perf_probe_arg(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @die_find_variable_at(i32*, i8*, i32, i32*) #1

declare dso_local i32 @convert_variable(i32*, %struct.probe_finder*) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

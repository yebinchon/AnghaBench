; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_getjob_nonotfound.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_getjob_nonotfound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"No current job\00", align 1
@njobs = common dso_local global i32 0, align 4
@jobtab = common dso_local global %struct.job* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"%s: ambiguous\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.job* (i8*)* @getjob_nonotfound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.job* @getjob_nonotfound(i8* %0) #0 {
  %2 = alloca %struct.job*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.job*, align 8
  %6 = alloca %struct.job*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %20, label %156

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @is_digit(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = call i32 @number(i8* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @njobs, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.job*, %struct.job** @jobtab, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.job, %struct.job* %37, i64 %40
  %42 = getelementptr inbounds %struct.job, %struct.job* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.job*, %struct.job** @jobtab, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.job, %struct.job* %46, i64 %49
  store %struct.job* %50, %struct.job** %2, align 8
  br label %203

51:                                               ; preds = %36, %32, %26
  br label %155

52:                                               ; preds = %20
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 63
  br i1 %57, label %58, label %104

58:                                               ; preds = %52
  store %struct.job* null, %struct.job** %5, align 8
  %59 = load %struct.job*, %struct.job** @jobtab, align 8
  store %struct.job* %59, %struct.job** %6, align 8
  %60 = load i32, i32* @njobs, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %95, %58
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %9, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %61
  %66 = load %struct.job*, %struct.job** %6, align 8
  %67 = getelementptr inbounds %struct.job, %struct.job* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = load %struct.job*, %struct.job** %6, align 8
  %72 = getelementptr inbounds %struct.job, %struct.job* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %70
  %76 = load %struct.job*, %struct.job** %6, align 8
  %77 = getelementptr inbounds %struct.job, %struct.job* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = call i32* @strstr(i32 %81, i8* %83)
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %75
  %87 = load %struct.job*, %struct.job** %5, align 8
  %88 = icmp ne %struct.job* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i8*, i8** %3, align 8
  %91 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.job*, %struct.job** %6, align 8
  store %struct.job* %93, %struct.job** %5, align 8
  br label %94

94:                                               ; preds = %92, %75, %70, %65
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.job*, %struct.job** %6, align 8
  %97 = getelementptr inbounds %struct.job, %struct.job* %96, i32 1
  store %struct.job* %97, %struct.job** %6, align 8
  br label %61

98:                                               ; preds = %61
  %99 = load %struct.job*, %struct.job** %5, align 8
  %100 = icmp ne %struct.job* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load %struct.job*, %struct.job** %5, align 8
  store %struct.job* %102, %struct.job** %2, align 8
  br label %203

103:                                              ; preds = %98
  br label %154

104:                                              ; preds = %52
  %105 = load i8*, i8** %3, align 8
  %106 = call i64 @strlen(i8* %105)
  store i64 %106, i64* %7, align 8
  store %struct.job* null, %struct.job** %5, align 8
  %107 = load %struct.job*, %struct.job** @jobtab, align 8
  store %struct.job* %107, %struct.job** %6, align 8
  %108 = load i32, i32* @njobs, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %145, %104
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %9, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %148

113:                                              ; preds = %109
  %114 = load %struct.job*, %struct.job** %6, align 8
  %115 = getelementptr inbounds %struct.job, %struct.job* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %144

118:                                              ; preds = %113
  %119 = load %struct.job*, %struct.job** %6, align 8
  %120 = getelementptr inbounds %struct.job, %struct.job* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %118
  %124 = load %struct.job*, %struct.job** %6, align 8
  %125 = getelementptr inbounds %struct.job, %struct.job* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i8*, i8** %3, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i64, i64* %7, align 8
  %133 = sub i64 %132, 1
  %134 = call i64 @strncmp(i32 %129, i8* %131, i64 %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %123
  %137 = load %struct.job*, %struct.job** %5, align 8
  %138 = icmp ne %struct.job* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i8*, i8** %3, align 8
  %141 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.job*, %struct.job** %6, align 8
  store %struct.job* %143, %struct.job** %5, align 8
  br label %144

144:                                              ; preds = %142, %123, %118, %113
  br label %145

145:                                              ; preds = %144
  %146 = load %struct.job*, %struct.job** %6, align 8
  %147 = getelementptr inbounds %struct.job, %struct.job* %146, i32 1
  store %struct.job* %147, %struct.job** %6, align 8
  br label %109

148:                                              ; preds = %109
  %149 = load %struct.job*, %struct.job** %5, align 8
  %150 = icmp ne %struct.job* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load %struct.job*, %struct.job** %5, align 8
  store %struct.job* %152, %struct.job** %2, align 8
  br label %203

153:                                              ; preds = %148
  br label %154

154:                                              ; preds = %153, %103
  br label %155

155:                                              ; preds = %154, %51
  br label %202

156:                                              ; preds = %14
  %157 = load i8*, i8** %3, align 8
  %158 = call i64 @is_number(i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %201

160:                                              ; preds = %156
  %161 = load i8*, i8** %3, align 8
  %162 = call i32 @number(i8* %161)
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %8, align 8
  %164 = load %struct.job*, %struct.job** @jobtab, align 8
  store %struct.job* %164, %struct.job** %6, align 8
  %165 = load i32, i32* @njobs, align 4
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %197, %160
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %9, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %200

170:                                              ; preds = %166
  %171 = load %struct.job*, %struct.job** %6, align 8
  %172 = getelementptr inbounds %struct.job, %struct.job* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %170
  %176 = load %struct.job*, %struct.job** %6, align 8
  %177 = getelementptr inbounds %struct.job, %struct.job* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %175
  %181 = load %struct.job*, %struct.job** %6, align 8
  %182 = getelementptr inbounds %struct.job, %struct.job* %181, i32 0, i32 2
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = load %struct.job*, %struct.job** %6, align 8
  %185 = getelementptr inbounds %struct.job, %struct.job* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %8, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %180
  %195 = load %struct.job*, %struct.job** %6, align 8
  store %struct.job* %195, %struct.job** %2, align 8
  br label %203

196:                                              ; preds = %180, %175, %170
  br label %197

197:                                              ; preds = %196
  %198 = load %struct.job*, %struct.job** %6, align 8
  %199 = getelementptr inbounds %struct.job, %struct.job* %198, i32 1
  store %struct.job* %199, %struct.job** %6, align 8
  br label %166

200:                                              ; preds = %166
  br label %201

201:                                              ; preds = %200, %156
  br label %202

202:                                              ; preds = %201, %155
  store %struct.job* null, %struct.job** %2, align 8
  br label %203

203:                                              ; preds = %202, %194, %151, %101, %45
  %204 = load %struct.job*, %struct.job** %2, align 8
  ret %struct.job* %204
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @is_digit(i8 signext) #1

declare dso_local i32 @number(i8*) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i64) #1

declare dso_local i64 @is_number(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

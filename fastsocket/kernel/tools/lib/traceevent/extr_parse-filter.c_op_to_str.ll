; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_op_to_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_op_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i32 }
%struct.filter_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"(%s) %s (%s)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.event_filter*, %struct.filter_arg*)* @op_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @op_to_str(%struct.event_filter* %0, %struct.filter_arg* %1) #0 {
  %3 = alloca %struct.event_filter*, align 8
  %4 = alloca %struct.filter_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.event_filter* %0, %struct.event_filter** %3, align 8
  store %struct.filter_arg* %1, %struct.filter_arg** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %13 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %14 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %219 [
    i32 130, label %17
    i32 128, label %18
    i32 129, label %169
  ]

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %18

18:                                               ; preds = %2, %17
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %24 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %25 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @arg_to_str(%struct.event_filter* %23, i32 %27)
  store i8* %28, i8** %6, align 8
  %29 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %30 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %31 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @arg_to_str(%struct.event_filter* %29, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %22
  br label %220

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %52

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %46
  br label %52

52:                                               ; preds = %51, %45
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 1, i32* %10, align 4
  br label %63

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %57
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %9, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %125

66:                                               ; preds = %63
  %67 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %68 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 130
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72, %66
  %76 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %77 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 128
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81, %72
  %85 = load i8*, i8** %6, align 8
  store i8* %85, i8** %5, align 8
  store i8* null, i8** %6, align 8
  br label %220

86:                                               ; preds = %81, %75
  %87 = load i32, i32* %10, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %124

89:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  %90 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %91 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %112 [
    i32 130, label %94
    i32 128, label %103
  ]

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i1 [ false, %94 ], [ %99, %97 ]
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %11, align 4
  br label %113

103:                                              ; preds = %89
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i1 [ true, %103 ], [ %108, %106 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %11, align 4
  br label %113

112:                                              ; preds = %89
  br label %113

113:                                              ; preds = %112, %109, %100
  %114 = call i8* @malloc_or_die(i32 6)
  store i8* %114, i8** %5, align 8
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @strcpy(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %123

120:                                              ; preds = %113
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @strcpy(i8* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %117
  br label %220

124:                                              ; preds = %86
  br label %125

125:                                              ; preds = %124, %63
  %126 = load i32, i32* %10, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %125
  %129 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %130 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 130
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %134, %128
  %138 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %139 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 128
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143, %134
  %147 = load i8*, i8** %7, align 8
  store i8* %147, i8** %5, align 8
  store i8* null, i8** %7, align 8
  br label %220

148:                                              ; preds = %143, %137
  %149 = load i8*, i8** %6, align 8
  store i8* %149, i8** %5, align 8
  store i8* null, i8** %6, align 8
  br label %220

150:                                              ; preds = %125
  %151 = load i8*, i8** %6, align 8
  %152 = call i64 @strlen(i8* %151)
  %153 = load i8*, i8** %7, align 8
  %154 = call i64 @strlen(i8* %153)
  %155 = add nsw i64 %152, %154
  %156 = load i8*, i8** %8, align 8
  %157 = call i64 @strlen(i8* %156)
  %158 = add nsw i64 %155, %157
  %159 = add nsw i64 %158, 10
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i8* @malloc_or_die(i32 %161)
  store i8* %162, i8** %5, align 8
  %163 = load i8*, i8** %5, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i8*, i8** %6, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %163, i32 %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %165, i8* %166, i8* %167)
  br label %220

169:                                              ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  %170 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %171 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %172 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @arg_to_str(%struct.event_filter* %170, i32 %174)
  store i8* %175, i8** %7, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %169
  br label %220

179:                                              ; preds = %169
  %180 = load i8*, i8** %7, align 8
  %181 = call i32 @strcmp(i8* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  store i32 1, i32* %10, align 4
  br label %190

184:                                              ; preds = %179
  %185 = load i8*, i8** %7, align 8
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store i32 0, i32* %10, align 4
  br label %189

189:                                              ; preds = %188, %184
  br label %190

190:                                              ; preds = %189, %183
  %191 = load i32, i32* %10, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %190
  %194 = call i8* @malloc_or_die(i32 6)
  store i8* %194, i8** %5, align 8
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i8*, i8** %5, align 8
  %199 = call i32 @strcpy(i8* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %203

200:                                              ; preds = %193
  %201 = load i8*, i8** %5, align 8
  %202 = call i32 @strcpy(i8* %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %197
  br label %220

204:                                              ; preds = %190
  %205 = load i8*, i8** %7, align 8
  %206 = call i64 @strlen(i8* %205)
  %207 = load i8*, i8** %8, align 8
  %208 = call i64 @strlen(i8* %207)
  %209 = add nsw i64 %206, %208
  %210 = add nsw i64 %209, 3
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %12, align 4
  %213 = call i8* @malloc_or_die(i32 %212)
  store i8* %213, i8** %5, align 8
  %214 = load i8*, i8** %5, align 8
  %215 = load i32, i32* %12, align 4
  %216 = load i8*, i8** %8, align 8
  %217 = load i8*, i8** %7, align 8
  %218 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %214, i32 %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %216, i8* %217)
  br label %220

219:                                              ; preds = %2
  br label %220

220:                                              ; preds = %219, %204, %203, %178, %150, %148, %146, %123, %84, %40
  %221 = load i8*, i8** %6, align 8
  %222 = call i32 @free(i8* %221)
  %223 = load i8*, i8** %7, align 8
  %224 = call i32 @free(i8* %223)
  %225 = load i8*, i8** %5, align 8
  ret i8* %225
}

declare dso_local i8* @arg_to_str(%struct.event_filter*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @malloc_or_die(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

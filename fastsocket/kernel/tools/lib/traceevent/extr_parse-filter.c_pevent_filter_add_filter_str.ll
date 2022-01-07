; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_add_filter_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_add_filter_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { %struct.pevent* }
%struct.pevent = type { i64 }
%struct.event_list = type { %struct.TYPE_2__*, %struct.event_list* }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"No filter found\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"No event found under '%s.%s'\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"No event found under '%s'\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" '%s: %s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pevent_filter_add_filter_str(%struct.event_filter* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_filter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.pevent*, align 8
  %9 = alloca %struct.event_list*, align 8
  %10 = alloca %struct.event_list*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.event_filter* %0, %struct.event_filter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %21 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %22 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %21, i32 0, i32 0
  %23 = load %struct.pevent*, %struct.pevent** %22, align 8
  store %struct.pevent* %23, %struct.pevent** %8, align 8
  store %struct.event_list* null, %struct.event_list** %10, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %17, align 4
  %24 = call i32 @pevent_buffer_init(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %25 = load i8**, i8*** %7, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i8**, i8*** %7, align 8
  store i8* null, i8** %28, align 8
  br label %29

29:                                               ; preds = %27, %3
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 58)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %18, align 4
  br label %44

41:                                               ; preds = %29
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strlen(i8* %42)
  store i32 %43, i32* %18, align 4
  br label %44

44:                                               ; preds = %41, %34
  br label %45

45:                                               ; preds = %138, %44
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 44)
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load i8*, i8** %11, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53, %50
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %18, align 4
  br label %78

64:                                               ; preds = %53, %45
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %18, align 4
  br label %77

74:                                               ; preds = %64
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @strlen(i8* %75)
  store i32 %76, i32* %18, align 4
  br label %77

77:                                               ; preds = %74, %67
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i8* @malloc_or_die(i32 %80)
  store i8* %81, i8** %13, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @memcpy(i8* %82, i8* %83, i32 %84)
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %12, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %78
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %12, align 8
  br label %95

95:                                               ; preds = %92, %78
  %96 = load i8*, i8** %12, align 8
  store i8* %96, i8** %6, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = call i8* @strtok_r(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %16)
  store i8* %98, i8** %15, align 8
  %99 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %16)
  store i8* %99, i8** %14, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load i8**, i8*** %7, align 8
  %104 = call i32 (i8**, i8*, ...) @show_error(i8** %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.event_list*, %struct.event_list** %10, align 8
  %106 = call i32 @free_events(%struct.event_list* %105)
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @free(i8* %107)
  store i32 -1, i32* %4, align 4
  br label %208

109:                                              ; preds = %95
  %110 = load %struct.pevent*, %struct.pevent** %8, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = call i32 @strim(i8* %111)
  %113 = load i8*, i8** %14, align 8
  %114 = call i32 @strim(i8* %113)
  %115 = call i32 @find_event(%struct.pevent* %110, %struct.event_list** %10, i32 %112, i32 %114)
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %19, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %109
  %119 = load i8*, i8** %14, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i8**, i8*** %7, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = load i8*, i8** %14, align 8
  %125 = call i32 (i8**, i8*, ...) @show_error(i8** %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %123, i8* %124)
  br label %130

126:                                              ; preds = %118
  %127 = load i8**, i8*** %7, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = call i32 (i8**, i8*, ...) @show_error(i8** %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %126, %121
  %131 = load %struct.event_list*, %struct.event_list** %10, align 8
  %132 = call i32 @free_events(%struct.event_list* %131)
  %133 = load i8*, i8** %13, align 8
  %134 = call i32 @free(i8* %133)
  store i32 -1, i32* %4, align 4
  br label %208

135:                                              ; preds = %109
  %136 = load i8*, i8** %13, align 8
  %137 = call i32 @free(i8* %136)
  br label %138

138:                                              ; preds = %135
  %139 = load i8*, i8** %6, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %45, label %141

141:                                              ; preds = %138
  %142 = load i8*, i8** %11, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i8*, i8** %11, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %11, align 8
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.event_list*, %struct.event_list** %10, align 8
  store %struct.event_list* %148, %struct.event_list** %9, align 8
  br label %149

149:                                              ; preds = %190, %147
  %150 = load %struct.event_list*, %struct.event_list** %9, align 8
  %151 = icmp ne %struct.event_list* %150, null
  br i1 %151, label %152, label %194

152:                                              ; preds = %149
  %153 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %154 = load %struct.event_list*, %struct.event_list** %9, align 8
  %155 = getelementptr inbounds %struct.event_list, %struct.event_list* %154, i32 0, i32 0
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = load i8**, i8*** %7, align 8
  %159 = call i32 @filter_event(%struct.event_filter* %153, %struct.TYPE_2__* %156, i8* %157, i8** %158)
  store i32 %159, i32* %19, align 4
  %160 = load i32, i32* %19, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  %163 = load i32, i32* %19, align 4
  store i32 %163, i32* %17, align 4
  br label %164

164:                                              ; preds = %162, %152
  %165 = load i32, i32* %19, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %164
  %168 = load %struct.pevent*, %struct.pevent** %8, align 8
  %169 = getelementptr inbounds %struct.pevent, %struct.pevent* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %189

172:                                              ; preds = %167
  %173 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %174 = load %struct.event_list*, %struct.event_list** %9, align 8
  %175 = getelementptr inbounds %struct.event_list, %struct.event_list* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @pevent_filter_make_string(%struct.event_filter* %173, i32 %178)
  store i8* %179, i8** %20, align 8
  %180 = load %struct.event_list*, %struct.event_list** %9, align 8
  %181 = getelementptr inbounds %struct.event_list, %struct.event_list* %180, i32 0, i32 0
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** %20, align 8
  %186 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %184, i8* %185)
  %187 = load i8*, i8** %20, align 8
  %188 = call i32 @free(i8* %187)
  br label %189

189:                                              ; preds = %172, %167, %164
  br label %190

190:                                              ; preds = %189
  %191 = load %struct.event_list*, %struct.event_list** %9, align 8
  %192 = getelementptr inbounds %struct.event_list, %struct.event_list* %191, i32 0, i32 1
  %193 = load %struct.event_list*, %struct.event_list** %192, align 8
  store %struct.event_list* %193, %struct.event_list** %9, align 8
  br label %149

194:                                              ; preds = %149
  %195 = load %struct.event_list*, %struct.event_list** %10, align 8
  %196 = call i32 @free_events(%struct.event_list* %195)
  %197 = load i32, i32* %17, align 4
  %198 = icmp sge i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load %struct.pevent*, %struct.pevent** %8, align 8
  %201 = getelementptr inbounds %struct.pevent, %struct.pevent* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = call i32 @exit(i32 0) #3
  unreachable

206:                                              ; preds = %199, %194
  %207 = load i32, i32* %17, align 4
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %206, %130, %102
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @pevent_buffer_init(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc_or_die(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @show_error(i8**, i8*, ...) #1

declare dso_local i32 @free_events(%struct.event_list*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @find_event(%struct.pevent*, %struct.event_list**, i32, i32) #1

declare dso_local i32 @strim(i8*) #1

declare dso_local i32 @filter_event(%struct.event_filter*, %struct.TYPE_2__*, i8*, i8**) #1

declare dso_local i8* @pevent_filter_make_string(%struct.event_filter*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

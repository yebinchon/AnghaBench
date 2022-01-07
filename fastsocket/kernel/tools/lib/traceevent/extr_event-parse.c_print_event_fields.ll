; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_print_event_fields.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_print_event_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.event_format = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.format_field* }
%struct.format_field = type { i64, i32, i32, i32, %struct.format_field* }

@.str = private unnamed_addr constant [5 x i8] c" %s=\00", align 1
@FIELD_IS_ARRAY = common dso_local global i32 0, align 4
@FIELD_IS_DYNAMIC = common dso_local global i32 0, align 4
@FIELD_IS_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ARRAY[\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@FIELD_IS_POINTER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@FIELD_IS_SIGNED = common dso_local global i32 0, align 4
@FIELD_IS_LONG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%1d\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_seq*, i8*, i32, %struct.event_format*)* @print_event_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_event_fields(%struct.trace_seq* %0, i8* %1, i32 %2, %struct.event_format* %3) #0 {
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.event_format*, align 8
  %9 = alloca %struct.format_field*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.event_format* %3, %struct.event_format** %8, align 8
  %14 = load %struct.event_format*, %struct.event_format** %8, align 8
  %15 = getelementptr inbounds %struct.event_format, %struct.event_format* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.format_field*, %struct.format_field** %16, align 8
  store %struct.format_field* %17, %struct.format_field** %9, align 8
  br label %18

18:                                               ; preds = %210, %4
  %19 = load %struct.format_field*, %struct.format_field** %9, align 8
  %20 = icmp ne %struct.format_field* %19, null
  br i1 %20, label %21, label %214

21:                                               ; preds = %18
  %22 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %23 = load %struct.format_field*, %struct.format_field** %9, align 8
  %24 = getelementptr inbounds %struct.format_field, %struct.format_field* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.format_field*, %struct.format_field** %9, align 8
  %28 = getelementptr inbounds %struct.format_field, %struct.format_field* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FIELD_IS_ARRAY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %122

33:                                               ; preds = %21
  %34 = load %struct.format_field*, %struct.format_field** %9, align 8
  %35 = getelementptr inbounds %struct.format_field, %struct.format_field* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.format_field*, %struct.format_field** %9, align 8
  %38 = getelementptr inbounds %struct.format_field, %struct.format_field* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load %struct.format_field*, %struct.format_field** %9, align 8
  %41 = getelementptr inbounds %struct.format_field, %struct.format_field* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FIELD_IS_DYNAMIC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %33
  %47 = load %struct.event_format*, %struct.event_format** %8, align 8
  %48 = getelementptr inbounds %struct.event_format, %struct.event_format* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr i8, i8* %50, i64 %52
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @pevent_read_number(i32 %49, i8* %53, i32 %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = lshr i32 %58, 16
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, 65535
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %46, %33
  %63 = load %struct.format_field*, %struct.format_field** %9, align 8
  %64 = getelementptr inbounds %struct.format_field, %struct.format_field* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FIELD_IS_STRING, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr i8, i8* %70, i64 %72
  %74 = load i32, i32* %12, align 4
  %75 = call i64 @is_printable_array(i8* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  br label %121

84:                                               ; preds = %69, %62
  %85 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %86 = call i32 @trace_seq_puts(%struct.trace_seq* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %109, %84
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %96 = call i32 @trace_seq_puts(%struct.trace_seq* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i32, i32* %13, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %13, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %87

112:                                              ; preds = %87
  %113 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %114 = call i32 @trace_seq_putc(%struct.trace_seq* %113, i8 signext 93)
  %115 = load i32, i32* @FIELD_IS_STRING, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.format_field*, %struct.format_field** %9, align 8
  %118 = getelementptr inbounds %struct.format_field, %struct.format_field* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %112, %77
  br label %210

122:                                              ; preds = %21
  %123 = load %struct.event_format*, %struct.event_format** %8, align 8
  %124 = getelementptr inbounds %struct.event_format, %struct.event_format* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = load %struct.format_field*, %struct.format_field** %9, align 8
  %128 = getelementptr inbounds %struct.format_field, %struct.format_field* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr i8, i8* %126, i64 %130
  %132 = load %struct.format_field*, %struct.format_field** %9, align 8
  %133 = getelementptr inbounds %struct.format_field, %struct.format_field* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @pevent_read_number(i32 %125, i8* %131, i32 %134)
  store i64 %135, i64* %10, align 8
  %136 = load %struct.format_field*, %struct.format_field** %9, align 8
  %137 = getelementptr inbounds %struct.format_field, %struct.format_field* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @FIELD_IS_POINTER, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %122
  %143 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %144 = load i64, i64* %10, align 8
  %145 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %144)
  br label %209

146:                                              ; preds = %122
  %147 = load %struct.format_field*, %struct.format_field** %9, align 8
  %148 = getelementptr inbounds %struct.format_field, %struct.format_field* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @FIELD_IS_SIGNED, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %192

153:                                              ; preds = %146
  %154 = load %struct.format_field*, %struct.format_field** %9, align 8
  %155 = getelementptr inbounds %struct.format_field, %struct.format_field* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  switch i32 %156, label %187 [
    i32 4, label %157
    i32 2, label %175
    i32 1, label %181
  ]

157:                                              ; preds = %153
  %158 = load %struct.format_field*, %struct.format_field** %9, align 8
  %159 = getelementptr inbounds %struct.format_field, %struct.format_field* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @FIELD_IS_LONG, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %157
  %165 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %166 = load i64, i64* %10, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %167)
  br label %174

169:                                              ; preds = %157
  %170 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %171 = load i64, i64* %10, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %169, %164
  br label %191

175:                                              ; preds = %153
  %176 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %177 = load i64, i64* %10, align 8
  %178 = trunc i64 %177 to i16
  %179 = sext i16 %178 to i32
  %180 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %179)
  br label %191

181:                                              ; preds = %153
  %182 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %183 = load i64, i64* %10, align 8
  %184 = trunc i64 %183 to i8
  %185 = sext i8 %184 to i32
  %186 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %185)
  br label %191

187:                                              ; preds = %153
  %188 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %189 = load i64, i64* %10, align 8
  %190 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 %189)
  br label %191

191:                                              ; preds = %187, %181, %175, %174
  br label %208

192:                                              ; preds = %146
  %193 = load %struct.format_field*, %struct.format_field** %9, align 8
  %194 = getelementptr inbounds %struct.format_field, %struct.format_field* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @FIELD_IS_LONG, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %192
  %200 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %201 = load i64, i64* %10, align 8
  %202 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %201)
  br label %207

203:                                              ; preds = %192
  %204 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %205 = load i64, i64* %10, align 8
  %206 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %205)
  br label %207

207:                                              ; preds = %203, %199
  br label %208

208:                                              ; preds = %207, %191
  br label %209

209:                                              ; preds = %208, %142
  br label %210

210:                                              ; preds = %209, %121
  %211 = load %struct.format_field*, %struct.format_field** %9, align 8
  %212 = getelementptr inbounds %struct.format_field, %struct.format_field* %211, i32 0, i32 4
  %213 = load %struct.format_field*, %struct.format_field** %212, align 8
  store %struct.format_field* %213, %struct.format_field** %9, align 8
  br label %18

214:                                              ; preds = %18
  ret void
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i64 @pevent_read_number(i32, i8*, i32) #1

declare dso_local i64 @is_printable_array(i8*, i32) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

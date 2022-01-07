; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_convert_variable_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_convert_variable_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_arg = type { i32*, %struct.probe_trace_arg_ref* }
%struct.probe_trace_arg_ref = type { %struct.probe_trace_arg_ref* }

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"b%d@%d/%zd\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to get a type information of %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s type is %s.\0A\00", align 1
@DW_TAG_pointer_type = common dso_local global i32 0, align 4
@DW_TAG_array_type = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"Failed to cast into string: %s(%s) is not a pointer nor array.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to get a type information.\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Out of memory error\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"Failed to cast into string: %s is not (unsigned) char *.\0A\00", align 1
@MAX_BASIC_TYPE_BITS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [47 x i8] c"%s exceeds max-bitwidth. Cut down to %d bits.\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"Failed to convert variable type: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.probe_trace_arg*, i8*)* @convert_variable_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_variable_type(i32* %0, %struct.probe_trace_arg* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.probe_trace_arg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.probe_trace_arg_ref**, align 8
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.probe_trace_arg* %1, %struct.probe_trace_arg** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %6, align 8
  %16 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %15, i32 0, i32 1
  store %struct.probe_trace_arg_ref** %16, %struct.probe_trace_arg_ref*** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strdup(i8* %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %6, align 8
  %28 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %6, align 8
  %30 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  br label %37

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 0, %36 ]
  store i32 %38, i32* %4, align 4
  br label %218

39:                                               ; preds = %19, %3
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @dwarf_bitsize(i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @dwarf_bitoffset(i32* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @dwarf_bytesize(i32* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %44
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %218

57:                                               ; preds = %51
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %59 = load i32, i32* %11, align 4
  %60 = trunc i32 %59 to i8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @BYTES_TO_BITS(i32 %62)
  %64 = call i32 (i8*, i32, i8*, i8, i32, ...) @snprintf(i8* %58, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8 signext %60, i32 %61, i32 %63)
  store i32 %64, i32* %14, align 4
  br label %186

65:                                               ; preds = %39
  %66 = load i32*, i32** %5, align 8
  %67 = call i32* @die_get_real_type(i32* %66, i32* %9)
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @dwarf_diename(i32* %70)
  %72 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %218

75:                                               ; preds = %65
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @dwarf_diename(i32* %76)
  %78 = call i32 @dwarf_diename(i32* %9)
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i8*, i8** %7, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %161

82:                                               ; preds = %75
  %83 = load i8*, i8** %7, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %161

86:                                               ; preds = %82
  %87 = call i32 @dwarf_tag(i32* %9)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @DW_TAG_pointer_type, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @DW_TAG_array_type, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @dwarf_diename(i32* %96)
  %98 = call i32 @dwarf_diename(i32* %9)
  %99 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %218

102:                                              ; preds = %91, %86
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @DW_TAG_pointer_type, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %102
  %107 = call i32* @die_get_real_type(i32* %9, i32* %9)
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* @ENOENT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %218

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %118, %113
  %115 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %8, align 8
  %116 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %115, align 8
  %117 = icmp ne %struct.probe_trace_arg_ref* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %8, align 8
  %120 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %119, align 8
  %121 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %120, i32 0, i32 0
  store %struct.probe_trace_arg_ref** %121, %struct.probe_trace_arg_ref*** %8, align 8
  br label %114

122:                                              ; preds = %114
  %123 = call %struct.probe_trace_arg_ref* @zalloc(i32 8)
  %124 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %8, align 8
  store %struct.probe_trace_arg_ref* %123, %struct.probe_trace_arg_ref** %124, align 8
  %125 = load %struct.probe_trace_arg_ref**, %struct.probe_trace_arg_ref*** %8, align 8
  %126 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %125, align 8
  %127 = icmp eq %struct.probe_trace_arg_ref* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %218

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %102
  %134 = call i32 @die_compare_name(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %133
  %137 = call i32 @die_compare_name(i32* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %136
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @dwarf_diename(i32* %140)
  %142 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %218

145:                                              ; preds = %136, %133
  %146 = load i8*, i8** %7, align 8
  %147 = call i8* @strdup(i8* %146)
  %148 = bitcast i8* %147 to i32*
  %149 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %6, align 8
  %150 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %149, i32 0, i32 0
  store i32* %148, i32** %150, align 8
  %151 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %6, align 8
  %152 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %145
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  br label %159

158:                                              ; preds = %145
  br label %159

159:                                              ; preds = %158, %155
  %160 = phi i32 [ %157, %155 ], [ 0, %158 ]
  store i32 %160, i32* %4, align 4
  br label %218

161:                                              ; preds = %82, %75
  %162 = call i32 @dwarf_bytesize(i32* %9)
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i32 0, i32* %4, align 4
  br label %218

166:                                              ; preds = %161
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @BYTES_TO_BITS(i32 %167)
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* @MAX_BASIC_TYPE_BITS, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = call i32 @dwarf_diename(i32* %9)
  %174 = load i32, i32* @MAX_BASIC_TYPE_BITS, align 4
  %175 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 %173, i32 %174)
  %176 = load i32, i32* @MAX_BASIC_TYPE_BITS, align 4
  store i32 %176, i32* %14, align 4
  br label %177

177:                                              ; preds = %172, %166
  %178 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %179 = call i64 @die_is_signed_type(i32* %9)
  %180 = icmp ne i64 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 115, i32 117
  %183 = trunc i32 %182 to i8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 (i8*, i32, i8*, i8, i32, ...) @snprintf(i8* %178, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8 signext %183, i32 %184)
  store i32 %185, i32* %14, align 4
  br label %186

186:                                              ; preds = %177, %57
  %187 = load i32, i32* %14, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %14, align 4
  %191 = icmp sge i32 %190, 16
  br i1 %191, label %192, label %204

192:                                              ; preds = %189, %186
  %193 = load i32, i32* %14, align 4
  %194 = icmp sge i32 %193, 16
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* @E2BIG, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i32, i32* %14, align 4
  %200 = sub nsw i32 0, %199
  %201 = call i32 @strerror(i32 %200)
  %202 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* %14, align 4
  store i32 %203, i32* %4, align 4
  br label %218

204:                                              ; preds = %189
  %205 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %206 = call i8* @strdup(i8* %205)
  %207 = bitcast i8* %206 to i32*
  %208 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %6, align 8
  %209 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %208, i32 0, i32 0
  store i32* %207, i32** %209, align 8
  %210 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %6, align 8
  %211 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = icmp eq i32* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %204
  %215 = load i32, i32* @ENOMEM, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %4, align 4
  br label %218

217:                                              ; preds = %204
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %217, %214, %198, %165, %159, %139, %128, %109, %95, %69, %54, %37
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @dwarf_bitsize(i32*) #1

declare dso_local i32 @dwarf_bitoffset(i32*) #1

declare dso_local i32 @dwarf_bytesize(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, i32, ...) #1

declare dso_local i32 @BYTES_TO_BITS(i32) #1

declare dso_local i32* @die_get_real_type(i32*, i32*) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @dwarf_diename(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @dwarf_tag(i32*) #1

declare dso_local %struct.probe_trace_arg_ref* @zalloc(i32) #1

declare dso_local i32 @die_compare_name(i32*, i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i64 @die_is_signed_type(i32*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

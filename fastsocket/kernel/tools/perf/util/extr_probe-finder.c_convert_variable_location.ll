; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_convert_variable_location.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_convert_variable_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.probe_trace_arg = type { i32*, i32* }

@DW_AT_external = common dso_local global i32 0, align 4
@DW_AT_location = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DW_OP_addr = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@DW_OP_fbreg = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@DW_OP_breg0 = common dso_local global i64 0, align 8
@DW_OP_breg31 = common dso_local global i64 0, align 8
@DW_OP_reg0 = common dso_local global i64 0, align 8
@DW_OP_reg31 = common dso_local global i64 0, align 8
@DW_OP_bregx = common dso_local global i64 0, align 8
@DW_OP_regx = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"DW_OP %x is not supported.\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Mapping for the register number %u missing on this architecture.\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_4__*, %struct.probe_trace_arg*)* @convert_variable_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_variable_location(i32* %0, i32 %1, %struct.TYPE_4__* %2, %struct.probe_trace_arg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.probe_trace_arg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store %struct.probe_trace_arg* %3, %struct.probe_trace_arg** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @DW_AT_external, align 4
  %20 = call i32* @dwarf_attr(i32* %18, i32 %19, i32* %10)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %45

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @DW_AT_location, align 4
  %26 = call i32* @dwarf_attr(i32* %24, i32 %25, i32* %10)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @dwarf_getlocation_addr(i32* %10, i32 %29, %struct.TYPE_4__** %11, i64* %12, i32 1)
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %12, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %28, %23
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %229

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DW_OP_addr, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %88

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %9, align 8
  %47 = icmp ne %struct.probe_trace_arg* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %229

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = call i8* @dwarf_diename(i32* %50)
  %52 = call i32 @strlen(i8* %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = add nsw i32 %53, 2
  %55 = call i32* @zalloc(i32 %54)
  %56 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %9, align 8
  %57 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %9, align 8
  %59 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %229

65:                                               ; preds = %49
  %66 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %9, align 8
  %67 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, 2
  %71 = load i32*, i32** %6, align 8
  %72 = call i8* @dwarf_diename(i32* %71)
  %73 = call i32 @snprintf(i32* %68, i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* %14, align 4
  %75 = zext i32 %74 to i64
  %76 = call i8* @alloc_trace_arg_ref(i64 %75)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %9, align 8
  %79 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %9, align 8
  %81 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %65
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %229

87:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %229

88:                                               ; preds = %38
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DW_OP_fbreg, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = icmp eq %struct.TYPE_4__* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @ENOTSUP, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %229

100:                                              ; preds = %94
  store i32 1, i32* %15, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %14, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 0
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %11, align 8
  br label %106

106:                                              ; preds = %100, %88
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DW_OP_breg0, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %106
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @DW_OP_breg31, align 8
  %117 = icmp sle i64 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DW_OP_breg0, align 8
  %123 = sub nsw i64 %121, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %13, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %184

130:                                              ; preds = %112, %106
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @DW_OP_reg0, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @DW_OP_reg31, align 8
  %141 = icmp sle i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @DW_OP_reg0, align 8
  %147 = sub nsw i64 %145, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %13, align 4
  br label %183

149:                                              ; preds = %136, %130
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @DW_OP_bregx, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %149
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %13, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %14, align 4
  %163 = add i32 %162, %161
  store i32 %163, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %182

164:                                              ; preds = %149
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @DW_OP_regx, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %13, align 4
  br label %181

174:                                              ; preds = %164
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %177)
  %179 = load i32, i32* @ENOTSUP, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %5, align 4
  br label %229

181:                                              ; preds = %170
  br label %182

182:                                              ; preds = %181, %155
  br label %183

183:                                              ; preds = %182, %142
  br label %184

184:                                              ; preds = %183, %118
  %185 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %9, align 8
  %186 = icmp ne %struct.probe_trace_arg* %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %184
  store i32 0, i32* %5, align 4
  br label %229

188:                                              ; preds = %184
  %189 = load i32, i32* %13, align 4
  %190 = call i8* @get_arch_regstr(i32 %189)
  store i8* %190, i8** %16, align 8
  %191 = load i8*, i8** %16, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @pr_warning(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* @ERANGE, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %5, align 4
  br label %229

198:                                              ; preds = %188
  %199 = load i8*, i8** %16, align 8
  %200 = call i32* @strdup(i8* %199)
  %201 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %9, align 8
  %202 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %201, i32 0, i32 1
  store i32* %200, i32** %202, align 8
  %203 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %9, align 8
  %204 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = icmp eq i32* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %198
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %5, align 4
  br label %229

210:                                              ; preds = %198
  %211 = load i32, i32* %15, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %210
  %214 = load i32, i32* %14, align 4
  %215 = zext i32 %214 to i64
  %216 = call i8* @alloc_trace_arg_ref(i64 %215)
  %217 = bitcast i8* %216 to i32*
  %218 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %9, align 8
  %219 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %218, i32 0, i32 0
  store i32* %217, i32** %219, align 8
  %220 = load %struct.probe_trace_arg*, %struct.probe_trace_arg** %9, align 8
  %221 = getelementptr inbounds %struct.probe_trace_arg, %struct.probe_trace_arg* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = icmp eq i32* %222, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %213
  %225 = load i32, i32* @ENOMEM, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %5, align 4
  br label %229

227:                                              ; preds = %213
  br label %228

228:                                              ; preds = %227, %210
  store i32 0, i32* %5, align 4
  br label %229

229:                                              ; preds = %228, %224, %207, %193, %187, %174, %97, %87, %84, %62, %48, %35
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local i32* @dwarf_attr(i32*, i32, i32*) #1

declare dso_local i64 @dwarf_getlocation_addr(i32*, i32, %struct.TYPE_4__**, i64*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @dwarf_diename(i32*) #1

declare dso_local i32* @zalloc(i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*) #1

declare dso_local i8* @alloc_trace_arg_ref(i64) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i8* @get_arch_regstr(i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i8*, i64, %struct.module* }
%struct.buffer = type { i64 }
%struct.ext_sym_list = type { i8*, %struct.ext_sym_list* }

@.str = private unnamed_addr constant [19 x i8] c"i:I:e:cmsSo:awM:K:\00", align 1
@optarg = common dso_local global i8* null, align 8
@external_module = common dso_local global i32 0, align 4
@cross_build = common dso_local global i32 0, align 4
@modversions = common dso_local global i32 0, align 4
@all_versions = common dso_local global i32 0, align 4
@vmlinux_section_warnings = common dso_local global i32 0, align 4
@sec_mismatch_verbose = common dso_local global i64 0, align 8
@warn_unresolved = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@modules = common dso_local global %struct.module* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s.mod.c\00", align 1
@sec_mismatch_count = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [124 x i8] c"modpost: Found %d section mismatch(es).\0ATo see full details build your kernel with:\0A'make CONFIG_DEBUG_SECTION_MISMATCH=y'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.buffer, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext_sym_list*, align 8
  %16 = alloca %struct.ext_sym_list*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = bitcast %struct.buffer* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 8, i1 false)
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store %struct.ext_sym_list* null, %struct.ext_sym_list** %16, align 8
  br label %21

21:                                               ; preds = %56, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %13, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %54 [
    i32 105, label %28
    i32 73, label %30
    i32 99, label %32
    i32 101, label %33
    i32 109, label %43
    i32 111, label %44
    i32 97, label %46
    i32 115, label %47
    i32 83, label %48
    i32 119, label %49
    i32 77, label %50
    i32 75, label %52
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %8, align 8
  br label %56

30:                                               ; preds = %26
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %9, align 8
  store i32 1, i32* @external_module, align 4
  br label %56

32:                                               ; preds = %26
  store i32 1, i32* @cross_build, align 4
  br label %56

33:                                               ; preds = %26
  store i32 1, i32* @external_module, align 4
  %34 = call i32 @malloc(i32 16)
  %35 = call %struct.ext_sym_list* @NOFAIL(i32 %34)
  store %struct.ext_sym_list* %35, %struct.ext_sym_list** %15, align 8
  %36 = load %struct.ext_sym_list*, %struct.ext_sym_list** %16, align 8
  %37 = load %struct.ext_sym_list*, %struct.ext_sym_list** %15, align 8
  %38 = getelementptr inbounds %struct.ext_sym_list, %struct.ext_sym_list* %37, i32 0, i32 1
  store %struct.ext_sym_list* %36, %struct.ext_sym_list** %38, align 8
  %39 = load i8*, i8** @optarg, align 8
  %40 = load %struct.ext_sym_list*, %struct.ext_sym_list** %15, align 8
  %41 = getelementptr inbounds %struct.ext_sym_list, %struct.ext_sym_list* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ext_sym_list*, %struct.ext_sym_list** %15, align 8
  store %struct.ext_sym_list* %42, %struct.ext_sym_list** %16, align 8
  br label %56

43:                                               ; preds = %26
  store i32 1, i32* @modversions, align 4
  br label %56

44:                                               ; preds = %26
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** %10, align 8
  br label %56

46:                                               ; preds = %26
  store i32 1, i32* @all_versions, align 4
  br label %56

47:                                               ; preds = %26
  store i32 0, i32* @vmlinux_section_warnings, align 4
  br label %56

48:                                               ; preds = %26
  store i64 0, i64* @sec_mismatch_verbose, align 8
  br label %56

49:                                               ; preds = %26
  store i32 1, i32* @warn_unresolved, align 4
  br label %56

50:                                               ; preds = %26
  %51 = load i8*, i8** @optarg, align 8
  store i8* %51, i8** %12, align 8
  br label %56

52:                                               ; preds = %26
  %53 = load i8*, i8** @optarg, align 8
  store i8* %53, i8** %11, align 8
  br label %56

54:                                               ; preds = %26
  %55 = call i32 @exit(i32 1) #5
  unreachable

56:                                               ; preds = %52, %50, %49, %48, %47, %46, %44, %43, %33, %32, %30, %28
  br label %21

57:                                               ; preds = %21
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @read_dump(i8* %61, i32 1)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @read_dump(i8* %67, i32 0)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %73, %69
  %71 = load %struct.ext_sym_list*, %struct.ext_sym_list** %16, align 8
  %72 = icmp ne %struct.ext_sym_list* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.ext_sym_list*, %struct.ext_sym_list** %16, align 8
  %75 = getelementptr inbounds %struct.ext_sym_list, %struct.ext_sym_list* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @read_dump(i8* %76, i32 0)
  %78 = load %struct.ext_sym_list*, %struct.ext_sym_list** %16, align 8
  %79 = getelementptr inbounds %struct.ext_sym_list, %struct.ext_sym_list* %78, i32 0, i32 1
  %80 = load %struct.ext_sym_list*, %struct.ext_sym_list** %79, align 8
  store %struct.ext_sym_list* %80, %struct.ext_sym_list** %15, align 8
  %81 = load %struct.ext_sym_list*, %struct.ext_sym_list** %16, align 8
  %82 = call i32 @free(%struct.ext_sym_list* %81)
  %83 = load %struct.ext_sym_list*, %struct.ext_sym_list** %15, align 8
  store %struct.ext_sym_list* %83, %struct.ext_sym_list** %16, align 8
  br label %70

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %89, %84
  %86 = load i32, i32* @optind, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* @optind, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @optind, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8*, i8** %90, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @read_symbols(i8* %95)
  br label %85

97:                                               ; preds = %85
  %98 = load %struct.module*, %struct.module** @modules, align 8
  store %struct.module* %98, %struct.module** %6, align 8
  br label %99

99:                                               ; preds = %111, %97
  %100 = load %struct.module*, %struct.module** %6, align 8
  %101 = icmp ne %struct.module* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load %struct.module*, %struct.module** %6, align 8
  %104 = getelementptr inbounds %struct.module, %struct.module* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %111

108:                                              ; preds = %102
  %109 = load %struct.module*, %struct.module** %6, align 8
  %110 = call i32 @check_exports(%struct.module* %109)
  br label %111

111:                                              ; preds = %108, %107
  %112 = load %struct.module*, %struct.module** %6, align 8
  %113 = getelementptr inbounds %struct.module, %struct.module* %112, i32 0, i32 2
  %114 = load %struct.module*, %struct.module** %113, align 8
  store %struct.module* %114, %struct.module** %6, align 8
  br label %99

115:                                              ; preds = %99
  store i32 0, i32* %14, align 4
  %116 = load %struct.module*, %struct.module** @modules, align 8
  store %struct.module* %116, %struct.module** %6, align 8
  br label %117

117:                                              ; preds = %164, %115
  %118 = load %struct.module*, %struct.module** %6, align 8
  %119 = icmp ne %struct.module* %118, null
  br i1 %119, label %120, label %168

120:                                              ; preds = %117
  %121 = load %struct.module*, %struct.module** %6, align 8
  %122 = getelementptr inbounds %struct.module, %struct.module* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @strlen(i8* %123)
  %125 = add nsw i32 %124, 10
  %126 = zext i32 %125 to i64
  %127 = call i8* @llvm.stacksave()
  store i8* %127, i8** %17, align 8
  %128 = alloca i8, i64 %126, align 16
  store i64 %126, i64* %18, align 8
  %129 = load %struct.module*, %struct.module** %6, align 8
  %130 = getelementptr inbounds %struct.module, %struct.module* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %120
  store i32 14, i32* %19, align 4
  br label %160

134:                                              ; preds = %120
  %135 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load %struct.module*, %struct.module** %6, align 8
  %137 = call i32 @add_header(%struct.buffer* %7, %struct.module* %136)
  %138 = load %struct.module*, %struct.module** %6, align 8
  %139 = getelementptr inbounds %struct.module, %struct.module* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @add_staging_flag(%struct.buffer* %7, i8* %140)
  %142 = load %struct.module*, %struct.module** %6, align 8
  %143 = call i32 @add_versions(%struct.buffer* %7, %struct.module* %142)
  %144 = load i32, i32* %14, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %14, align 4
  %146 = load %struct.module*, %struct.module** %6, align 8
  %147 = load %struct.module*, %struct.module** @modules, align 8
  %148 = call i32 @add_depends(%struct.buffer* %7, %struct.module* %146, %struct.module* %147)
  %149 = load %struct.module*, %struct.module** %6, align 8
  %150 = call i32 @add_moddevtable(%struct.buffer* %7, %struct.module* %149)
  %151 = load %struct.module*, %struct.module** %6, align 8
  %152 = call i32 @add_srcversion(%struct.buffer* %7, %struct.module* %151)
  %153 = load %struct.module*, %struct.module** %6, align 8
  %154 = call i32 @add_rheldata(%struct.buffer* %7, %struct.module* %153)
  %155 = load %struct.module*, %struct.module** %6, align 8
  %156 = getelementptr inbounds %struct.module, %struct.module* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @sprintf(i8* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %157)
  %159 = call i32 @write_if_changed(%struct.buffer* %7, i8* %128)
  store i32 0, i32* %19, align 4
  br label %160

160:                                              ; preds = %134, %133
  %161 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i32, i32* %19, align 4
  switch i32 %162, label %197 [
    i32 0, label %163
    i32 14, label %164
  ]

163:                                              ; preds = %160
  br label %164

164:                                              ; preds = %163, %160
  %165 = load %struct.module*, %struct.module** %6, align 8
  %166 = getelementptr inbounds %struct.module, %struct.module* %165, i32 0, i32 2
  %167 = load %struct.module*, %struct.module** %166, align 8
  store %struct.module* %167, %struct.module** %6, align 8
  br label %117

168:                                              ; preds = %117
  %169 = load i8*, i8** %10, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i8*, i8** %10, align 8
  %173 = call i32 @write_dump(i8* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i64, i64* @sec_mismatch_count, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load i64, i64* @sec_mismatch_verbose, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i64, i64* @sec_mismatch_count, align 8
  %182 = call i32 @warn(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.2, i64 0, i64 0), i64 %181)
  br label %183

183:                                              ; preds = %180, %177, %174
  %184 = load i8*, i8** %11, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i8*, i8** %11, align 8
  %188 = call i32 @read_markers(i8* %187)
  br label %189

189:                                              ; preds = %186, %183
  %190 = load i8*, i8** %12, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i8*, i8** %12, align 8
  %194 = call i32 @write_markers(i8* %193)
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i32, i32* %14, align 4
  ret i32 %196

197:                                              ; preds = %160
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local %struct.ext_sym_list* @NOFAIL(i32) #2

declare dso_local i32 @malloc(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @read_dump(i8*, i32) #2

declare dso_local i32 @free(%struct.ext_sym_list*) #2

declare dso_local i32 @read_symbols(i8*) #2

declare dso_local i32 @check_exports(%struct.module*) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

declare dso_local i32 @add_header(%struct.buffer*, %struct.module*) #2

declare dso_local i32 @add_staging_flag(%struct.buffer*, i8*) #2

declare dso_local i32 @add_versions(%struct.buffer*, %struct.module*) #2

declare dso_local i32 @add_depends(%struct.buffer*, %struct.module*, %struct.module*) #2

declare dso_local i32 @add_moddevtable(%struct.buffer*, %struct.module*) #2

declare dso_local i32 @add_srcversion(%struct.buffer*, %struct.module*) #2

declare dso_local i32 @add_rheldata(%struct.buffer*, %struct.module*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @write_if_changed(%struct.buffer*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

declare dso_local i32 @write_dump(i8*) #2

declare dso_local i32 @warn(i8*, i64) #2

declare dso_local i32 @read_markers(i8*) #2

declare dso_local i32 @write_markers(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

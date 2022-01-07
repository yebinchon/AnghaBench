; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_debuginfo__find_probe_point.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_debuginfo__find_probe_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debuginfo = type { i64, i32 }
%struct.perf_probe_point = type { i32, i64, i32*, i32* }

@.str = private unnamed_addr constant [50 x i8] c"Failed to find debug information for address %lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debuginfo__find_probe_point(%struct.debuginfo* %0, i64 %1, %struct.perf_probe_point* %2) #0 {
  %4 = alloca %struct.debuginfo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.perf_probe_point*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.debuginfo* %0, %struct.debuginfo** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.perf_probe_point* %2, %struct.perf_probe_point** %6, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %19 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %5, align 8
  %23 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %24 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %28 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  %31 = call i32 @dwarf_addrdie(i32 %25, i64 %30, i32* %7)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %3
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @pr_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %17, align 4
  br label %155

38:                                               ; preds = %3
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @cu_find_lineinfo(i32* %7, i64 %39, i8** %12, i32* %16)
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @die_find_realfunc(i32* %7, i64 %41, i32* %8)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %88

44:                                               ; preds = %38
  %45 = call i8* @dwarf_diename(i32* %8)
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = call i64 @dwarf_entrypc(i32* %8, i64* %11)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = call i64 @dwarf_decl_line(i32* %8, i32* %15)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48, %44
  br label %89

55:                                               ; preds = %51
  %56 = load i8*, i8** %14, align 8
  store i8* %56, i8** %13, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %16, align 4
  br label %87

62:                                               ; preds = %55
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @die_find_inlinefunc(i32* %8, i64 %63, i32* %9)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = call i64 @dwarf_entrypc(i32* %9, i64* %10)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @die_get_call_lineno(i32* %9)
  store i32 %74, i32* %16, align 4
  br label %85

75:                                               ; preds = %69, %66
  %76 = call i8* @dwarf_diename(i32* %9)
  store i8* %76, i8** %14, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = call i64 @dwarf_decl_line(i32* %8, i32* %15)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i8*, i8** %14, align 8
  store i8* %83, i8** %13, align 8
  br label %84

84:                                               ; preds = %82, %79, %75
  br label %85

85:                                               ; preds = %84, %73
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %86, %60
  br label %88

88:                                               ; preds = %87, %38
  br label %89

89:                                               ; preds = %88, %54
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %15, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %97 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %108

98:                                               ; preds = %89
  %99 = load i8*, i8** %13, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* %11, align 8
  %104 = sub i64 %102, %103
  %105 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %106 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %98
  br label %108

108:                                              ; preds = %107, %92
  %109 = load i8*, i8** %13, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load i8*, i8** %13, align 8
  %113 = call i8* @strdup(i8* %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %116 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %115, i32 0, i32 2
  store i32* %114, i32** %116, align 8
  %117 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %118 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %17, align 4
  br label %155

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124, %108
  %126 = load i8*, i8** %12, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %154

128:                                              ; preds = %125
  %129 = load i8*, i8** %12, align 8
  %130 = call i8* @strdup(i8* %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %133 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %132, i32 0, i32 3
  store i32* %131, i32** %133, align 8
  %134 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %135 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %153

138:                                              ; preds = %128
  %139 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %140 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %145 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @free(i32* %146)
  %148 = load %struct.perf_probe_point*, %struct.perf_probe_point** %6, align 8
  %149 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %148, i32 0, i32 2
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %143, %138
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %17, align 4
  br label %155

153:                                              ; preds = %128
  br label %154

154:                                              ; preds = %153, %125
  br label %155

155:                                              ; preds = %154, %150, %121, %33
  %156 = load i32, i32* %17, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load i8*, i8** %12, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i8*, i8** %13, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %161, %158
  store i32 1, i32* %17, align 4
  br label %165

165:                                              ; preds = %164, %161, %155
  %166 = load i32, i32* %17, align 4
  ret i32 %166
}

declare dso_local i32 @dwarf_addrdie(i32, i64, i32*) #1

declare dso_local i32 @pr_warning(i8*, i64) #1

declare dso_local i32 @cu_find_lineinfo(i32*, i64, i8**, i32*) #1

declare dso_local i64 @die_find_realfunc(i32*, i64, i32*) #1

declare dso_local i8* @dwarf_diename(i32*) #1

declare dso_local i64 @dwarf_entrypc(i32*, i64*) #1

declare dso_local i64 @dwarf_decl_line(i32*, i32*) #1

declare dso_local i64 @die_find_inlinefunc(i32*, i64, i32*) #1

declare dso_local i32 @die_get_call_lineno(i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

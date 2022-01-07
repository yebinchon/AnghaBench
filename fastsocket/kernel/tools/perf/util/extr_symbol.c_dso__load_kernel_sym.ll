; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_kernel_sym.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_kernel_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i64* }
%struct.dso = type { i32, i64 }
%struct.map = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@vmlinux_path = common dso_local global i32* null, align 8
@BUILD_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"/sys/kernel/notes\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s/.debug/[kernel.kallsyms]/%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Not enough memory for kallsyms file lookup\0A\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"No kallsyms or vmlinux with build-id %s was found\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Using %s for symbols\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"[kernel.kallsyms]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, %struct.map*, i32)* @dso__load_kernel_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dso__load_kernel_sym(%struct.dso* %0, %struct.map* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dso*, align 8
  %6 = alloca %struct.map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %5, align 8
  store %struct.map* %1, %struct.map** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  store i8* %18, i8** %9, align 8
  br label %107

19:                                               ; preds = %3
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.dso*, %struct.dso** %5, align 8
  %24 = load %struct.map*, %struct.map** %6, align 8
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dso__load_vmlinux(%struct.dso* %23, %struct.map* %24, i8* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.dso*, %struct.dso** %5, align 8
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 8
  %33 = call i32 @strdup(i8* %32)
  %34 = call i32 @dso__set_long_name(%struct.dso* %31, i32 %33)
  br label %127

35:                                               ; preds = %22
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %134

37:                                               ; preds = %19
  %38 = load i32*, i32** @vmlinux_path, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.dso*, %struct.dso** %5, align 8
  %42 = load %struct.map*, %struct.map** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dso__load_vmlinux_path(%struct.dso* %41, %struct.map* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %127

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %37
  %50 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 2), align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %134

55:                                               ; preds = %49
  %56 = load %struct.dso*, %struct.dso** %5, align 8
  %57 = getelementptr inbounds %struct.dso, %struct.dso* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %105

60:                                               ; preds = %55
  %61 = load i32, i32* @BUILD_ID_SIZE, align 4
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %11, align 8
  %64 = alloca i32, i64 %62, align 16
  store i64 %62, i64* %12, align 8
  %65 = load i32, i32* @BUILD_ID_SIZE, align 4
  %66 = mul nsw i32 %65, 2
  %67 = add nsw i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = alloca i8, i64 %68, align 16
  store i64 %68, i64* %13, align 8
  %70 = mul nuw i64 4, %62
  %71 = trunc i64 %70 to i32
  %72 = call i64 @sysfs__read_build_id(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %64, i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %60
  %75 = load %struct.dso*, %struct.dso** %5, align 8
  %76 = call i64 @dso__build_id_equal(%struct.dso* %75, i32* %64)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i32 2, i32* %14, align 4
  br label %101

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %60
  %81 = load %struct.dso*, %struct.dso** %5, align 8
  %82 = getelementptr inbounds %struct.dso, %struct.dso* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @build_id__sprintf(i32 %83, i32 4, i8* %69)
  %85 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %86 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %85, i8* %69)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %101

90:                                               ; preds = %80
  %91 = load i8*, i8** %10, align 8
  store i8* %91, i8** %9, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* @F_OK, align 4
  %94 = call i64 @access(i8* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @free(i8* %98)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %101

100:                                              ; preds = %90
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %78, %100, %96, %88
  %102 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %14, align 4
  switch i32 %103, label %136 [
    i32 0, label %104
    i32 1, label %134
    i32 2, label %107
  ]

104:                                              ; preds = %101
  br label %106

105:                                              ; preds = %55
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %106

106:                                              ; preds = %105, %104
  br label %107

107:                                              ; preds = %106, %101, %17
  %108 = load %struct.dso*, %struct.dso** %5, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = load %struct.map*, %struct.map** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @dso__load_kallsyms(%struct.dso* %108, i8* %109, %struct.map* %110, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %115, %107
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i32, i32* %8, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %118
  %124 = load %struct.dso*, %struct.dso** %5, align 8
  %125 = call i32 @strdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %126 = call i32 @dso__set_long_name(%struct.dso* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %47, %30
  %128 = load %struct.map*, %struct.map** %6, align 8
  %129 = call i32 @map__fixup_start(%struct.map* %128)
  %130 = load %struct.map*, %struct.map** %6, align 8
  %131 = call i32 @map__fixup_end(%struct.map* %130)
  br label %132

132:                                              ; preds = %127, %118
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %101, %54, %35
  %135 = load i32, i32* %4, align 4
  ret i32 %135

136:                                              ; preds = %101
  unreachable
}

declare dso_local i32 @dso__load_vmlinux(%struct.dso*, %struct.map*, i8*, i32) #1

declare dso_local i32 @dso__set_long_name(%struct.dso*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @dso__load_vmlinux_path(%struct.dso*, %struct.map*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @sysfs__read_build_id(i8*, i32*, i32) #1

declare dso_local i64 @dso__build_id_equal(%struct.dso*, i32*) #1

declare dso_local i32 @build_id__sprintf(i32, i32, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @dso__load_kallsyms(%struct.dso*, i8*, %struct.map*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @map__fixup_start(%struct.map*) #1

declare dso_local i32 @map__fixup_end(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

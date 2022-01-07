; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mfu_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mfu_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64 }

@__mf_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [196 x i8] c"*******\0Amudflap stats:\0Acalls to __mf_check: %lu\0A         __mf_register: %lu [%luB, %luB, %luB, %luB, %luB]\0A         __mf_unregister: %lu [%luB]\0A         __mf_violation: [%lu, %lu, %lu, %lu, %lu]\0A\00", align 1
@__mf_count_check = common dso_local global i32 0, align 4
@__mf_count_register = common dso_local global i32 0, align 4
@__mf_total_register_size = common dso_local global i32* null, align 8
@__mf_count_unregister = common dso_local global i32 0, align 4
@__mf_total_unregister_size = common dso_local global i32 0, align 4
@__mf_count_violation = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"calls with reentrancy: %lu\0A\00", align 1
@__mf_reentrancy = common dso_local global i32 0, align 4
@LOOKUP_CACHE_SIZE = common dso_local global i32 0, align 4
@__mf_lookup_cache_reusecount = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"lookup cache slots used: %u  unused: %u  peak-reuse: %u\0A\00", align 1
@MINPTR = common dso_local global i32 0, align 4
@MAXPTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"number of live objects: %u\0A\00", align 1
@__MF_TYPE_MAX_CEM = common dso_local global i32 0, align 4
@__mf_object_cemetary = common dso_local global i64** null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"          zombie objects: %u\0A\00", align 1
@mode_check = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"number of leaked objects: %u\0A\00", align 1
@__mf_lock_contention = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mfu_report() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__mf_opts, i32 0, i32 3), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %138

12:                                               ; preds = %0
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* @__mf_count_check, align 4
  %15 = load i32, i32* @__mf_count_register, align 4
  %16 = load i32*, i32** @__mf_total_register_size, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @__mf_total_register_size, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @__mf_total_register_size, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** @__mf_total_register_size, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @__mf_total_register_size, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @__mf_count_unregister, align 4
  %32 = load i32, i32* @__mf_total_unregister_size, align 4
  %33 = load i32*, i32** @__mf_count_violation, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @__mf_count_violation, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** @__mf_count_violation, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** @__mf_count_violation, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** @__mf_count_violation, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([196 x i8], [196 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %31, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47)
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* @__mf_reentrancy, align 4
  %51 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %84, %12
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @LOOKUP_CACHE_SIZE, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  %57 = load i32*, i32** @__mf_lookup_cache_reusecount, align 8
  %58 = load i32, i32* %1, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* %3, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %69

66:                                               ; preds = %56
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %2, align 4
  %71 = load i32*, i32** @__mf_lookup_cache_reusecount, align 8
  %72 = load i32, i32* %1, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ult i32 %70, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load i32*, i32** @__mf_lookup_cache_reusecount, align 8
  %79 = load i32, i32* %1, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %69
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %1, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %1, align 4
  br label %52

87:                                               ; preds = %52
  %88 = load i32, i32* @stderr, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %2, align 4
  %92 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* @MINPTR, align 4
  %94 = load i32, i32* @MAXPTR, align 4
  %95 = call i32 @__mf_find_objects(i32 %93, i32 %94, i32* null, i32 0)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @stderr, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__mf_opts, i32 0, i32 0), align 8
  %100 = icmp ugt i32 %99, 0
  br i1 %100, label %101, label %137

101:                                              ; preds = %87
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %130, %101
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @__MF_TYPE_MAX_CEM, align 4
  %105 = icmp ule i32 %103, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %102
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %126, %106
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__mf_opts, i32 0, i32 0), align 8
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %107
  %112 = load i64**, i64*** @__mf_object_cemetary, align 8
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i64*, i64** %112, i64 %114
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load i32, i32* %6, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %122, %111
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %8, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %107

129:                                              ; preds = %107
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %7, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %102

133:                                              ; preds = %102
  %134 = load i32, i32* @stderr, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %133, %87
  br label %138

138:                                              ; preds = %137, %0
  %139 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__mf_opts, i32 0, i32 2), align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %138
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__mf_opts, i32 0, i32 1), align 8
  %143 = load i64, i64* @mode_check, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = call i8* @__mf_wrap_alloca_indirect(i64 0)
  %147 = call i32 @__mf_describe_object(i32* null)
  %148 = call i32 (...) @__mf_report_leaks()
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* @stderr, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %145, %141, %138
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @__mf_find_objects(i32, i32, i32*, i32) #1

declare dso_local i8* @__mf_wrap_alloca_indirect(i64) #1

declare dso_local i32 @__mf_describe_object(i32*) #1

declare dso_local i32 @__mf_report_leaks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

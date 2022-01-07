; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_format_corename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_format_corename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.core_name = type { i32, i32, i64 }
%struct.cred = type { i64, i64 }
%struct.timeval = type { i64 }
%struct.TYPE_4__ = type { i64 }

@core_pattern = common dso_local global i8* null, align 8
@CORENAME_MAX_SIZE = common dso_local global i32 0, align 4
@call_count = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@current = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@uts_sem = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@RLIMIT_CORE = common dso_local global i32 0, align 4
@core_uses_pid = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.core_name*, i64)* @format_corename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_corename(%struct.core_name* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.core_name*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  store %struct.core_name* %0, %struct.core_name** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %12, %struct.cred** %6, align 8
  %13 = load i8*, i8** @core_pattern, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 124
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @CORENAME_MAX_SIZE, align 4
  %20 = call i32 @atomic_read(i32* @call_count)
  %21 = mul nsw i32 %19, %20
  %22 = load %struct.core_name*, %struct.core_name** %4, align 8
  %23 = getelementptr inbounds %struct.core_name, %struct.core_name* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.core_name*, %struct.core_name** %4, align 8
  %25 = getelementptr inbounds %struct.core_name, %struct.core_name* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @kmalloc(i32 %26, i32 %27)
  %29 = load %struct.core_name*, %struct.core_name** %4, align 8
  %30 = getelementptr inbounds %struct.core_name, %struct.core_name* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.core_name*, %struct.core_name** %4, align 8
  %32 = getelementptr inbounds %struct.core_name, %struct.core_name* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.core_name*, %struct.core_name** %4, align 8
  %34 = getelementptr inbounds %struct.core_name, %struct.core_name* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %153

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %130, %40
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %131

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 37
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %151

56:                                               ; preds = %50
  %57 = load %struct.core_name*, %struct.core_name** %4, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  %60 = load i8, i8* %58, align 1
  %61 = sext i8 %60 to i64
  %62 = call i32 @cn_printf(%struct.core_name* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %61)
  store i32 %62, i32* %10, align 4
  br label %125

63:                                               ; preds = %45
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  switch i32 %67, label %121 [
    i32 0, label %68
    i32 37, label %69
    i32 112, label %72
    i32 117, label %77
    i32 103, label %83
    i32 115, label %89
    i32 116, label %93
    i32 104, label %99
    i32 101, label %107
    i32 69, label %113
    i32 99, label %116
  ]

68:                                               ; preds = %63
  br label %151

69:                                               ; preds = %63
  %70 = load %struct.core_name*, %struct.core_name** %4, align 8
  %71 = call i32 @cn_printf(%struct.core_name* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 37)
  store i32 %71, i32* %10, align 4
  br label %122

72:                                               ; preds = %63
  store i32 1, i32* %9, align 4
  %73 = load %struct.core_name*, %struct.core_name** %4, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %75 = call i64 @task_tgid_vnr(%struct.TYPE_5__* %74)
  %76 = call i32 @cn_printf(%struct.core_name* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  store i32 %76, i32* %10, align 4
  br label %122

77:                                               ; preds = %63
  %78 = load %struct.core_name*, %struct.core_name** %4, align 8
  %79 = load %struct.cred*, %struct.cred** %6, align 8
  %80 = getelementptr inbounds %struct.cred, %struct.cred* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @cn_printf(%struct.core_name* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  store i32 %82, i32* %10, align 4
  br label %122

83:                                               ; preds = %63
  %84 = load %struct.core_name*, %struct.core_name** %4, align 8
  %85 = load %struct.cred*, %struct.cred** %6, align 8
  %86 = getelementptr inbounds %struct.cred, %struct.cred* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @cn_printf(%struct.core_name* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  store i32 %88, i32* %10, align 4
  br label %122

89:                                               ; preds = %63
  %90 = load %struct.core_name*, %struct.core_name** %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @cn_printf(%struct.core_name* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  store i32 %92, i32* %10, align 4
  br label %122

93:                                               ; preds = %63
  %94 = call i32 @do_gettimeofday(%struct.timeval* %11)
  %95 = load %struct.core_name*, %struct.core_name** %4, align 8
  %96 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @cn_printf(%struct.core_name* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %97)
  store i32 %98, i32* %10, align 4
  br label %122

99:                                               ; preds = %63
  %100 = call i32 @down_read(i32* @uts_sem)
  %101 = load %struct.core_name*, %struct.core_name** %4, align 8
  %102 = call %struct.TYPE_4__* (...) @utsname()
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @cn_printf(%struct.core_name* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %104)
  store i32 %105, i32* %10, align 4
  %106 = call i32 @up_read(i32* @uts_sem)
  br label %122

107:                                              ; preds = %63
  %108 = load %struct.core_name*, %struct.core_name** %4, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @cn_printf(%struct.core_name* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %111)
  store i32 %112, i32* %10, align 4
  br label %122

113:                                              ; preds = %63
  %114 = load %struct.core_name*, %struct.core_name** %4, align 8
  %115 = call i32 @cn_print_exe_file(%struct.core_name* %114)
  store i32 %115, i32* %10, align 4
  br label %122

116:                                              ; preds = %63
  %117 = load %struct.core_name*, %struct.core_name** %4, align 8
  %118 = load i32, i32* @RLIMIT_CORE, align 4
  %119 = call i64 @rlimit(i32 %118)
  %120 = call i32 @cn_printf(%struct.core_name* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %119)
  store i32 %120, i32* %10, align 4
  br label %122

121:                                              ; preds = %63
  br label %122

122:                                              ; preds = %121, %116, %113, %107, %99, %93, %89, %83, %77, %72, %69
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %7, align 8
  br label %125

125:                                              ; preds = %122, %56
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %3, align 4
  br label %153

130:                                              ; preds = %125
  br label %41

131:                                              ; preds = %41
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %150, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %150, label %137

137:                                              ; preds = %134
  %138 = load i64, i64* @core_uses_pid, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = load %struct.core_name*, %struct.core_name** %4, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %143 = call i64 @task_tgid_vnr(%struct.TYPE_5__* %142)
  %144 = call i32 @cn_printf(%struct.core_name* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %3, align 4
  br label %153

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %137, %134, %131
  br label %151

151:                                              ; preds = %150, %68, %55
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %147, %128, %37
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @cn_printf(%struct.core_name*, i8*, i64) #1

declare dso_local i64 @task_tgid_vnr(%struct.TYPE_5__*) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @utsname(...) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @cn_print_exe_file(%struct.core_name*) #1

declare dso_local i64 @rlimit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

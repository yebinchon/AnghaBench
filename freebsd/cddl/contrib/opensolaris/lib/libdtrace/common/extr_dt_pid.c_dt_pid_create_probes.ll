; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pid.c_dt_pid_create_probes.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pid.c_dt_pid_create_probes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.ps_prochandle = type { i32 }
%struct.TYPE_22__ = type { i32, i64 }

@DTRACE_PROVNAMELEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@D_PROC_NODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"pid provider is not installed on this system\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"pid provider is not available: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pid%d\00", align 1
@PGRAB_RDONLY = common dso_local global i32 0, align 4
@PGRAB_FORCE = common dso_local global i32 0, align 4
@D_PROC_GRAB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to grab process %d\00", align 1
@DTRACEIOC_ENABLE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_pid_create_probes(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ps_prochandle*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* @DTRACE_PROVNAMELEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @dt_pid_get_pid(%struct.TYPE_20__* %23, %struct.TYPE_21__* %24, i32* %25, i32* null)
  store i32 %26, i32* %12, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %159

29:                                               ; preds = %3
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ENOENT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @D_PROC_NODEV, align 4
  %44 = call i32 (%struct.TYPE_21__*, i32*, i32*, i32*, i32, i8*, ...) @dt_pid_error(%struct.TYPE_21__* %41, i32* %42, i32* null, i32* null, i32 %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %54

45:                                               ; preds = %34
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @D_PROC_NODEV, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @strerror(i64 %51)
  %53 = call i32 (%struct.TYPE_21__*, i32*, i32*, i32*, i32, i8*, ...) @dt_pid_error(%struct.TYPE_21__* %46, i32* %47, i32* null, i32* null, i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %45, %40
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %159

55:                                               ; preds = %29
  %56 = trunc i64 %16 to i32
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @snprintf(i8* %18, i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @gmatch(i8* %18, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %106

64:                                               ; preds = %55
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @PGRAB_RDONLY, align 4
  %68 = load i32, i32* @PGRAB_FORCE, align 4
  %69 = or i32 %67, %68
  %70 = call %struct.ps_prochandle* @dt_proc_grab(%struct.TYPE_21__* %65, i32 %66, i32 %69, i32 0)
  store %struct.ps_prochandle* %70, %struct.ps_prochandle** %10, align 8
  %71 = icmp eq %struct.ps_prochandle* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* @D_PROC_GRAB, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 (%struct.TYPE_21__*, i32*, i32*, i32*, i32, i8*, ...) @dt_pid_error(%struct.TYPE_21__* %73, i32* %74, i32* null, i32* null, i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %159

78:                                               ; preds = %64
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %80 = load %struct.ps_prochandle*, %struct.ps_prochandle** %10, align 8
  %81 = call %struct.TYPE_22__* @dt_proc_lookup(%struct.TYPE_21__* %79, %struct.ps_prochandle* %80, i32 0)
  store %struct.TYPE_22__* %81, %struct.TYPE_22__** %11, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %83 = icmp ne %struct.TYPE_22__* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = call i32 @pthread_mutex_lock(i32* %87)
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %93 = call i32 @dt_pid_create_pid_probes(%struct.TYPE_20__* %89, %struct.TYPE_21__* %90, i32* %91, %struct.TYPE_22__* %92)
  store i32 %93, i32* %13, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %78
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %97 = load i32, i32* @DTRACEIOC_ENABLE, align 4
  %98 = call i32 @dt_ioctl(%struct.TYPE_21__* %96, i32 %97, i32* null)
  br label %99

99:                                               ; preds = %95, %78
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = call i32 @pthread_mutex_unlock(i32* %101)
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %104 = load %struct.ps_prochandle*, %struct.ps_prochandle** %10, align 8
  %105 = call i32 @dt_proc_release(%struct.TYPE_21__* %103, %struct.ps_prochandle* %104)
  br label %106

106:                                              ; preds = %99, %55
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @strcmp(i8* %18, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %154

112:                                              ; preds = %106
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call %struct.ps_prochandle* @dt_proc_grab(%struct.TYPE_21__* %113, i32 %114, i32 0, i32 1)
  store %struct.ps_prochandle* %115, %struct.ps_prochandle** %10, align 8
  %116 = icmp eq %struct.ps_prochandle* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* @D_PROC_GRAB, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 (%struct.TYPE_21__*, i32*, i32*, i32*, i32, i8*, ...) @dt_pid_error(%struct.TYPE_21__* %118, i32* %119, i32* null, i32* null, i32 %120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %159

123:                                              ; preds = %112
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %125 = load %struct.ps_prochandle*, %struct.ps_prochandle** %10, align 8
  %126 = call %struct.TYPE_22__* @dt_proc_lookup(%struct.TYPE_21__* %124, %struct.ps_prochandle* %125, i32 0)
  store %struct.TYPE_22__* %126, %struct.TYPE_22__** %11, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %128 = icmp ne %struct.TYPE_22__* %127, null
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = call i32 @pthread_mutex_lock(i32* %132)
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %123
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %143 = call i32 @dt_pid_create_usdt_probes(%struct.TYPE_20__* %139, %struct.TYPE_21__* %140, i32* %141, %struct.TYPE_22__* %142)
  store i32 %143, i32* %13, align 4
  %144 = load i64, i64* @B_TRUE, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %138, %123
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = call i32 @pthread_mutex_unlock(i32* %149)
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %152 = load %struct.ps_prochandle*, %struct.ps_prochandle** %10, align 8
  %153 = call i32 @dt_proc_release(%struct.TYPE_21__* %151, %struct.ps_prochandle* %152)
  br label %154

154:                                              ; preds = %147, %106
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 -1, i32 0
  store i32 %158, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %159

159:                                              ; preds = %154, %117, %72, %54, %28
  %160 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @dt_pid_get_pid(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*, i32*) #2

declare dso_local i32 @dt_pid_error(%struct.TYPE_21__*, i32*, i32*, i32*, i32, i8*, ...) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @gmatch(i8*, i32) #2

declare dso_local %struct.ps_prochandle* @dt_proc_grab(%struct.TYPE_21__*, i32, i32, i32) #2

declare dso_local %struct.TYPE_22__* @dt_proc_lookup(%struct.TYPE_21__*, %struct.ps_prochandle*, i32) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @dt_pid_create_pid_probes(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*, %struct.TYPE_22__*) #2

declare dso_local i32 @dt_ioctl(%struct.TYPE_21__*, i32, i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @dt_proc_release(%struct.TYPE_21__*, %struct.ps_prochandle*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @dt_pid_create_usdt_probes(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*, %struct.TYPE_22__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

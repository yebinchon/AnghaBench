; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/i386/extr_dt_isadep.c_dt_pid_create_offset_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/i386/extr_dt_isadep.c_dt_pid_create_offset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i32, i32*, i32, i32 }
%struct.TYPE_17__ = type { i64, i64 }

@DTFTP_OFFSETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"mr sparkle: malloc() failed\0A\00", align 1
@DT_PROC_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"mr sparkle: Pread() failed\0A\00", align 1
@DT_PROC_ALIGN = common dso_local global i32 0, align 4
@FASTTRAPIOC_MAKEPROBE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"fasttrap probe creation ioctl failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_pid_create_offset_probe(%struct.ps_prochandle* %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2, %struct.TYPE_17__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps_prochandle*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store %struct.ps_prochandle* %0, %struct.ps_prochandle** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @DTFTP_OFFSETS, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %5
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %38, i32* %42, align 4
  br label %141

43:                                               ; preds = %5
  %44 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %45 = call i32 @proc_getpid(%struct.ps_prochandle* %44)
  store i32 %45, i32* %15, align 4
  %46 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %47 = call signext i8 @proc_getmodel(%struct.ps_prochandle* %46)
  store i8 %47, i8* %16, align 1
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32* @malloc(i64 %50)
  store i32* %51, i32** %12, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @DT_PROC_ERR, align 4
  store i32 %55, i32* %6, align 4
  br label %160

56:                                               ; preds = %43
  %57 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @Pread(%struct.ps_prochandle* %57, i32* %58, i64 %61, i64 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %56
  %71 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @free(i32* %72)
  %74 = load i32, i32* @DT_PROC_ERR, align 4
  store i32 %74, i32* %6, align 4
  br label %160

75:                                               ; preds = %56
  %76 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %81 = call i64 @dt_pid_has_jump_table(%struct.ps_prochandle* %76, %struct.TYPE_16__* %77, i32* %78, %struct.TYPE_15__* %79, %struct.TYPE_17__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @free(i32* %84)
  store i32 0, i32* %6, align 4
  br label %160

86:                                               ; preds = %75
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %134, %86
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %94, label %138

94:                                               ; preds = %87
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %99, i32* %103, align 4
  br label %138

104:                                              ; preds = %94
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @free(i32* %109)
  %111 = load i32, i32* @DT_PROC_ALIGN, align 4
  store i32 %111, i32* %6, align 4
  br label %160

112:                                              ; preds = %104
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %121, %123
  %125 = load i8, i8* %16, align 1
  %126 = call i32 @dt_instr_size(i32* %116, %struct.TYPE_16__* %117, i32 %118, i64 %124, i8 signext %125)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %112
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @free(i32* %130)
  %132 = load i32, i32* @DT_PROC_ALIGN, align 4
  store i32 %132, i32* %6, align 4
  br label %160

133:                                              ; preds = %112
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %13, align 4
  br label %87

138:                                              ; preds = %98, %87
  %139 = load i32*, i32** %12, align 8
  %140 = call i32 @free(i32* %139)
  br label %141

141:                                              ; preds = %138, %37
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @FASTTRAPIOC_MAKEPROBE, align 4
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %147 = call i64 @ioctl(i32 %144, i32 %145, %struct.TYPE_15__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %141
  %150 = load i32, i32* @errno, align 4
  %151 = call i32 @strerror(i32 %150)
  %152 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %154 = load i32, i32* @errno, align 4
  %155 = call i32 @dt_set_errno(%struct.TYPE_16__* %153, i32 %154)
  store i32 %155, i32* %6, align 4
  br label %160

156:                                              ; preds = %141
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %156, %149, %129, %108, %83, %70, %53
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @proc_getpid(%struct.ps_prochandle*) #1

declare dso_local signext i8 @proc_getmodel(%struct.ps_prochandle*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @dt_dprintf(i8*, ...) #1

declare dso_local i64 @Pread(%struct.ps_prochandle*, i32*, i64, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @dt_pid_has_jump_table(%struct.ps_prochandle*, %struct.TYPE_16__*, i32*, %struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @dt_instr_size(i32*, %struct.TYPE_16__*, i32, i64, i8 signext) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

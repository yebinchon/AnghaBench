; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/i386/extr_dt_isadep.c_dt_pid_create_glob_offset_probes.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/i386/extr_dt_isadep.c_dt_pid_create_glob_offset_probes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i32*, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@DTFTP_OFFSETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mr sparkle: malloc() failed\0A\00", align 1
@DT_PROC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mr sparkle: Pread() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@FASTTRAPIOC_MAKEPROBE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"fasttrap probe creation ioctl failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_pid_create_glob_offset_probes(%struct.ps_prochandle* %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2, %struct.TYPE_17__* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps_prochandle*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca [9 x i8], align 1
  store %struct.ps_prochandle* %0, %struct.ps_prochandle** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %23 = call i32 @proc_getpid(%struct.ps_prochandle* %22)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %25 = call signext i8 @proc_getmodel(%struct.ps_prochandle* %24)
  store i8 %25, i8* %17, align 1
  %26 = load i32, i32* @DTFTP_OFFSETS, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @malloc(i32 %45)
  store i32* %46, i32** %12, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %5
  %49 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @DT_PROC_ERR, align 4
  store i32 %50, i32* %6, align 4
  br label %196

51:                                               ; preds = %5
  %52 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @Pread(%struct.ps_prochandle* %52, i32* %53, i32 %56, i32 %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @free(i32* %67)
  %69 = load i32, i32* @DT_PROC_ERR, align 4
  store i32 %69, i32* %6, align 4
  br label %196

70:                                               ; preds = %51
  %71 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %76 = call i64 @dt_pid_has_jump_table(%struct.ps_prochandle* %71, %struct.TYPE_16__* %72, i32* %73, %struct.TYPE_15__* %74, %struct.TYPE_17__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @free(i32* %79)
  store i32 0, i32* %6, align 4
  br label %196

81:                                               ; preds = %70
  %82 = load i8*, i8** %11, align 8
  %83 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %122

85:                                               ; preds = %81
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %117, %85
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %121

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %91, i32* %99, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i8, i8* %17, align 1
  %112 = call i32 @dt_instr_size(i32* %103, %struct.TYPE_16__* %104, i32 %105, i32 %110, i8 signext %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp sle i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %90
  br label %121

116:                                              ; preds = %90
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %14, align 4
  br label %86

121:                                              ; preds = %115, %86
  br label %168

122:                                              ; preds = %81
  store i32 0, i32* %14, align 4
  br label %123

123:                                              ; preds = %163, %122
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %167

127:                                              ; preds = %123
  %128 = getelementptr inbounds [9 x i8], [9 x i8]* %18, i64 0, i64 0
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @snprintf(i8* %128, i32 9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = getelementptr inbounds [9 x i8], [9 x i8]* %18, i64 0, i64 0
  %132 = load i8*, i8** %11, align 8
  %133 = call i64 @gmatch(i8* %131, i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %127
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %141, align 8
  %144 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32 %136, i32* %144, align 4
  br label %145

145:                                              ; preds = %135, %127
  %146 = load i32*, i32** %12, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i8, i8* %17, align 1
  %158 = call i32 @dt_instr_size(i32* %149, %struct.TYPE_16__* %150, i32 %151, i32 %156, i8 signext %157)
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp sle i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %145
  br label %167

162:                                              ; preds = %145
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %14, align 4
  br label %123

167:                                              ; preds = %161, %123
  br label %168

168:                                              ; preds = %167, %121
  %169 = load i32*, i32** %12, align 8
  %170 = call i32 @free(i32* %169)
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %168
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @FASTTRAPIOC_MAKEPROBE, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %181 = call i64 @ioctl(i32 %178, i32 %179, %struct.TYPE_15__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %175
  %184 = load i32, i32* @errno, align 4
  %185 = call i32 @strerror(i32 %184)
  %186 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %185)
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %188 = load i32, i32* @errno, align 4
  %189 = call i32 @dt_set_errno(%struct.TYPE_16__* %187, i32 %188)
  store i32 %189, i32* %6, align 4
  br label %196

190:                                              ; preds = %175
  br label %191

191:                                              ; preds = %190, %168
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %191, %183, %78, %65, %48
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local i32 @proc_getpid(%struct.ps_prochandle*) #1

declare dso_local signext i8 @proc_getmodel(%struct.ps_prochandle*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @dt_dprintf(i8*, ...) #1

declare dso_local i32 @Pread(%struct.ps_prochandle*, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @dt_pid_has_jump_table(%struct.ps_prochandle*, %struct.TYPE_16__*, i32*, %struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dt_instr_size(i32*, %struct.TYPE_16__*, i32, i32, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @gmatch(i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

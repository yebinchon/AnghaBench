; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/powerpc/extr_dt_isadep.c_dt_pid_create_return_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/powerpc/extr_dt_isadep.c_dt_pid_create_return_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i32*, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"mr sparkle: malloc() failed\0A\00", align 1
@DT_PROC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mr sparkle: Pread() failed\0A\00", align 1
@DTFTP_RETURN = common dso_local global i32 0, align 4
@UINTPTR_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"return at offset %x\0A\00", align 1
@FASTTRAPIOC_MAKEPROBE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"fasttrap probe creation ioctl failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_pid_create_return_probe(%struct.ps_prochandle* %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2, %struct.TYPE_11__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps_prochandle*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ps_prochandle* %0, %struct.ps_prochandle** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 4
  %20 = call i32* @malloc(i32 %19)
  store i32* %20, i32** %13, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @DT_PROC_ERR, align 4
  store i32 %24, i32* %6, align 4
  br label %199

25:                                               ; preds = %5
  %26 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @Pread(%struct.ps_prochandle* %26, i32* %27, i32 %30, i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @free(i32* %41)
  %43 = load i32, i32* @DT_PROC_ERR, align 4
  store i32 %43, i32* %6, align 4
  br label %199

44:                                               ; preds = %25
  %45 = load i32*, i32** %13, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* @DTFTP_RETURN, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %168, %44
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 4
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %171

74:                                               ; preds = %67
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, -67108863
  %81 = icmp ne i32 %80, 1207959552
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 1317011488
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %168

90:                                               ; preds = %82, %74
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, -67108864
  %97 = icmp eq i32 %96, 1207959552
  br i1 %97, label %98, label %154

98:                                               ; preds = %90
  %99 = load i32*, i32** %13, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 67108860
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %12, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 2
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %98
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %14, align 4
  %118 = mul nsw i32 %117, 4
  %119 = add nsw i32 %116, %118
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %12, align 8
  br label %134

123:                                              ; preds = %98
  %124 = load i64, i64* %12, align 8
  %125 = and i64 %124, 33554432
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load i32, i32* @UINTPTR_MAX, align 4
  %129 = sub nsw i32 %128, 67108863
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %12, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %12, align 8
  br label %133

133:                                              ; preds = %127, %123
  br label %134

134:                                              ; preds = %133, %113
  %135 = load i64, i64* %12, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp uge i64 %135, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %134
  %142 = load i64, i64* %12, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %145, %148
  %150 = sext i32 %149 to i64
  %151 = icmp ule i64 %142, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  br label %168

153:                                              ; preds = %141, %134
  br label %154

154:                                              ; preds = %153, %90
  %155 = load i32, i32* %14, align 4
  %156 = mul nsw i32 %155, 4
  %157 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %14, align 4
  %159 = mul nsw i32 %158, 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %164, align 8
  %167 = getelementptr inbounds i32, i32* %162, i64 %165
  store i32 %159, i32* %167, align 4
  br label %168

168:                                              ; preds = %154, %152, %89
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %14, align 4
  br label %67

171:                                              ; preds = %67
  %172 = load i32*, i32** %13, align 8
  %173 = call i32 @free(i32* %172)
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %171
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @FASTTRAPIOC_MAKEPROBE, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %184 = call i64 @ioctl(i32 %181, i32 %182, %struct.TYPE_9__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %178
  %187 = load i32, i32* @errno, align 4
  %188 = call i32 @strerror(i32 %187)
  %189 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %191 = load i32, i32* @errno, align 4
  %192 = call i32 @dt_set_errno(%struct.TYPE_10__* %190, i32 %191)
  store i32 %192, i32* %6, align 4
  br label %199

193:                                              ; preds = %178
  br label %194

194:                                              ; preds = %193, %171
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %194, %186, %39, %22
  %200 = load i32, i32* %6, align 4
  ret i32 %200
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @dt_dprintf(i8*, ...) #1

declare dso_local i32 @Pread(%struct.ps_prochandle*, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

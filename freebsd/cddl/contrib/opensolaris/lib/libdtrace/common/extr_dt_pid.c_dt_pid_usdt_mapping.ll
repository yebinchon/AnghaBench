; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pid.c_dt_pid_usdt_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pid.c_dt_pid_usdt_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.ps_prochandle = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"___SUNW_dof\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"__SUNW_dof\00", align 1
@__const.dt_pid_usdt_mapping.syms = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)], align 16
@PR_LMID_EVERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"lookup of %s succeeded for %s\0A\00", align 1
@Elf64_Ehdr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"read of ELF header failed\00", align 1
@ET_EXEC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"/dev/dtrace/helper\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"pr_open of helper device failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@DTRACEHIOC_ADDDOF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"DOF was rejected for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_11__*, i8*)* @dt_pid_usdt_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_pid_usdt_mapping(i8* %0, %struct.TYPE_11__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ps_prochandle*, align 8
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [2 x i8*], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.ps_prochandle*
  store %struct.ps_prochandle* %18, %struct.ps_prochandle** %8, align 8
  %19 = bitcast [2 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([2 x i8*]* @__const.dt_pid_usdt_mapping.syms to i8*), i64 16, i1 false)
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %106, %3
  %21 = load i32, i32* %15, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %109

23:                                               ; preds = %20
  %24 = load %struct.ps_prochandle*, %struct.ps_prochandle** %8, align 8
  %25 = load i32, i32* @PR_LMID_EVERY, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @Pxlookup_by_name(%struct.ps_prochandle* %24, i32 %25, i8* %26, i8* %30, %struct.TYPE_13__* %9, %struct.TYPE_10__* %10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %106

34:                                               ; preds = %23
  %35 = load i8*, i8** %7, align 8
  %36 = call i8* @strrchr(i8* %35, i8 signext 47)
  store i8* %36, i8** %13, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %13, align 8
  br label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %13, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %13, align 8
  br label %43

43:                                               ; preds = %40, %38
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %47, i8* %48)
  %50 = load %struct.ps_prochandle*, %struct.ps_prochandle** %8, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @Elf64_Ehdr, align 4
  %55 = load i64, i64* %12, align 8
  %56 = call i64 @offsetof(i32 %54, i64 %55)
  %57 = add nsw i64 %53, %56
  %58 = call i32 @Pread(%struct.ps_prochandle* %50, i64* %12, i32 8, i64 %57)
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 8
  br i1 %60, label %61, label %63

61:                                               ; preds = %43
  %62 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %106

63:                                               ; preds = %43
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  store i32 %65, i32* %66, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @ET_EXEC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %75

71:                                               ; preds = %63
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  br label %75

75:                                               ; preds = %71, %70
  %76 = phi i64 [ 0, %70 ], [ %74, %71 ]
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  store i64 %76, i64* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @dt_pid_objname(i32 %79, i32 4, i32 %81, i8* %82)
  %84 = load i32, i32* %16, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %95

86:                                               ; preds = %75
  %87 = load %struct.ps_prochandle*, %struct.ps_prochandle** %8, align 8
  %88 = load i32, i32* @O_RDWR, align 4
  %89 = call i32 @pr_open(%struct.ps_prochandle* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %88, i32 0)
  store i32 %89, i32* %16, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 @strerror(i32 %92)
  %94 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  store i32 -1, i32* %4, align 4
  br label %117

95:                                               ; preds = %86, %75
  %96 = load %struct.ps_prochandle*, %struct.ps_prochandle** %8, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* @DTRACEHIOC_ADDDOF, align 4
  %99 = call i64 @pr_ioctl(%struct.ps_prochandle* %96, i32 %97, i32 %98, %struct.TYPE_12__* %11, i32 24)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i8*, ...) @dt_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %95
  br label %106

106:                                              ; preds = %105, %61, %33
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %20

109:                                              ; preds = %20
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.ps_prochandle*, %struct.ps_prochandle** %8, align 8
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @pr_close(%struct.ps_prochandle* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %109
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %91
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @Pxlookup_by_name(%struct.ps_prochandle*, i32, i8*, i8*, %struct.TYPE_13__*, %struct.TYPE_10__*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @dt_dprintf(i8*, ...) #2

declare dso_local i32 @Pread(%struct.ps_prochandle*, i64*, i32, i64) #2

declare dso_local i64 @offsetof(i32, i64) #2

declare dso_local i32 @dt_pid_objname(i32, i32, i32, i8*) #2

declare dso_local i32 @pr_open(%struct.ps_prochandle*, i8*, i32, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @pr_ioctl(%struct.ps_prochandle*, i32, i32, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @pr_close(%struct.ps_prochandle*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dtrace_uaddr2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dtrace_uaddr2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }
%struct.TYPE_3__ = type { i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@PGRAB_RDONLY = common dso_local global i32 0, align 4
@PGRAB_FORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"0x%jx\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s`%s+0x%llx\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s`%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s`0x%jx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_uaddr2str(i32* %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ps_prochandle*, align 8
  %17 = alloca %struct.TYPE_3__, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %27 = load i32, i32* @PATH_MAX, align 4
  %28 = mul nsw i32 %27, 2
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  store %struct.ps_prochandle* null, %struct.ps_prochandle** %16, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %5
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* @PGRAB_RDONLY, align 4
  %37 = load i32, i32* @PGRAB_FORCE, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.ps_prochandle* @dt_proc_grab(i32* %34, i64 %35, i32 %38, i32 0)
  store %struct.ps_prochandle* %39, %struct.ps_prochandle** %16, align 8
  br label %40

40:                                               ; preds = %33, %5
  %41 = load %struct.ps_prochandle*, %struct.ps_prochandle** %16, align 8
  %42 = icmp eq %struct.ps_prochandle* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = trunc i64 %29 to i32
  %45 = load i64, i64* %9, align 8
  %46 = trunc i64 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %30, i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @dt_string2str(i8* %30, i8* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %116

53:                                               ; preds = %40
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.ps_prochandle*, %struct.ps_prochandle** %16, align 8
  %56 = call i32 @dt_proc_lock(i32* %54, %struct.ps_prochandle* %55)
  %57 = load %struct.ps_prochandle*, %struct.ps_prochandle** %16, align 8
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %21 to i32
  %60 = call i64 @Plookup_by_addr(%struct.ps_prochandle* %57, i64 %58, i8* %23, i32 %59, %struct.TYPE_3__* %17)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %53
  %63 = load %struct.ps_prochandle*, %struct.ps_prochandle** %16, align 8
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %25 to i32
  %66 = call i64 @Pobjname(%struct.ps_prochandle* %63, i64 %64, i8* %26, i32 %65)
  %67 = call i8* @dt_basename(i8* %26)
  store i8* %67, i8** %18, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %68, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %62
  %73 = trunc i64 %29 to i32
  %74 = load i8*, i8** %18, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %75, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %30, i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %74, i8* %23, i32 %79)
  br label %85

81:                                               ; preds = %62
  %82 = trunc i64 %29 to i32
  %83 = load i8*, i8** %18, align 8
  %84 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %30, i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %83, i8* %23)
  br label %85

85:                                               ; preds = %81, %72
  br label %106

86:                                               ; preds = %53
  %87 = load %struct.ps_prochandle*, %struct.ps_prochandle** %16, align 8
  %88 = load i64, i64* %9, align 8
  %89 = trunc i64 %25 to i32
  %90 = call i64 @Pobjname(%struct.ps_prochandle* %87, i64 %88, i8* %26, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = trunc i64 %29 to i32
  %94 = call i8* @dt_basename(i8* %26)
  %95 = load i64, i64* %9, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %30, i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %94, i32 %96)
  br label %105

98:                                               ; preds = %86
  %99 = trunc i64 %29 to i32
  %100 = load i64, i64* %9, align 8
  %101 = trunc i64 %100 to i32
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %30, i32 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %98, %92
  br label %106

106:                                              ; preds = %105, %85
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.ps_prochandle*, %struct.ps_prochandle** %16, align 8
  %109 = call i32 @dt_proc_unlock(i32* %107, %struct.ps_prochandle* %108)
  %110 = load i32*, i32** %7, align 8
  %111 = load %struct.ps_prochandle*, %struct.ps_prochandle** %16, align 8
  %112 = call i32 @dt_proc_release(i32* %110, %struct.ps_prochandle* %111)
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @dt_string2str(i8* %30, i8* %113, i32 %114)
  store i32 %115, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %116

116:                                              ; preds = %106, %43
  %117 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ps_prochandle* @dt_proc_grab(i32*, i64, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @dt_string2str(i8*, i8*, i32) #2

declare dso_local i32 @dt_proc_lock(i32*, %struct.ps_prochandle*) #2

declare dso_local i64 @Plookup_by_addr(%struct.ps_prochandle*, i64, i8*, i32, %struct.TYPE_3__*) #2

declare dso_local i64 @Pobjname(%struct.ps_prochandle*, i64, i8*, i32) #2

declare dso_local i8* @dt_basename(i8*) #2

declare dso_local i32 @dt_proc_unlock(i32*, %struct.ps_prochandle*) #2

declare dso_local i32 @dt_proc_release(i32*, %struct.ps_prochandle*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

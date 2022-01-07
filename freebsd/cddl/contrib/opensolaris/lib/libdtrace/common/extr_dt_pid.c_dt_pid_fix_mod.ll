; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pid.c_dt_pid_fix_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pid.c_dt_pid_fix_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8* }
%struct.ps_prochandle = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@PR_LMID_EVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"LM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_7__*, %struct.ps_prochandle*)* @dt_pid_fix_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @dt_pid_fix_mod(%struct.TYPE_7__* %0, %struct.ps_prochandle* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.ps_prochandle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.ps_prochandle* %1, %struct.ps_prochandle** %5, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @PR_LMID_EVERY, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32* @strchr(i8* %20, i8 signext 96)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @isdigit(i8 signext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29, %23
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %89

38:                                               ; preds = %29
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = call i32 @strtoul(i8* %42, i8** %11, i32 16)
  store i32 %43, i32* %8, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 96
  br i1 %49, label %54, label %50

50:                                               ; preds = %38
  %51 = load i8*, i8** %9, align 8
  %52 = call i32* @strchr(i8* %51, i8 signext 96)
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %38
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %89

55:                                               ; preds = %50
  br label %60

56:                                               ; preds = %2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %56, %55
  %61 = load %struct.ps_prochandle*, %struct.ps_prochandle** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = call %struct.TYPE_6__* @Plmid_to_map(%struct.ps_prochandle* %61, i32 %62, i8* %63)
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %10, align 8
  %65 = icmp eq %struct.TYPE_6__* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %89

67:                                               ; preds = %60
  %68 = load %struct.ps_prochandle*, %struct.ps_prochandle** %5, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = trunc i64 %14 to i32
  %73 = call i32 @Pobjname(%struct.ps_prochandle* %68, i32 %71, i8* %16, i32 %72)
  %74 = call i8* @strrchr(i8* %16, i8 signext 47)
  store i8* %74, i8** %9, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = getelementptr inbounds i8, i8* %16, i64 0
  store i8* %77, i8** %9, align 8
  br label %81

78:                                               ; preds = %67
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %9, align 8
  br label %81

81:                                               ; preds = %78, %76
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @dt_pid_objname(i8* %84, i32 8, i32 %85, i8* %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %89

89:                                               ; preds = %81, %66, %54, %37
  %90 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @isdigit(i8 signext) #2

declare dso_local i32 @strtoul(i8*, i8**, i32) #2

declare dso_local %struct.TYPE_6__* @Plmid_to_map(%struct.ps_prochandle*, i32, i8*) #2

declare dso_local i32 @Pobjname(%struct.ps_prochandle*, i32, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @dt_pid_objname(i8*, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

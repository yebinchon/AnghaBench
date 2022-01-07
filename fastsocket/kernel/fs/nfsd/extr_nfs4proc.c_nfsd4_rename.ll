; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nfsd4_rename = type { i32, i32, i32, i32, i32, i32 }

@nfserr_nofilehandle = common dso_local global i64 0, align 8
@NFSEXP_NOSUBTREECHECK = common dso_local global i32 0, align 4
@nfserr_grace = common dso_local global i64 0, align 8
@nfserr_isdir = common dso_local global i64 0, align 8
@nfserr_exist = common dso_local global i64 0, align 8
@nfserr_notdir = common dso_local global i64 0, align 8
@nfserr_symlink = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_rename*)* @nfsd4_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_rename(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_rename* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_rename*, align 8
  %8 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_rename* %2, %struct.nfsd4_rename** %7, align 8
  %9 = load i64, i64* @nfserr_nofilehandle, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %4, align 8
  br label %108

17:                                               ; preds = %3
  %18 = call i64 (...) @locks_in_grace()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %22 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NFSEXP_NOSUBTREECHECK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load i64, i64* @nfserr_grace, align 8
  store i64 %31, i64* %4, align 8
  br label %108

32:                                               ; preds = %20, %17
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %34 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %35 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %34, i32 0, i32 0
  %36 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %7, align 8
  %37 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %7, align 8
  %40 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %43 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %42, i32 0, i32 1
  %44 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %7, align 8
  %45 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %7, align 8
  %48 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @nfsd_rename(%struct.svc_rqst* %33, %struct.TYPE_10__* %35, i32 %38, i32 %41, %struct.TYPE_10__* %43, i32 %46, i32 %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @nfserr_isdir, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %32
  %55 = load i64, i64* @nfserr_exist, align 8
  store i64 %55, i64* %8, align 8
  br label %92

56:                                               ; preds = %32
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @nfserr_notdir, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %62 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @S_ISDIR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %60
  %72 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %73 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @S_ISDIR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i64, i64* @nfserr_exist, align 8
  store i64 %83, i64* %8, align 8
  br label %91

84:                                               ; preds = %71, %60, %56
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @nfserr_symlink, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i64, i64* @nfserr_notdir, align 8
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %88, %84
  br label %91

91:                                               ; preds = %90, %82
  br label %92

92:                                               ; preds = %91, %54
  %93 = load i64, i64* %8, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %92
  %96 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %7, align 8
  %97 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %96, i32 0, i32 1
  %98 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %99 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %98, i32 0, i32 1
  %100 = call i32 @set_change_info(i32* %97, %struct.TYPE_10__* %99)
  %101 = load %struct.nfsd4_rename*, %struct.nfsd4_rename** %7, align 8
  %102 = getelementptr inbounds %struct.nfsd4_rename, %struct.nfsd4_rename* %101, i32 0, i32 0
  %103 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %104 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %103, i32 0, i32 0
  %105 = call i32 @set_change_info(i32* %102, %struct.TYPE_10__* %104)
  br label %106

106:                                              ; preds = %95, %92
  %107 = load i64, i64* %8, align 8
  store i64 %107, i64* %4, align 8
  br label %108

108:                                              ; preds = %106, %30, %15
  %109 = load i64, i64* %4, align 8
  ret i64 %109
}

declare dso_local i64 @locks_in_grace(...) #1

declare dso_local i64 @nfsd_rename(%struct.svc_rqst*, %struct.TYPE_10__*, i32, i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @set_change_info(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

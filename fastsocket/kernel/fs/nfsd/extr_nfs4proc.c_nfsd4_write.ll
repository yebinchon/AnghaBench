; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_write = type { i64, i64, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.file = type { i32 }

@nfs_ok = common dso_local global i64 0, align 8
@OFFSET_MAX = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i64 0, align 8
@WR_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"NFSD: nfsd4_write: couldn't process stateid!\0A\00", align 1
@nfssvc_boot = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@nfserr_symlink = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_write*)* @nfsd4_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_write(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_write* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_write*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_write* %2, %struct.nfsd4_write** %7, align 8
  %13 = load %struct.nfsd4_write*, %struct.nfsd4_write** %7, align 8
  %14 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %13, i32 0, i32 7
  store i32* %14, i32** %8, align 8
  store %struct.file* null, %struct.file** %9, align 8
  %15 = load i64, i64* @nfs_ok, align 8
  store i64 %15, i64* %11, align 8
  %16 = load %struct.nfsd4_write*, %struct.nfsd4_write** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @OFFSET_MAX, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @nfserr_inval, align 8
  store i64 %22, i64* %4, align 8
  br label %93

23:                                               ; preds = %3
  %24 = call i32 (...) @nfs4_lock_state()
  %25 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @WR_STATE, align 4
  %28 = call i64 @nfs4_preprocess_stateid_op(%struct.nfsd4_compound_state* %25, i32* %26, i32 %27, %struct.file** %9)
  store i64 %28, i64* %11, align 8
  %29 = load %struct.file*, %struct.file** %9, align 8
  %30 = icmp ne %struct.file* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.file*, %struct.file** %9, align 8
  %33 = call i32 @get_file(%struct.file* %32)
  br label %34

34:                                               ; preds = %31, %23
  %35 = call i32 (...) @nfs4_unlock_state()
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* %11, align 8
  store i64 %40, i64* %4, align 8
  br label %93

41:                                               ; preds = %34
  %42 = load %struct.nfsd4_write*, %struct.nfsd4_write** %7, align 8
  %43 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  %45 = load %struct.nfsd4_write*, %struct.nfsd4_write** %7, align 8
  %46 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nfsd4_write*, %struct.nfsd4_write** %7, align 8
  %49 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.nfsd4_write*, %struct.nfsd4_write** %7, align 8
  %51 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %10, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfssvc_boot, i32 0, i32 1), align 4
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfssvc_boot, i32 0, i32 0), align 4
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  %61 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %62 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %63 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %62, i32 0, i32 0
  %64 = load %struct.file*, %struct.file** %9, align 8
  %65 = load %struct.nfsd4_write*, %struct.nfsd4_write** %7, align 8
  %66 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %69 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nfsd4_write*, %struct.nfsd4_write** %7, align 8
  %72 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nfsd4_write*, %struct.nfsd4_write** %7, align 8
  %75 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %74, i32 0, i32 2
  %76 = call i64 @nfsd_write(%struct.svc_rqst* %61, i32* %63, %struct.file* %64, i32 %67, i32 %70, i32 %73, i64* %12, i32* %75)
  store i64 %76, i64* %11, align 8
  %77 = load %struct.file*, %struct.file** %9, align 8
  %78 = icmp ne %struct.file* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %41
  %80 = load %struct.file*, %struct.file** %9, align 8
  %81 = call i32 @fput(%struct.file* %80)
  br label %82

82:                                               ; preds = %79, %41
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.nfsd4_write*, %struct.nfsd4_write** %7, align 8
  %85 = getelementptr inbounds %struct.nfsd4_write, %struct.nfsd4_write* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @nfserr_symlink, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i64, i64* @nfserr_inval, align 8
  store i64 %90, i64* %11, align 8
  br label %91

91:                                               ; preds = %89, %82
  %92 = load i64, i64* %11, align 8
  store i64 %92, i64* %4, align 8
  br label %93

93:                                               ; preds = %91, %38, %21
  %94 = load i64, i64* %4, align 8
  ret i64 %94
}

declare dso_local i32 @nfs4_lock_state(...) #1

declare dso_local i64 @nfs4_preprocess_stateid_op(%struct.nfsd4_compound_state*, i32*, i32, %struct.file**) #1

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @nfs4_unlock_state(...) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @nfsd_write(%struct.svc_rqst*, i32*, %struct.file*, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

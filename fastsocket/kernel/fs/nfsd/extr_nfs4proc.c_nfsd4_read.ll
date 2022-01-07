; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_read = type { i64, i32*, %struct.svc_rqst*, i32*, i32 }

@OFFSET_MAX = common dso_local global i64 0, align 8
@nfserr_inval = common dso_local global i32 0, align 4
@RD_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"NFSD: nfsd4_read: couldn't process stateid!\0A\00", align 1
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_read*)* @nfsd4_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_read(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_read* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_read*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_read* %2, %struct.nfsd4_read** %7, align 8
  %9 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %10 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %12 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @OFFSET_MAX, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @nfserr_inval, align 4
  store i32 %17, i32* %4, align 4
  br label %52

18:                                               ; preds = %3
  %19 = call i32 (...) @nfs4_lock_state()
  %20 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %21 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %22 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %21, i32 0, i32 4
  %23 = load i32, i32* @RD_STATE, align 4
  %24 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %25 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %24, i32 0, i32 3
  %26 = call i32 @nfs4_preprocess_stateid_op(%struct.nfsd4_compound_state* %20, i32* %22, i32 %23, i32** %25)
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %42

30:                                               ; preds = %18
  %31 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %32 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %37 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @get_file(i32* %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @nfs_ok, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %28
  %43 = call i32 (...) @nfs4_unlock_state()
  %44 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %45 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %46 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %45, i32 0, i32 2
  store %struct.svc_rqst* %44, %struct.svc_rqst** %46, align 8
  %47 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %48 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %47, i32 0, i32 0
  %49 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %50 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %42, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @nfs4_lock_state(...) #1

declare dso_local i32 @nfs4_preprocess_stateid_op(%struct.nfsd4_compound_state*, i32*, i32, i32**) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @get_file(i32*) #1

declare dso_local i32 @nfs4_unlock_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_setattr = type { %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@nfs_ok = common dso_local global i64 0, align 8
@ATTR_SIZE = common dso_local global i32 0, align 4
@WR_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"NFSD: nfsd4_setattr: couldn't process stateid!\0A\00", align 1
@nfsd_attrmask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_setattr*)* @nfsd4_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_setattr(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_setattr* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_setattr*, align 8
  %8 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_setattr* %2, %struct.nfsd4_setattr** %7, align 8
  %9 = load i64, i64* @nfs_ok, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %7, align 8
  %11 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ATTR_SIZE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = call i32 (...) @nfs4_lock_state()
  %19 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %20 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %20, i32 0, i32 3
  %22 = load i32, i32* @WR_STATE, align 4
  %23 = call i64 @nfs4_preprocess_stateid_op(%struct.nfsd4_compound_state* %19, i32* %21, i32 %22, i32* null)
  store i64 %23, i64* %8, align 8
  %24 = call i32 (...) @nfs4_unlock_state()
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = call i32 @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %4, align 8
  br label %80

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %33 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %32, i32 0, i32 0
  %34 = call i64 @fh_want_write(i32* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %4, align 8
  br label %80

39:                                               ; preds = %31
  %40 = load i64, i64* @nfs_ok, align 8
  store i64 %40, i64* %8, align 8
  %41 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %42 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %43 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %7, align 8
  %44 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @nfsd_attrmask, align 4
  %47 = call i64 @check_attr_support(%struct.svc_rqst* %41, %struct.nfsd4_compound_state* %42, i32 %45, i32 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %75

51:                                               ; preds = %39
  %52 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %7, align 8
  %53 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %58 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %59 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %58, i32 0, i32 0
  %60 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %7, align 8
  %61 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @nfsd4_set_nfs4_acl(%struct.svc_rqst* %57, i32* %59, i32* %62)
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %56, %51
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %75

68:                                               ; preds = %64
  %69 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %70 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %71 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %70, i32 0, i32 0
  %72 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %7, align 8
  %73 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %72, i32 0, i32 0
  %74 = call i64 @nfsd_setattr(%struct.svc_rqst* %69, i32* %71, %struct.TYPE_2__* %73, i32 0, i32 0)
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %68, %67, %50
  %76 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %77 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %76, i32 0, i32 0
  %78 = call i32 @fh_drop_write(i32* %77)
  %79 = load i64, i64* %8, align 8
  store i64 %79, i64* %4, align 8
  br label %80

80:                                               ; preds = %75, %37, %27
  %81 = load i64, i64* %4, align 8
  ret i64 %81
}

declare dso_local i32 @nfs4_lock_state(...) #1

declare dso_local i64 @nfs4_preprocess_stateid_op(%struct.nfsd4_compound_state*, i32*, i32, i32*) #1

declare dso_local i32 @nfs4_unlock_state(...) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @fh_want_write(i32*) #1

declare dso_local i64 @check_attr_support(%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32, i32) #1

declare dso_local i64 @nfsd4_set_nfs4_acl(%struct.svc_rqst*, i32*, i32*) #1

declare dso_local i64 @nfsd_setattr(%struct.svc_rqst*, i32*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @fh_drop_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

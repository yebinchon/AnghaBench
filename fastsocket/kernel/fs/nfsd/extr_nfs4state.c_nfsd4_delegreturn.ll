; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_delegreturn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_delegreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfsd4_delegreturn = type { i32 }
%struct.nfs4_delegation = type { i32, i32 }

@S_IFREG = common dso_local global i32 0, align 4
@HAS_SESSION = common dso_local global i32 0, align 4
@nfserr_bad_stateid = common dso_local global i64 0, align 8
@nfserr_stale_stateid = common dso_local global i64 0, align 8
@nfserr_expired = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_delegreturn(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_delegreturn* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_delegreturn*, align 8
  %8 = alloca %struct.nfs4_delegation*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_delegreturn* %2, %struct.nfsd4_delegreturn** %7, align 8
  %13 = load %struct.nfsd4_delegreturn*, %struct.nfsd4_delegreturn** %7, align 8
  %14 = getelementptr inbounds %struct.nfsd4_delegreturn, %struct.nfsd4_delegreturn* %13, i32 0, i32 0
  store i32* %14, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %16 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %16, i32 0, i32 0
  %18 = load i32, i32* @S_IFREG, align 4
  %19 = call i64 @fh_verify(%struct.svc_rqst* %15, %struct.TYPE_4__* %17, i32 %18, i32 0)
  store i64 %19, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %11, align 8
  store i64 %22, i64* %4, align 8
  br label %87

23:                                               ; preds = %3
  %24 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %25 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %10, align 8
  %30 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %31 = call i64 @nfsd4_has_session(%struct.nfsd4_compound_state* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32, i32* @HAS_SESSION, align 4
  %35 = load i32, i32* %12, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %33, %23
  %38 = call i32 (...) @nfs4_lock_state()
  %39 = load i64, i64* @nfserr_bad_stateid, align 8
  store i64 %39, i64* %11, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @ZERO_STATEID(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @ONE_STATEID(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %37
  br label %84

48:                                               ; preds = %43
  %49 = load i64, i64* @nfserr_stale_stateid, align 8
  store i64 %49, i64* %11, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i64 @STALE_STATEID(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %84

54:                                               ; preds = %48
  %55 = load i64, i64* @nfserr_bad_stateid, align 8
  store i64 %55, i64* %11, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @is_delegation_stateid(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %84

60:                                               ; preds = %54
  %61 = load i64, i64* @nfserr_expired, align 8
  store i64 %61, i64* %11, align 8
  %62 = load %struct.inode*, %struct.inode** %10, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call %struct.nfs4_delegation* @find_delegation_stateid(%struct.inode* %62, i32* %63)
  store %struct.nfs4_delegation* %64, %struct.nfs4_delegation** %8, align 8
  %65 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %8, align 8
  %66 = icmp ne %struct.nfs4_delegation* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %84

68:                                               ; preds = %60
  %69 = load i32*, i32** %9, align 8
  %70 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %8, align 8
  %71 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %70, i32 0, i32 1
  %72 = load i32, i32* %12, align 4
  %73 = call i64 @check_stateid_generation(i32* %69, i32* %71, i32 %72)
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %84

77:                                               ; preds = %68
  %78 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %8, align 8
  %79 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @renew_client(i32 %80)
  %82 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %8, align 8
  %83 = call i32 @unhash_delegation(%struct.nfs4_delegation* %82)
  br label %84

84:                                               ; preds = %77, %76, %67, %59, %53, %47
  %85 = call i32 (...) @nfs4_unlock_state()
  %86 = load i64, i64* %11, align 8
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %84, %21
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i32 @nfs4_lock_state(...) #1

declare dso_local i64 @ZERO_STATEID(i32*) #1

declare dso_local i64 @ONE_STATEID(i32*) #1

declare dso_local i64 @STALE_STATEID(i32*) #1

declare dso_local i32 @is_delegation_stateid(i32*) #1

declare dso_local %struct.nfs4_delegation* @find_delegation_stateid(%struct.inode*, i32*) #1

declare dso_local i64 @check_stateid_generation(i32*, i32*, i32) #1

declare dso_local i32 @renew_client(i32) #1

declare dso_local i32 @unhash_delegation(%struct.nfs4_delegation*) #1

declare dso_local i32 @nfs4_unlock_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_open_downgrade.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_open_downgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.nfsd4_open_downgrade = type { i64, i32, i32, i32, i32 }
%struct.nfs4_stateid = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"NFSD: nfsd4_open_downgrade on file %.*s\0A\00", align 1
@nfserr_inval = common dso_local global i32 0, align 4
@OPEN_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"NFSD:access not a subset current bitmap: 0x%lx, input access=%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"NFSD:deny not a subset current bitmap: 0x%lx, input deny=%08x\0A\00", align 1
@nfs_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_open_downgrade(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_open_downgrade* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_open_downgrade*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs4_stateid*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_open_downgrade* %2, %struct.nfsd4_open_downgrade** %7, align 8
  %10 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %19 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %24)
  %26 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %27 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %30 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @access_valid(i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %36 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @deny_valid(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34, %3
  %41 = load i32, i32* @nfserr_inval, align 4
  store i32 %41, i32* %4, align 4
  br label %128

42:                                               ; preds = %34
  %43 = call i32 (...) @nfs4_lock_state()
  %44 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %45 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %46 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %49 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %48, i32 0, i32 1
  %50 = load i32, i32* @OPEN_STATE, align 4
  %51 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %52 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %51, i32 0, i32 0
  %53 = call i32 @nfs4_preprocess_seqid_op(%struct.nfsd4_compound_state* %44, i32 %47, i32* %49, i32 %50, i64* %52, %struct.nfs4_stateid** %9, i32* null)
  store i32 %53, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %110

56:                                               ; preds = %42
  %57 = load i32, i32* @nfserr_inval, align 4
  store i32 %57, i32* %8, align 4
  %58 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %59 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %9, align 8
  %62 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %61, i32 0, i32 0
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %56
  %66 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %9, align 8
  %67 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %70 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dprintk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %71)
  br label %110

73:                                               ; preds = %56
  %74 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %75 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %9, align 8
  %78 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %77, i32 0, i32 1
  %79 = call i32 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  %82 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %9, align 8
  %83 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %86 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dprintk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %87)
  br label %110

89:                                               ; preds = %73
  %90 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %9, align 8
  %91 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %92 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @nfs4_file_downgrade(%struct.nfs4_stateid* %90, i32 %93)
  %95 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %96 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %9, align 8
  %99 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %98, i32 0, i32 1
  %100 = call i32 @reset_union_bmap_deny(i32 %97, i32* %99)
  %101 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %9, align 8
  %102 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %101, i32 0, i32 2
  %103 = call i32 @update_stateid(i32* %102)
  %104 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %105 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %104, i32 0, i32 1
  %106 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %9, align 8
  %107 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %106, i32 0, i32 2
  %108 = call i32 @memcpy(i32* %105, i32* %107, i32 4)
  %109 = load i32, i32* @nfs_ok, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %89, %81, %65, %55
  %111 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %112 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %117 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @nfs4_get_stateowner(i64 %118)
  %120 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %7, align 8
  %121 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %124 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %115, %110
  %126 = call i32 (...) @nfs4_unlock_state()
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %125, %40
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @access_valid(i32, i32) #1

declare dso_local i32 @deny_valid(i32) #1

declare dso_local i32 @nfs4_lock_state(...) #1

declare dso_local i32 @nfs4_preprocess_seqid_op(%struct.nfsd4_compound_state*, i32, i32*, i32, i64*, %struct.nfs4_stateid**, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_file_downgrade(%struct.nfs4_stateid*, i32) #1

declare dso_local i32 @reset_union_bmap_deny(i32, i32*) #1

declare dso_local i32 @update_stateid(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nfs4_get_stateowner(i64) #1

declare dso_local i32 @nfs4_unlock_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

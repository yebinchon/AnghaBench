; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.nfsd4_close = type { %struct.TYPE_10__*, i32, i32 }
%struct.nfs4_stateid = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"NFSD: nfsd4_close on file %.*s\0A\00", align 1
@OPEN_STATE = common dso_local global i32 0, align 4
@CLOSE_STATE = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_close(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_close* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %struct.nfsd4_close*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs4_stateid*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %struct.nfsd4_close* %2, %struct.nfsd4_close** %6, align 8
  %9 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %10 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %23)
  %25 = call i32 (...) @nfs4_lock_state()
  %26 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %27 = load %struct.nfsd4_close*, %struct.nfsd4_close** %6, align 8
  %28 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nfsd4_close*, %struct.nfsd4_close** %6, align 8
  %31 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %30, i32 0, i32 1
  %32 = load i32, i32* @OPEN_STATE, align 4
  %33 = load i32, i32* @CLOSE_STATE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.nfsd4_close*, %struct.nfsd4_close** %6, align 8
  %36 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %35, i32 0, i32 0
  %37 = call i32 @nfs4_preprocess_seqid_op(%struct.nfsd4_compound_state* %26, i32 %29, i32* %31, i32 %34, %struct.TYPE_10__** %36, %struct.nfs4_stateid** %8, i32* null)
  store i32 %37, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  br label %64

40:                                               ; preds = %3
  %41 = load i32, i32* @nfs_ok, align 4
  store i32 %41, i32* %7, align 4
  %42 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %8, align 8
  %43 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %42, i32 0, i32 0
  %44 = call i32 @update_stateid(i32* %43)
  %45 = load %struct.nfsd4_close*, %struct.nfsd4_close** %6, align 8
  %46 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %45, i32 0, i32 1
  %47 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %8, align 8
  %48 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %47, i32 0, i32 0
  %49 = call i32 @memcpy(i32* %46, i32* %48, i32 4)
  %50 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %8, align 8
  %51 = call i32 @release_open_stateid(%struct.nfs4_stateid* %50)
  %52 = load %struct.nfsd4_close*, %struct.nfsd4_close** %6, align 8
  %53 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = call i64 @list_empty(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %40
  %59 = load %struct.nfsd4_close*, %struct.nfsd4_close** %6, align 8
  %60 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = call i32 @move_to_close_lru(%struct.TYPE_10__* %61)
  br label %63

63:                                               ; preds = %58, %40
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.nfsd4_close*, %struct.nfsd4_close** %6, align 8
  %66 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = icmp ne %struct.TYPE_10__* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.nfsd4_close*, %struct.nfsd4_close** %6, align 8
  %71 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = call i32 @nfs4_get_stateowner(%struct.TYPE_10__* %72)
  %74 = load %struct.nfsd4_close*, %struct.nfsd4_close** %6, align 8
  %75 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %78 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %77, i32 0, i32 0
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %78, align 8
  br label %79

79:                                               ; preds = %69, %64
  %80 = call i32 (...) @nfs4_unlock_state()
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @nfs4_lock_state(...) #1

declare dso_local i32 @nfs4_preprocess_seqid_op(%struct.nfsd4_compound_state*, i32, i32*, i32, %struct.TYPE_10__**, %struct.nfs4_stateid**, i32*) #1

declare dso_local i32 @update_stateid(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @release_open_stateid(%struct.nfs4_stateid*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @move_to_close_lru(%struct.TYPE_10__*) #1

declare dso_local i32 @nfs4_get_stateowner(%struct.TYPE_10__*) #1

declare dso_local i32 @nfs4_unlock_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

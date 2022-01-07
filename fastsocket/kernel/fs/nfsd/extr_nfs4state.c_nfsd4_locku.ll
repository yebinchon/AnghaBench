; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_locku.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_locku.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i64 }
%struct.nfsd4_locku = type { i64, i32, i64, i64, i32 }
%struct.nfs4_stateid = type { i32, i32 }
%struct.file = type { i32 }
%struct.file_lock = type { i32, i64, i32*, i32, %struct.file*, i32, i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"NFSD: nfsd4_locku: start=%Ld length=%Ld\0A\00", align 1
@nfserr_inval = common dso_local global i32 0, align 4
@LOCK_STATE = common dso_local global i32 0, align 4
@nfserr_lock_range = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@FL_POSIX = common dso_local global i32 0, align 4
@nfsd_posix_mng_ops = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"NFSD: nfs4_locku: vfs_lock_file failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_locku(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_locku* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_locku*, align 8
  %8 = alloca %struct.nfs4_stateid*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.file_lock, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_locku* %2, %struct.nfsd4_locku** %7, align 8
  store %struct.file* null, %struct.file** %9, align 8
  %13 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %14 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %18)
  %20 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %24 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @check_lock_length(i64 %22, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @nfserr_inval, align 4
  store i32 %29, i32* %4, align 4
  br label %125

30:                                               ; preds = %3
  %31 = call i32 (...) @nfs4_lock_state()
  %32 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %33 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %34 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %37 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %36, i32 0, i32 1
  %38 = load i32, i32* @LOCK_STATE, align 4
  %39 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %40 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %39, i32 0, i32 0
  %41 = call i32 @nfs4_preprocess_seqid_op(%struct.nfsd4_compound_state* %32, i32 %35, i32* %37, i32 %38, i64* %40, %struct.nfs4_stateid** %8, i32* null)
  store i32 %41, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %104

44:                                               ; preds = %30
  %45 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %8, align 8
  %46 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.file* @find_any_file(i32 %47)
  store %struct.file* %48, %struct.file** %9, align 8
  %49 = load %struct.file*, %struct.file** %9, align 8
  %50 = icmp ne %struct.file* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @nfserr_lock_range, align 4
  store i32 %52, i32* %11, align 4
  br label %104

53:                                               ; preds = %44
  %54 = load %struct.file*, %struct.file** %9, align 8
  %55 = icmp ne %struct.file* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = call i32 @locks_init_lock(%struct.file_lock* %10)
  %60 = load i32, i32* @F_UNLCK, align 4
  %61 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 7
  store i32 %60, i32* %61, align 8
  %62 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %63 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 6
  store i64 %64, i64* %65, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 5
  store i32 %68, i32* %69, align 8
  %70 = load %struct.file*, %struct.file** %9, align 8
  %71 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 4
  store %struct.file* %70, %struct.file** %71, align 8
  %72 = load i32, i32* @FL_POSIX, align 4
  %73 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 3
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 2
  store i32* @nfsd_posix_mng_ops, i32** %74, align 8
  %75 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %76 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 1
  store i64 %77, i64* %78, align 8
  %79 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %80 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %83 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @last_byte_offset(i64 %81, i64 %84)
  %86 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = call i32 @nfs4_transform_lock_offset(%struct.file_lock* %10)
  %88 = load %struct.file*, %struct.file** %9, align 8
  %89 = load i32, i32* @F_SETLK, align 4
  %90 = call i32 @vfs_lock_file(%struct.file* %88, i32 %89, %struct.file_lock* %10, i32* null)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %53
  %94 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %122

95:                                               ; preds = %53
  %96 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %8, align 8
  %97 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %96, i32 0, i32 0
  %98 = call i32 @update_stateid(i32* %97)
  %99 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %100 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %99, i32 0, i32 1
  %101 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %8, align 8
  %102 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %101, i32 0, i32 0
  %103 = call i32 @memcpy(i32* %100, i32* %102, i32 4)
  br label %104

104:                                              ; preds = %122, %95, %51, %43
  %105 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %106 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %111 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @nfs4_get_stateowner(i64 %112)
  %114 = load %struct.nfsd4_locku*, %struct.nfsd4_locku** %7, align 8
  %115 = getelementptr inbounds %struct.nfsd4_locku, %struct.nfsd4_locku* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %118 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %109, %104
  %120 = call i32 (...) @nfs4_unlock_state()
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %4, align 4
  br label %125

122:                                              ; preds = %93
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @nfserrno(i32 %123)
  store i32 %124, i32* %11, align 4
  br label %104

125:                                              ; preds = %119, %28
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @check_lock_length(i64, i64) #1

declare dso_local i32 @nfs4_lock_state(...) #1

declare dso_local i32 @nfs4_preprocess_seqid_op(%struct.nfsd4_compound_state*, i32, i32*, i32, i64*, %struct.nfs4_stateid**, i32*) #1

declare dso_local %struct.file* @find_any_file(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @locks_init_lock(%struct.file_lock*) #1

declare dso_local i32 @last_byte_offset(i64, i64) #1

declare dso_local i32 @nfs4_transform_lock_offset(%struct.file_lock*) #1

declare dso_local i32 @vfs_lock_file(%struct.file*, i32, %struct.file_lock*, i32*) #1

declare dso_local i32 @update_stateid(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nfs4_get_stateowner(i64) #1

declare dso_local i32 @nfs4_unlock_state(...) #1

declare dso_local i32 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

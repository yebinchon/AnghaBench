; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_lockt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_lockt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfsd4_lockt = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.file_lock = type { i64, i32, i32, i32, i32, i64 }

@nfserr_grace = common dso_local global i64 0, align 8
@nfserr_inval = common dso_local global i64 0, align 8
@nfserr_stale_clientid = common dso_local global i64 0, align 8
@S_IFREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"NFSD: nfsd4_lockt: fh_verify() failed!\0A\00", align 1
@nfserr_symlink = common dso_local global i64 0, align 8
@F_RDLCK = common dso_local global i64 0, align 8
@F_WRLCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"NFSD: nfs4_lockt: bad lock type!\0A\00", align 1
@current = common dso_local global %struct.TYPE_7__* null, align 8
@FL_POSIX = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8
@F_UNLCK = common dso_local global i64 0, align 8
@nfserr_denied = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_lockt(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_lockt* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_lockt*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.file_lock, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_lockt* %2, %struct.nfsd4_lockt** %7, align 8
  %12 = call i64 (...) @locks_in_grace()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @nfserr_grace, align 8
  store i64 %15, i64* %4, align 8
  br label %139

16:                                               ; preds = %3
  %17 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @check_lock_length(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i64, i64* @nfserr_inval, align 8
  store i64 %26, i64* %4, align 8
  br label %139

27:                                               ; preds = %16
  %28 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %28, i32 0, i32 4
  store i32* null, i32** %29, align 8
  %30 = call i32 (...) @nfs4_lock_state()
  %31 = load i64, i64* @nfserr_stale_clientid, align 8
  store i64 %31, i64* %11, align 8
  %32 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %33 = call i32 @nfsd4_has_session(%struct.nfsd4_compound_state* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %37 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %36, i32 0, i32 6
  %38 = call i64 @STALE_CLIENTID(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %136

41:                                               ; preds = %35, %27
  %42 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %43 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %44 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %43, i32 0, i32 0
  %45 = load i32, i32* @S_IFREG, align 4
  %46 = call i64 @fh_verify(%struct.svc_rqst* %42, %struct.TYPE_6__* %44, i32 %45, i32 0)
  store i64 %46, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @nfserr_symlink, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i64, i64* @nfserr_inval, align 8
  store i64 %54, i64* %11, align 8
  br label %55

55:                                               ; preds = %53, %48
  br label %136

56:                                               ; preds = %41
  %57 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %58 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.inode*, %struct.inode** %61, align 8
  store %struct.inode* %62, %struct.inode** %8, align 8
  %63 = call i32 @locks_init_lock(%struct.file_lock* %9)
  %64 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %65 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %73 [
    i32 130, label %67
    i32 131, label %67
    i32 128, label %70
    i32 129, label %70
  ]

67:                                               ; preds = %56, %56
  %68 = load i64, i64* @F_RDLCK, align 8
  %69 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %9, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  br label %76

70:                                               ; preds = %56, %56
  %71 = load i64, i64* @F_WRLCK, align 8
  %72 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %9, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  br label %76

73:                                               ; preds = %56
  %74 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i64, i64* @nfserr_inval, align 8
  store i64 %75, i64* %11, align 8
  br label %136

76:                                               ; preds = %70, %67
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %79 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %78, i32 0, i32 6
  %80 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %81 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %80, i32 0, i32 5
  %82 = call i32* @find_lockstateowner_str(%struct.inode* %77, i32* %79, i32* %81)
  %83 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %84 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %83, i32 0, i32 4
  store i32* %82, i32** %84, align 8
  %85 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %86 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %76
  %90 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %91 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = ptrtoint i32* %92 to i64
  %94 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %9, i32 0, i32 5
  store i64 %93, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %76
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %9, i32 0, i32 4
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* @FL_POSIX, align 4
  %101 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %9, i32 0, i32 3
  store i32 %100, i32* %101, align 8
  %102 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %103 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %9, i32 0, i32 2
  store i32 %104, i32* %105, align 4
  %106 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %107 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %110 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @last_byte_offset(i32 %108, i32 %111)
  %113 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %9, i32 0, i32 1
  store i32 %112, i32* %113, align 8
  %114 = call i32 @nfs4_transform_lock_offset(%struct.file_lock* %9)
  %115 = load i64, i64* @nfs_ok, align 8
  store i64 %115, i64* %11, align 8
  %116 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %117 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %118 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %117, i32 0, i32 0
  %119 = call i32 @nfsd_test_lock(%struct.svc_rqst* %116, %struct.TYPE_6__* %118, %struct.file_lock* %9)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %95
  %123 = load i32, i32* %10, align 4
  %124 = call i64 @nfserrno(i32 %123)
  store i64 %124, i64* %11, align 8
  br label %136

125:                                              ; preds = %95
  %126 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %9, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @F_UNLCK, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i64, i64* @nfserr_denied, align 8
  store i64 %131, i64* %11, align 8
  %132 = load %struct.nfsd4_lockt*, %struct.nfsd4_lockt** %7, align 8
  %133 = getelementptr inbounds %struct.nfsd4_lockt, %struct.nfsd4_lockt* %132, i32 0, i32 1
  %134 = call i32 @nfs4_set_lock_denied(%struct.file_lock* %9, i32* %133)
  br label %135

135:                                              ; preds = %130, %125
  br label %136

136:                                              ; preds = %135, %122, %73, %55, %40
  %137 = call i32 (...) @nfs4_unlock_state()
  %138 = load i64, i64* %11, align 8
  store i64 %138, i64* %4, align 8
  br label %139

139:                                              ; preds = %136, %25, %14
  %140 = load i64, i64* %4, align 8
  ret i64 %140
}

declare dso_local i64 @locks_in_grace(...) #1

declare dso_local i64 @check_lock_length(i32, i32) #1

declare dso_local i32 @nfs4_lock_state(...) #1

declare dso_local i32 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i64 @STALE_CLIENTID(i32*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @locks_init_lock(%struct.file_lock*) #1

declare dso_local i32* @find_lockstateowner_str(%struct.inode*, i32*, i32*) #1

declare dso_local i32 @last_byte_offset(i32, i32) #1

declare dso_local i32 @nfs4_transform_lock_offset(%struct.file_lock*) #1

declare dso_local i32 @nfsd_test_lock(%struct.svc_rqst*, %struct.TYPE_6__*, %struct.file_lock*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @nfs4_set_lock_denied(%struct.file_lock*, i32*) #1

declare dso_local i32 @nfs4_unlock_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

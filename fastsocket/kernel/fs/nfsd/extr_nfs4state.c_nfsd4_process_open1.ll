; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_process_open1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_process_open1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_open = type { i32, %struct.nfs4_stateowner*, i32, %struct.TYPE_6__ }
%struct.nfs4_stateowner = type { i32, %struct.nfs4_client*, i32, %struct.TYPE_5__, i32 }
%struct.nfs4_client = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@nfserr_inval = common dso_local global i32 0, align 4
@nfserr_stale_clientid = common dso_local global i32 0, align 4
@nfserr_expired = common dso_local global i32 0, align 4
@nfserr_replay_me = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"nfsd4_process_open1: replay with no replay cache\0A\00", align 1
@nfserr_bad_seqid = common dso_local global i32 0, align 4
@nfserr_resource = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_process_open1(%struct.nfsd4_compound_state* %0, %struct.nfsd4_open* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compound_state*, align 8
  %5 = alloca %struct.nfsd4_open*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.nfs4_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs4_stateowner*, align 8
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %4, align 8
  store %struct.nfsd4_open* %1, %struct.nfsd4_open** %5, align 8
  %10 = load %struct.nfsd4_open*, %struct.nfsd4_open** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %10, i32 0, i32 3
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  store %struct.nfs4_client* null, %struct.nfs4_client** %7, align 8
  store %struct.nfs4_stateowner* null, %struct.nfs4_stateowner** %9, align 8
  %12 = load %struct.nfsd4_open*, %struct.nfsd4_open** %5, align 8
  %13 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @check_name(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @nfserr_inval, align 4
  store i32 %18, i32* %3, align 4
  br label %125

19:                                               ; preds = %2
  %20 = load %struct.nfsd4_open*, %struct.nfsd4_open** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %20, i32 0, i32 3
  %22 = call i64 @STALE_CLIENTID(%struct.TYPE_6__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @nfserr_stale_clientid, align 4
  store i32 %25, i32* %3, align 4
  br label %125

26:                                               ; preds = %19
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nfsd4_open*, %struct.nfsd4_open** %5, align 8
  %31 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ownerstr_hashval(i32 %29, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.nfsd4_open*, %struct.nfsd4_open** %5, align 8
  %36 = call %struct.nfs4_stateowner* @find_openstateowner_str(i32 %34, %struct.nfsd4_open* %35)
  store %struct.nfs4_stateowner* %36, %struct.nfs4_stateowner** %9, align 8
  %37 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %9, align 8
  %38 = load %struct.nfsd4_open*, %struct.nfsd4_open** %5, align 8
  %39 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %38, i32 0, i32 1
  store %struct.nfs4_stateowner* %37, %struct.nfs4_stateowner** %39, align 8
  %40 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %9, align 8
  %41 = icmp ne %struct.nfs4_stateowner* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %26
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = call %struct.nfs4_client* @find_confirmed_client(%struct.TYPE_6__* %43)
  store %struct.nfs4_client* %44, %struct.nfs4_client** %7, align 8
  %45 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %46 = icmp eq %struct.nfs4_client* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @nfserr_expired, align 4
  store i32 %48, i32* %3, align 4
  br label %125

49:                                               ; preds = %42
  br label %98

50:                                               ; preds = %26
  %51 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %4, align 8
  %52 = call i64 @nfsd4_has_session(%struct.nfsd4_compound_state* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %98

55:                                               ; preds = %50
  %56 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %9, align 8
  %57 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %9, align 8
  %62 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %61, i32 0, i32 1
  %63 = load %struct.nfs4_client*, %struct.nfs4_client** %62, align 8
  store %struct.nfs4_client* %63, %struct.nfs4_client** %7, align 8
  %64 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %9, align 8
  %65 = call i32 @release_openowner(%struct.nfs4_stateowner* %64)
  %66 = load %struct.nfsd4_open*, %struct.nfsd4_open** %5, align 8
  %67 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %66, i32 0, i32 1
  store %struct.nfs4_stateowner* null, %struct.nfs4_stateowner** %67, align 8
  br label %98

68:                                               ; preds = %55
  %69 = load %struct.nfsd4_open*, %struct.nfsd4_open** %5, align 8
  %70 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %9, align 8
  %73 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = icmp eq i32 %71, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %68
  %78 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %9, align 8
  %79 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @nfserr_replay_me, align 4
  store i32 %84, i32* %3, align 4
  br label %125

85:                                               ; preds = %77
  %86 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %98

87:                                               ; preds = %68
  %88 = load %struct.nfsd4_open*, %struct.nfsd4_open** %5, align 8
  %89 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %9, align 8
  %92 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @nfserr_bad_seqid, align 4
  store i32 %96, i32* %3, align 4
  br label %125

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %85, %60, %54, %49
  %99 = load %struct.nfsd4_open*, %struct.nfsd4_open** %5, align 8
  %100 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %99, i32 0, i32 1
  %101 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %100, align 8
  %102 = icmp eq %struct.nfs4_stateowner* %101, null
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %106 = load %struct.nfsd4_open*, %struct.nfsd4_open** %5, align 8
  %107 = call %struct.nfs4_stateowner* @alloc_init_open_stateowner(i32 %104, %struct.nfs4_client* %105, %struct.nfsd4_open* %106)
  store %struct.nfs4_stateowner* %107, %struct.nfs4_stateowner** %9, align 8
  %108 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %9, align 8
  %109 = icmp eq %struct.nfs4_stateowner* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @nfserr_resource, align 4
  store i32 %111, i32* %3, align 4
  br label %125

112:                                              ; preds = %103
  %113 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %9, align 8
  %114 = load %struct.nfsd4_open*, %struct.nfsd4_open** %5, align 8
  %115 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %114, i32 0, i32 1
  store %struct.nfs4_stateowner* %113, %struct.nfs4_stateowner** %115, align 8
  br label %116

116:                                              ; preds = %112, %98
  %117 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %9, align 8
  %118 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %117, i32 0, i32 2
  %119 = call i32 @list_del_init(i32* %118)
  %120 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %9, align 8
  %121 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %120, i32 0, i32 1
  %122 = load %struct.nfs4_client*, %struct.nfs4_client** %121, align 8
  %123 = call i32 @renew_client(%struct.nfs4_client* %122)
  %124 = load i32, i32* @nfs_ok, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %116, %110, %95, %83, %47, %24, %17
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @check_name(i32) #1

declare dso_local i64 @STALE_CLIENTID(%struct.TYPE_6__*) #1

declare dso_local i32 @ownerstr_hashval(i32, i32) #1

declare dso_local %struct.nfs4_stateowner* @find_openstateowner_str(i32, %struct.nfsd4_open*) #1

declare dso_local %struct.nfs4_client* @find_confirmed_client(%struct.TYPE_6__*) #1

declare dso_local i64 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i32 @release_openowner(%struct.nfs4_stateowner*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local %struct.nfs4_stateowner* @alloc_init_open_stateowner(i32, %struct.nfs4_client*, %struct.nfsd4_open*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @renew_client(%struct.nfs4_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

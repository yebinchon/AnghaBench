; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_init_lock_stateowner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_init_lock_stateowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stateowner = type { i32, %struct.nfs4_replay, i64, %struct.nfs4_client*, i64, i64, i32, i32, i32, i64, i32, i32, i32 }
%struct.nfs4_replay = type { i32, i32, i64, i32 }
%struct.nfs4_client = type { i32 }
%struct.nfs4_stateid = type { i32 }
%struct.nfsd4_lock = type { i64, i32 }

@current_ownerid = common dso_local global i32 0, align 4
@lock_ownerid_hashtbl = common dso_local global i32* null, align 8
@lock_ownerstr_hashtbl = common dso_local global i32* null, align 8
@nfserr_serverfault = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_stateowner* (i32, %struct.nfs4_client*, %struct.nfs4_stateid*, %struct.nfsd4_lock*)* @alloc_init_lock_stateowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_stateowner* @alloc_init_lock_stateowner(i32 %0, %struct.nfs4_client* %1, %struct.nfs4_stateid* %2, %struct.nfsd4_lock* %3) #0 {
  %5 = alloca %struct.nfs4_stateowner*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs4_client*, align 8
  %8 = alloca %struct.nfs4_stateid*, align 8
  %9 = alloca %struct.nfsd4_lock*, align 8
  %10 = alloca %struct.nfs4_stateowner*, align 8
  %11 = alloca %struct.nfs4_replay*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.nfs4_client* %1, %struct.nfs4_client** %7, align 8
  store %struct.nfs4_stateid* %2, %struct.nfs4_stateid** %8, align 8
  store %struct.nfsd4_lock* %3, %struct.nfsd4_lock** %9, align 8
  %13 = load %struct.nfsd4_lock*, %struct.nfsd4_lock** %9, align 8
  %14 = getelementptr inbounds %struct.nfsd4_lock, %struct.nfsd4_lock* %13, i32 0, i32 1
  %15 = call %struct.nfs4_stateowner* @alloc_stateowner(i32* %14)
  store %struct.nfs4_stateowner* %15, %struct.nfs4_stateowner** %10, align 8
  %16 = icmp ne %struct.nfs4_stateowner* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.nfs4_stateowner* null, %struct.nfs4_stateowner** %5, align 8
  br label %91

18:                                               ; preds = %4
  %19 = load i32, i32* @current_ownerid, align 4
  %20 = call i32 @lockownerid_hashval(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %22 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %21, i32 0, i32 8
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %25 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %24, i32 0, i32 7
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %28 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %27, i32 0, i32 12
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %31 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %30, i32 0, i32 11
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %34 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %33, i32 0, i32 6
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %37 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %36, i32 0, i32 10
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %40 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %39, i32 0, i32 9
  store i64 0, i64* %40, align 8
  %41 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %42 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %41, i32 0, i32 8
  %43 = load i32*, i32** @lock_ownerid_hashtbl, align 8
  %44 = load i32, i32* %12, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @list_add(i32* %42, i32* %46)
  %48 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %49 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %48, i32 0, i32 7
  %50 = load i32*, i32** @lock_ownerstr_hashtbl, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @list_add(i32* %49, i32* %53)
  %55 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %56 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %55, i32 0, i32 6
  %57 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %8, align 8
  %58 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %57, i32 0, i32 0
  %59 = call i32 @list_add(i32* %56, i32* %58)
  %60 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %61 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @current_ownerid, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @current_ownerid, align 4
  %64 = sext i32 %62 to i64
  %65 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %66 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %68 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %69 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %68, i32 0, i32 3
  store %struct.nfs4_client* %67, %struct.nfs4_client** %69, align 8
  %70 = load %struct.nfsd4_lock*, %struct.nfsd4_lock** %9, align 8
  %71 = getelementptr inbounds %struct.nfsd4_lock, %struct.nfsd4_lock* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  %74 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %75 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %77 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  %79 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %78, i32 0, i32 1
  store %struct.nfs4_replay* %79, %struct.nfs4_replay** %11, align 8
  %80 = load i32, i32* @nfserr_serverfault, align 4
  %81 = load %struct.nfs4_replay*, %struct.nfs4_replay** %11, align 8
  %82 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.nfs4_replay*, %struct.nfs4_replay** %11, align 8
  %84 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.nfs4_replay*, %struct.nfs4_replay** %11, align 8
  %86 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.nfs4_replay*, %struct.nfs4_replay** %11, align 8
  %89 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  store %struct.nfs4_stateowner* %90, %struct.nfs4_stateowner** %5, align 8
  br label %91

91:                                               ; preds = %18, %17
  %92 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %5, align 8
  ret %struct.nfs4_stateowner* %92
}

declare dso_local %struct.nfs4_stateowner* @alloc_stateowner(i32*) #1

declare dso_local i32 @lockownerid_hashval(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_init_open_stateowner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_init_open_stateowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stateowner = type { i32, %struct.nfs4_replay, i64, i32, %struct.nfs4_client*, i64, i32, i32, i32, i64, i32, i32, i32 }
%struct.nfs4_replay = type { i32, i32, i64, i32 }
%struct.nfs4_client = type { i32 }
%struct.nfsd4_open = type { i32, i32 }

@current_ownerid = common dso_local global i32 0, align 4
@ownerid_hashtbl = common dso_local global i32* null, align 8
@ownerstr_hashtbl = common dso_local global i32* null, align 8
@nfserr_serverfault = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_stateowner* (i32, %struct.nfs4_client*, %struct.nfsd4_open*)* @alloc_init_open_stateowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_stateowner* @alloc_init_open_stateowner(i32 %0, %struct.nfs4_client* %1, %struct.nfsd4_open* %2) #0 {
  %4 = alloca %struct.nfs4_stateowner*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs4_client*, align 8
  %7 = alloca %struct.nfsd4_open*, align 8
  %8 = alloca %struct.nfs4_stateowner*, align 8
  %9 = alloca %struct.nfs4_replay*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.nfs4_client* %1, %struct.nfs4_client** %6, align 8
  store %struct.nfsd4_open* %2, %struct.nfsd4_open** %7, align 8
  %11 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %12 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %11, i32 0, i32 1
  %13 = call %struct.nfs4_stateowner* @alloc_stateowner(i32* %12)
  store %struct.nfs4_stateowner* %13, %struct.nfs4_stateowner** %8, align 8
  %14 = icmp ne %struct.nfs4_stateowner* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.nfs4_stateowner* null, %struct.nfs4_stateowner** %4, align 8
  br label %88

16:                                               ; preds = %3
  %17 = load i32, i32* @current_ownerid, align 4
  %18 = call i32 @ownerid_hashval(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %20 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %19, i32 0, i32 8
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %23 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %22, i32 0, i32 7
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %26 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %25, i32 0, i32 6
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %29 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %28, i32 0, i32 12
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %32 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %31, i32 0, i32 11
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %35 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %34, i32 0, i32 10
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %38 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %37, i32 0, i32 9
  store i64 0, i64* %38, align 8
  %39 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %40 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %39, i32 0, i32 8
  %41 = load i32*, i32** @ownerid_hashtbl, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @list_add(i32* %40, i32* %44)
  %46 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %47 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %46, i32 0, i32 7
  %48 = load i32*, i32** @ownerstr_hashtbl, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @list_add(i32* %47, i32* %51)
  %53 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %54 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %53, i32 0, i32 6
  %55 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %56 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %55, i32 0, i32 0
  %57 = call i32 @list_add(i32* %54, i32* %56)
  %58 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %59 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load i32, i32* @current_ownerid, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @current_ownerid, align 4
  %62 = sext i32 %60 to i64
  %63 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %64 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %63, i32 0, i32 5
  store i64 %62, i64* %64, align 8
  %65 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %66 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %67 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %66, i32 0, i32 4
  store %struct.nfs4_client* %65, %struct.nfs4_client** %67, align 8
  %68 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %69 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %72 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %74 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  %76 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %75, i32 0, i32 1
  store %struct.nfs4_replay* %76, %struct.nfs4_replay** %9, align 8
  %77 = load i32, i32* @nfserr_serverfault, align 4
  %78 = load %struct.nfs4_replay*, %struct.nfs4_replay** %9, align 8
  %79 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.nfs4_replay*, %struct.nfs4_replay** %9, align 8
  %81 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.nfs4_replay*, %struct.nfs4_replay** %9, align 8
  %83 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.nfs4_replay*, %struct.nfs4_replay** %9, align 8
  %86 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %8, align 8
  store %struct.nfs4_stateowner* %87, %struct.nfs4_stateowner** %4, align 8
  br label %88

88:                                               ; preds = %16, %15
  %89 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  ret %struct.nfs4_stateowner* %89
}

declare dso_local %struct.nfs4_stateowner* @alloc_stateowner(i32*) #1

declare dso_local i32 @ownerid_hashval(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

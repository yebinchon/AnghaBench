; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_init_lock_stateid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_init_lock_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stateowner = type { i32, i32 }
%struct.nfs4_file = type { i32, i32 }
%struct.nfs4_stateid = type { %struct.nfs4_stateid*, i32, i64, %struct.TYPE_2__, %struct.nfs4_file*, %struct.nfs4_stateowner*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@lockstateid_hashtbl = common dso_local global i32* null, align 8
@boot_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_stateid* (%struct.nfs4_stateowner*, %struct.nfs4_file*, %struct.nfs4_stateid*)* @alloc_init_lock_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_stateid* @alloc_init_lock_stateid(%struct.nfs4_stateowner* %0, %struct.nfs4_file* %1, %struct.nfs4_stateid* %2) #0 {
  %4 = alloca %struct.nfs4_stateowner*, align 8
  %5 = alloca %struct.nfs4_file*, align 8
  %6 = alloca %struct.nfs4_stateid*, align 8
  %7 = alloca %struct.nfs4_stateid*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_stateowner* %0, %struct.nfs4_stateowner** %4, align 8
  store %struct.nfs4_file* %1, %struct.nfs4_file** %5, align 8
  store %struct.nfs4_stateid* %2, %struct.nfs4_stateid** %6, align 8
  %9 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %10 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %13 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @stateid_hashval(i32 %11, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = call %struct.nfs4_stateid* (...) @nfs4_alloc_stateid()
  store %struct.nfs4_stateid* %16, %struct.nfs4_stateid** %7, align 8
  %17 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %18 = icmp eq %struct.nfs4_stateid* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %87

20:                                               ; preds = %3
  %21 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %22 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %21, i32 0, i32 8
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %25 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %24, i32 0, i32 7
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %28 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %27, i32 0, i32 6
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %31 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %30, i32 0, i32 9
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %34 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %33, i32 0, i32 8
  %35 = load i32*, i32** @lockstateid_hashtbl, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @list_add(i32* %34, i32* %38)
  %40 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %41 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %40, i32 0, i32 7
  %42 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %43 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %42, i32 0, i32 1
  %44 = call i32 @list_add(i32* %41, i32* %43)
  %45 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %46 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %45, i32 0, i32 6
  %47 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %48 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %47, i32 0, i32 1
  %49 = call i32 @list_add(i32* %46, i32* %48)
  %50 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %51 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %52 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %51, i32 0, i32 5
  store %struct.nfs4_stateowner* %50, %struct.nfs4_stateowner** %52, align 8
  %53 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %54 = call i32 @get_nfs4_file(%struct.nfs4_file* %53)
  %55 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %56 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %57 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %56, i32 0, i32 4
  store %struct.nfs4_file* %55, %struct.nfs4_file** %57, align 8
  %58 = load i32, i32* @boot_time, align 4
  %59 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %60 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 8
  %62 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %63 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %66 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 4
  %68 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %69 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %72 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %75 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %78 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %6, align 8
  %80 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %83 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %6, align 8
  %85 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %86 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %85, i32 0, i32 0
  store %struct.nfs4_stateid* %84, %struct.nfs4_stateid** %86, align 8
  br label %87

87:                                               ; preds = %20, %19
  %88 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  ret %struct.nfs4_stateid* %88
}

declare dso_local i32 @stateid_hashval(i32, i32) #1

declare dso_local %struct.nfs4_stateid* @nfs4_alloc_stateid(...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @get_nfs4_file(%struct.nfs4_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

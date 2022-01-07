; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_init_stateid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_init_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stateid = type { i32*, i64, i64, %struct.TYPE_2__, %struct.nfs4_file*, %struct.nfs4_stateowner*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.nfs4_stateowner = type { i32, i32 }
%struct.nfs4_file = type { i32, i32 }
%struct.nfsd4_open = type { i32, i32, %struct.nfs4_stateowner* }

@stateid_hashtbl = common dso_local global i32* null, align 8
@boot_time = common dso_local global i32 0, align 4
@NFS4_SHARE_WANT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_stateid*, %struct.nfs4_file*, %struct.nfsd4_open*)* @init_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_stateid(%struct.nfs4_stateid* %0, %struct.nfs4_file* %1, %struct.nfsd4_open* %2) #0 {
  %4 = alloca %struct.nfs4_stateid*, align 8
  %5 = alloca %struct.nfs4_file*, align 8
  %6 = alloca %struct.nfsd4_open*, align 8
  %7 = alloca %struct.nfs4_stateowner*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_stateid* %0, %struct.nfs4_stateid** %4, align 8
  store %struct.nfs4_file* %1, %struct.nfs4_file** %5, align 8
  store %struct.nfsd4_open* %2, %struct.nfsd4_open** %6, align 8
  %9 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %9, i32 0, i32 2
  %11 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %10, align 8
  store %struct.nfs4_stateowner* %11, %struct.nfs4_stateowner** %7, align 8
  %12 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %7, align 8
  %13 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %16 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @stateid_hashval(i32 %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %20 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %19, i32 0, i32 8
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %23 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %22, i32 0, i32 7
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %26 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %25, i32 0, i32 9
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %29 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %28, i32 0, i32 6
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %32 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %31, i32 0, i32 8
  %33 = load i32*, i32** @stateid_hashtbl, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @list_add(i32* %32, i32* %36)
  %38 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %39 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %38, i32 0, i32 7
  %40 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %7, align 8
  %41 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %40, i32 0, i32 1
  %42 = call i32 @list_add(i32* %39, i32* %41)
  %43 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %44 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %43, i32 0, i32 6
  %45 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %46 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %45, i32 0, i32 1
  %47 = call i32 @list_add(i32* %44, i32* %46)
  %48 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %7, align 8
  %49 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %50 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %49, i32 0, i32 5
  store %struct.nfs4_stateowner* %48, %struct.nfs4_stateowner** %50, align 8
  %51 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %52 = call i32 @get_nfs4_file(%struct.nfs4_file* %51)
  %53 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %54 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %55 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %54, i32 0, i32 4
  store %struct.nfs4_file* %53, %struct.nfs4_file** %55, align 8
  %56 = load i32, i32* @boot_time, align 4
  %57 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %58 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 8
  %60 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %7, align 8
  %61 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %64 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 4
  %66 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %67 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %70 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %73 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %76 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %78 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %80 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NFS4_SHARE_WANT_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %86 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %85, i32 0, i32 2
  %87 = call i32 @__set_bit(i32 %84, i64* %86)
  %88 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %89 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %92 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %91, i32 0, i32 1
  %93 = call i32 @__set_bit(i32 %90, i64* %92)
  %94 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %4, align 8
  %95 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  ret void
}

declare dso_local i32 @stateid_hashval(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @get_nfs4_file(%struct.nfs4_file*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_sequence_check_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_sequence_check_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_conn = type { i32, i32 }
%struct.nfsd4_session = type { %struct.nfs4_client* }
%struct.nfs4_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_conn*, %struct.nfsd4_session*)* @nfsd4_sequence_check_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_sequence_check_conn(%struct.nfsd4_conn* %0, %struct.nfsd4_session* %1) #0 {
  %3 = alloca %struct.nfsd4_conn*, align 8
  %4 = alloca %struct.nfsd4_session*, align 8
  %5 = alloca %struct.nfs4_client*, align 8
  %6 = alloca %struct.nfsd4_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.nfsd4_conn* %0, %struct.nfsd4_conn** %3, align 8
  store %struct.nfsd4_session* %1, %struct.nfsd4_session** %4, align 8
  %8 = load %struct.nfsd4_session*, %struct.nfsd4_session** %4, align 8
  %9 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %8, i32 0, i32 0
  %10 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  store %struct.nfs4_client* %10, %struct.nfs4_client** %5, align 8
  %11 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %12 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %3, align 8
  %15 = getelementptr inbounds %struct.nfsd4_conn, %struct.nfsd4_conn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nfsd4_session*, %struct.nfsd4_session** %4, align 8
  %18 = call %struct.nfsd4_conn* @__nfsd4_find_conn(i32 %16, %struct.nfsd4_session* %17)
  store %struct.nfsd4_conn* %18, %struct.nfsd4_conn** %6, align 8
  %19 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %6, align 8
  %20 = icmp ne %struct.nfsd4_conn* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %23 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %3, align 8
  %26 = call i32 @free_conn(%struct.nfsd4_conn* %25)
  br label %43

27:                                               ; preds = %2
  %28 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %3, align 8
  %29 = load %struct.nfsd4_session*, %struct.nfsd4_session** %4, align 8
  %30 = call i32 @__nfsd4_hash_conn(%struct.nfsd4_conn* %28, %struct.nfsd4_session* %29)
  %31 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  %32 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %3, align 8
  %35 = call i32 @nfsd4_register_conn(%struct.nfsd4_conn* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %3, align 8
  %40 = getelementptr inbounds %struct.nfsd4_conn, %struct.nfsd4_conn* %39, i32 0, i32 0
  %41 = call i32 @nfsd4_conn_lost(i32* %40)
  br label %42

42:                                               ; preds = %38, %27
  br label %43

43:                                               ; preds = %42, %21
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfsd4_conn* @__nfsd4_find_conn(i32, %struct.nfsd4_session*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_conn(%struct.nfsd4_conn*) #1

declare dso_local i32 @__nfsd4_hash_conn(%struct.nfsd4_conn*, %struct.nfsd4_session*) #1

declare dso_local i32 @nfsd4_register_conn(%struct.nfsd4_conn*) #1

declare dso_local i32 @nfsd4_conn_lost(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

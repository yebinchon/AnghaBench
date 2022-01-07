; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_release_session_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_release_session_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_session = type { %struct.nfs4_client* }
%struct.nfs4_client = type { i32 }

@client_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_session_client(%struct.nfsd4_session* %0) #0 {
  %2 = alloca %struct.nfsd4_session*, align 8
  %3 = alloca %struct.nfs4_client*, align 8
  store %struct.nfsd4_session* %0, %struct.nfsd4_session** %2, align 8
  %4 = load %struct.nfsd4_session*, %struct.nfsd4_session** %2, align 8
  %5 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %4, i32 0, i32 0
  %6 = load %struct.nfs4_client*, %struct.nfs4_client** %5, align 8
  store %struct.nfs4_client* %6, %struct.nfs4_client** %3, align 8
  %7 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %8 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %7, i32 0, i32 0
  %9 = call i32 @atomic_dec_and_lock(i32* %8, i32* @client_lock)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %14 = call i64 @is_client_expired(%struct.nfs4_client* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %18 = call i32 @free_client(%struct.nfs4_client* %17)
  %19 = load %struct.nfsd4_session*, %struct.nfsd4_session** %2, align 8
  %20 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %19, i32 0, i32 0
  store %struct.nfs4_client* null, %struct.nfs4_client** %20, align 8
  br label %24

21:                                               ; preds = %12
  %22 = load %struct.nfs4_client*, %struct.nfs4_client** %3, align 8
  %23 = call i32 @renew_client_locked(%struct.nfs4_client* %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = call i32 @spin_unlock(i32* @client_lock)
  br label %26

26:                                               ; preds = %24, %11
  ret void
}

declare dso_local i32 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i64 @is_client_expired(%struct.nfs4_client*) #1

declare dso_local i32 @free_client(%struct.nfs4_client*) #1

declare dso_local i32 @renew_client_locked(%struct.nfs4_client*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

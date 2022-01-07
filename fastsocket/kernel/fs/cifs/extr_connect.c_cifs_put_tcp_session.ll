; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_put_tcp_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_put_tcp_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32* }
%struct.task_struct = type { i32 }

@cifs_tcp_ses_lock = common dso_local global i32 0, align 4
@GlobalMid_Lock = common dso_local global i32 0, align 4
@CifsExiting = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TCP_Server_Info*)* @cifs_put_tcp_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_put_tcp_session(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca %struct.TCP_Server_Info*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %2, align 8
  %4 = call i32 @spin_lock(i32* @cifs_tcp_ses_lock)
  %5 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %6 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* %6, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %14 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %13, i32 0, i32 5
  %15 = call i32 @list_del_init(i32* %14)
  %16 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  %17 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %18 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %17, i32 0, i32 4
  %19 = call i32 @cancel_delayed_work_sync(i32* %18)
  %20 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %21 = load i32, i32* @CifsExiting, align 4
  %22 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %23 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  %25 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %26 = call i32 @cifs_crypto_shash_release(%struct.TCP_Server_Info* %25)
  %27 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %28 = call i32 @cifs_fscache_release_client_cookie(%struct.TCP_Server_Info* %27)
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %30 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kfree(i32* %32)
  %34 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %35 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %38 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %41 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %40, i32 0, i32 1
  %42 = call %struct.task_struct* @xchg(i32* %41, i32* null)
  store %struct.task_struct* %42, %struct.task_struct** %3, align 8
  %43 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %44 = icmp ne %struct.task_struct* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %12
  %46 = load i32, i32* @SIGKILL, align 4
  %47 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %48 = call i32 @force_sig(i32 %46, %struct.task_struct* %47)
  br label %49

49:                                               ; preds = %10, %45, %12
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cifs_crypto_shash_release(%struct.TCP_Server_Info*) #1

declare dso_local i32 @cifs_fscache_release_client_cookie(%struct.TCP_Server_Info*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.task_struct* @xchg(i32*, i32*) #1

declare dso_local i32 @force_sig(i32, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

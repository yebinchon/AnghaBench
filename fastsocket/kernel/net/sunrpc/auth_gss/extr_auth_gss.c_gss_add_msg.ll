; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_add_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_add_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_upcall_msg = type { i32, i32, i32, %struct.rpc_inode* }
%struct.rpc_inode = type { i32, %struct.inode }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gss_upcall_msg* (%struct.gss_upcall_msg*)* @gss_add_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gss_upcall_msg* @gss_add_msg(%struct.gss_upcall_msg* %0) #0 {
  %2 = alloca %struct.gss_upcall_msg*, align 8
  %3 = alloca %struct.rpc_inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.gss_upcall_msg*, align 8
  store %struct.gss_upcall_msg* %0, %struct.gss_upcall_msg** %2, align 8
  %6 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %7 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %6, i32 0, i32 3
  %8 = load %struct.rpc_inode*, %struct.rpc_inode** %7, align 8
  store %struct.rpc_inode* %8, %struct.rpc_inode** %3, align 8
  %9 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %9, i32 0, i32 1
  store %struct.inode* %10, %struct.inode** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %15 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %16 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.gss_upcall_msg* @__gss_find_upcall(%struct.rpc_inode* %14, i32 %17)
  store %struct.gss_upcall_msg* %18, %struct.gss_upcall_msg** %5, align 8
  %19 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %5, align 8
  %20 = icmp eq %struct.gss_upcall_msg* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %23 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %22, i32 0, i32 1
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %26 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %25, i32 0, i32 0
  %27 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %28 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %27, i32 0, i32 0
  %29 = call i32 @list_add(i32* %26, i32* %28)
  br label %32

30:                                               ; preds = %1
  %31 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %5, align 8
  store %struct.gss_upcall_msg* %31, %struct.gss_upcall_msg** %2, align 8
  br label %32

32:                                               ; preds = %30, %21
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  ret %struct.gss_upcall_msg* %36
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.gss_upcall_msg* @__gss_find_upcall(%struct.rpc_inode*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

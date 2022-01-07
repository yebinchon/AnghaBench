; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_unhash_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_unhash_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_upcall_msg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gss_upcall_msg*)* @gss_unhash_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gss_unhash_msg(%struct.gss_upcall_msg* %0) #0 {
  %2 = alloca %struct.gss_upcall_msg*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.gss_upcall_msg* %0, %struct.gss_upcall_msg** %2, align 8
  %4 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %5 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.inode* %7, %struct.inode** %3, align 8
  %8 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %9 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %8, i32 0, i32 0
  %10 = call i64 @list_empty(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %18 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %17, i32 0, i32 0
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %23 = call i32 @__gss_unhash_msg(%struct.gss_upcall_msg* %22)
  br label %24

24:                                               ; preds = %21, %13
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  br label %28

28:                                               ; preds = %24, %12
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__gss_unhash_msg(%struct.gss_upcall_msg*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

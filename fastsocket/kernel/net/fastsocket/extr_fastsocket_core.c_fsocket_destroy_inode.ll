; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_destroy_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_destroy_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.socket_alloc = type { i32 }

@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Free inode 0x%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsocket_destroy_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load i32, i32* @DEBUG, align 4
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call i32 @DPRINTK(i32 %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.inode* %4)
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @S_ISSOCK(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call i32 @security_inode_free(%struct.inode* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = call i64 @SOCKET_I(%struct.inode* %15)
  %17 = call i32 @fsock_release_sock(i64 %16)
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = call i64 @SOCKET_I(%struct.inode* %18)
  %20 = inttoptr i64 %19 to %struct.socket_alloc*
  %21 = call i32 @fsocket_free_socket_mem(%struct.socket_alloc* %20)
  ret void
}

declare dso_local i32 @DPRINTK(i32, i8*, %struct.inode*) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @security_inode_free(%struct.inode*) #1

declare dso_local i32 @fsock_release_sock(i64) #1

declare dso_local i64 @SOCKET_I(%struct.inode*) #1

declare dso_local i32 @fsocket_free_socket_mem(%struct.socket_alloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c___rpc_mkpipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c___rpc_mkpipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }
%struct.rpc_pipe_ops = type { i32 }
%struct.rpc_inode = type { i32, i32, %struct.rpc_pipe_ops*, i8* }

@S_IFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.file_operations*, i8*, %struct.rpc_pipe_ops*, i32)* @__rpc_mkpipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rpc_mkpipe(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.file_operations* %3, i8* %4, %struct.rpc_pipe_ops* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.file_operations*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.rpc_pipe_ops*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.rpc_inode*, align 8
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.file_operations* %3, %struct.file_operations** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.rpc_pipe_ops* %5, %struct.rpc_pipe_ops** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = load %struct.dentry*, %struct.dentry** %10, align 8
  %20 = load i32, i32* @S_IFIFO, align 4
  %21 = load i32, i32* %11, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = call i32 @__rpc_create_common(%struct.inode* %18, %struct.dentry* %19, i32 %22, %struct.file_operations* %23, i8* %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %8, align 4
  br label %49

30:                                               ; preds = %7
  %31 = load %struct.dentry*, %struct.dentry** %10, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.rpc_inode* @RPC_I(i32 %33)
  store %struct.rpc_inode* %34, %struct.rpc_inode** %16, align 8
  %35 = load %struct.rpc_inode*, %struct.rpc_inode** %16, align 8
  %36 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.rpc_inode*, %struct.rpc_inode** %16, align 8
  %39 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.rpc_inode*, %struct.rpc_inode** %16, align 8
  %42 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rpc_pipe_ops*, %struct.rpc_pipe_ops** %14, align 8
  %44 = load %struct.rpc_inode*, %struct.rpc_inode** %16, align 8
  %45 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %44, i32 0, i32 2
  store %struct.rpc_pipe_ops* %43, %struct.rpc_pipe_ops** %45, align 8
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = load %struct.dentry*, %struct.dentry** %10, align 8
  %48 = call i32 @fsnotify_create(%struct.inode* %46, %struct.dentry* %47)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %30, %28
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @__rpc_create_common(%struct.inode*, %struct.dentry*, i32, %struct.file_operations*, i8*) #1

declare dso_local %struct.rpc_inode* @RPC_I(i32) #1

declare dso_local i32 @fsnotify_create(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

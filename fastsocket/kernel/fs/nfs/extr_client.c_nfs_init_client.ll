; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i64 }
%struct.rpc_timeout = type { i32 }

@NFS_CS_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"<-- nfs_init_client() = 0 [already %p]\0A\00", align 1
@RPC_AUTH_UNIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"<-- nfs_init_client() = xerror %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_init_client(%struct.nfs_client* %0, %struct.rpc_timeout* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_client*, align 8
  %8 = alloca %struct.rpc_timeout*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %7, align 8
  store %struct.rpc_timeout* %1, %struct.rpc_timeout** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %14 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NFS_CS_READY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %20 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.nfs_client* %19)
  store i32 0, i32* %6, align 4
  br label %42

21:                                               ; preds = %5
  %22 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %23 = load %struct.rpc_timeout*, %struct.rpc_timeout** %8, align 8
  %24 = load i32, i32* @RPC_AUTH_UNIX, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @nfs_create_rpc_client(%struct.nfs_client* %22, %struct.rpc_timeout* %23, i32 %24, i32 0, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %35

30:                                               ; preds = %21
  %31 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %32 = load i64, i64* @NFS_CS_READY, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @nfs_mark_client_ready(%struct.nfs_client* %31, i32 %33)
  store i32 0, i32* %6, align 4
  br label %42

35:                                               ; preds = %29
  %36 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @nfs_mark_client_ready(%struct.nfs_client* %36, i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %35, %30, %18
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nfs_create_rpc_client(%struct.nfs_client*, %struct.rpc_timeout*, i32, i32, i32) #1

declare dso_local i32 @nfs_mark_client_ready(%struct.nfs_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

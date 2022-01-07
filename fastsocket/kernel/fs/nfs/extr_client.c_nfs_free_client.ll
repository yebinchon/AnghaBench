; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_free_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_free_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { %struct.nfs_client*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"--> nfs_free_client(%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"<-- nfs_free_client()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_client*)* @nfs_free_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_free_client(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %3 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %4 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %3, i32 0, i32 3
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %10 = call i32 @nfs4_shutdown_client(%struct.nfs_client* %9)
  %11 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %12 = call i32 @nfs_fscache_release_client_cookie(%struct.nfs_client* %11)
  %13 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %14 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @IS_ERR(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %20 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @rpc_shutdown_client(i32 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %25 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %30 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @put_rpccred(i32* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %35 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %34, i32 0, i32 0
  %36 = load %struct.nfs_client*, %struct.nfs_client** %35, align 8
  %37 = call i32 @kfree(%struct.nfs_client* %36)
  %38 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %39 = call i32 @kfree(%struct.nfs_client* %38)
  %40 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nfs4_shutdown_client(%struct.nfs_client*) #1

declare dso_local i32 @nfs_fscache_release_client_cookie(%struct.nfs_client*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @rpc_shutdown_client(i32) #1

declare dso_local i32 @put_rpccred(i32*) #1

declare dso_local i32 @kfree(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

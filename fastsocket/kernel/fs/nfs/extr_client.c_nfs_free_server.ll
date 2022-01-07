; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_free_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_free_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32, i32, i32, i32, i32 (%struct.nfs_server*)* }

@.str = private unnamed_addr constant [23 x i8] c"--> nfs_free_server()\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"<-- nfs_free_server()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_free_server(%struct.nfs_server* %0) #0 {
  %2 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %2, align 8
  %3 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %5 = call i32 @nfs_server_remove_lists(%struct.nfs_server* %4)
  %6 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %7 = call i32 @unset_pnfs_layoutdriver(%struct.nfs_server* %6)
  %8 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %9 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %8, i32 0, i32 5
  %10 = load i32 (%struct.nfs_server*)*, i32 (%struct.nfs_server*)** %9, align 8
  %11 = icmp ne i32 (%struct.nfs_server*)* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %14 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %13, i32 0, i32 5
  %15 = load i32 (%struct.nfs_server*)*, i32 (%struct.nfs_server*)** %14, align 8
  %16 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %17 = call i32 %15(%struct.nfs_server* %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %20 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @IS_ERR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %26 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @rpc_shutdown_client(i32 %27)
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %31 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @IS_ERR(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %37 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rpc_shutdown_client(i32 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %42 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @nfs_put_client(i32 %43)
  %45 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %46 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nfs_free_iostats(i32 %47)
  %49 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %50 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %49, i32 0, i32 0
  %51 = call i32 @bdi_destroy(i32* %50)
  %52 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %53 = call i32 @kfree(%struct.nfs_server* %52)
  %54 = call i32 (...) @nfs_release_automount_timer()
  %55 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @nfs_server_remove_lists(%struct.nfs_server*) #1

declare dso_local i32 @unset_pnfs_layoutdriver(%struct.nfs_server*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @rpc_shutdown_client(i32) #1

declare dso_local i32 @nfs_put_client(i32) #1

declare dso_local i32 @nfs_free_iostats(i32) #1

declare dso_local i32 @bdi_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.nfs_server*) #1

declare dso_local i32 @nfs_release_automount_timer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

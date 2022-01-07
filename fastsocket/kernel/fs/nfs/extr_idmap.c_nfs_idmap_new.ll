; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_nfs_idmap_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_nfs_idmap_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { %struct.idmap*, %struct.TYPE_6__* }
%struct.idmap = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"idmap\00", align 1
@idmap_upcall_ops = common dso_local global i32 0, align 4
@IDMAP_TYPE_USER = common dso_local global i32 0, align 4
@IDMAP_TYPE_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_idmap_new(%struct.nfs_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.idmap*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  %6 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %6, i32 0, i32 0
  %8 = load %struct.idmap*, %struct.idmap** %7, align 8
  %9 = icmp ne %struct.idmap* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.idmap* @kzalloc(i32 24, i32 %12)
  store %struct.idmap* %13, %struct.idmap** %4, align 8
  %14 = load %struct.idmap*, %struct.idmap** %4, align 8
  %15 = icmp eq %struct.idmap* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %64

19:                                               ; preds = %1
  %20 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %21 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.idmap*, %struct.idmap** %4, align 8
  %27 = call i32 @rpc_mkpipe(i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.idmap* %26, i32* @idmap_upcall_ops, i32 0)
  %28 = load %struct.idmap*, %struct.idmap** %4, align 8
  %29 = getelementptr inbounds %struct.idmap, %struct.idmap* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.idmap*, %struct.idmap** %4, align 8
  %31 = getelementptr inbounds %struct.idmap, %struct.idmap* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %19
  %36 = load %struct.idmap*, %struct.idmap** %4, align 8
  %37 = getelementptr inbounds %struct.idmap, %struct.idmap* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.idmap*, %struct.idmap** %4, align 8
  %41 = call i32 @kfree(%struct.idmap* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %64

43:                                               ; preds = %19
  %44 = load %struct.idmap*, %struct.idmap** %4, align 8
  %45 = getelementptr inbounds %struct.idmap, %struct.idmap* %44, i32 0, i32 4
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.idmap*, %struct.idmap** %4, align 8
  %48 = getelementptr inbounds %struct.idmap, %struct.idmap* %47, i32 0, i32 3
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.idmap*, %struct.idmap** %4, align 8
  %51 = getelementptr inbounds %struct.idmap, %struct.idmap* %50, i32 0, i32 2
  %52 = call i32 @init_waitqueue_head(i32* %51)
  %53 = load i32, i32* @IDMAP_TYPE_USER, align 4
  %54 = load %struct.idmap*, %struct.idmap** %4, align 8
  %55 = getelementptr inbounds %struct.idmap, %struct.idmap* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @IDMAP_TYPE_GROUP, align 4
  %58 = load %struct.idmap*, %struct.idmap** %4, align 8
  %59 = getelementptr inbounds %struct.idmap, %struct.idmap* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.idmap*, %struct.idmap** %4, align 8
  %62 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %63 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %62, i32 0, i32 0
  store %struct.idmap* %61, %struct.idmap** %63, align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %43, %35, %16
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.idmap* @kzalloc(i32, i32) #1

declare dso_local i32 @rpc_mkpipe(i32, i8*, %struct.idmap*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.idmap*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

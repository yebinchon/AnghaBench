; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_cache_lib.c_nfs_cache_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_cache_lib.c_nfs_cache_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.nameidata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vfsmount = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"/cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_cache_register(%struct.cache_detail* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cache_detail*, align 8
  %4 = alloca %struct.nameidata, align 4
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %3, align 8
  %7 = call %struct.vfsmount* (...) @rpc_get_mount()
  store %struct.vfsmount* %7, %struct.vfsmount** %5, align 8
  %8 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %9 = call i64 @IS_ERR(%struct.vfsmount* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %13 = call i32 @PTR_ERR(%struct.vfsmount* %12)
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %16 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %19 = call i32 @vfs_path_lookup(i32 %17, %struct.vfsmount* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, %struct.nameidata* %4)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %39

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %4, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %28 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %31 = call i32 @sunrpc_cache_register_pipefs(i32 %26, i32 %29, i32 384, %struct.cache_detail* %30)
  store i32 %31, i32* %6, align 4
  %32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %4, i32 0, i32 0
  %33 = call i32 @path_put(%struct.TYPE_2__* %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %22
  %40 = call i32 (...) @rpc_put_mount()
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %36, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.vfsmount* @rpc_get_mount(...) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i32 @PTR_ERR(%struct.vfsmount*) #1

declare dso_local i32 @vfs_path_lookup(i32, %struct.vfsmount*, i8*, i32, %struct.nameidata*) #1

declare dso_local i32 @sunrpc_cache_register_pipefs(i32, i32, i32, %struct.cache_detail*) #1

declare dso_local i32 @path_put(%struct.TYPE_2__*) #1

declare dso_local i32 @rpc_put_mount(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

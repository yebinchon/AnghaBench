; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_unlink.c_nfs_async_rename_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_unlink.c_nfs_async_rename_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_renamedata = type { i32, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfs_async_rename_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_async_rename_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfs_renamedata*, align 8
  %4 = alloca %struct.super_block*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.nfs_renamedata*
  store %struct.nfs_renamedata* %6, %struct.nfs_renamedata** %3, align 8
  %7 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %4, align 8
  %12 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %13 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @nfs_mark_for_revalidate(i64 %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %27 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %26, i32 0, i32 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @dput(%struct.TYPE_4__* %28)
  %30 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %31 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @dput(%struct.TYPE_4__* %32)
  %34 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %35 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call i32 @iput(%struct.TYPE_3__* %36)
  %38 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %39 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call i32 @iput(%struct.TYPE_3__* %40)
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = call i32 @nfs_sb_deactive(%struct.super_block* %42)
  %44 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %45 = getelementptr inbounds %struct.nfs_renamedata, %struct.nfs_renamedata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @put_rpccred(i32 %46)
  %48 = load %struct.nfs_renamedata*, %struct.nfs_renamedata** %3, align 8
  %49 = call i32 @kfree(%struct.nfs_renamedata* %48)
  ret void
}

declare dso_local i32 @nfs_mark_for_revalidate(i64) #1

declare dso_local i32 @dput(%struct.TYPE_4__*) #1

declare dso_local i32 @iput(%struct.TYPE_3__*) #1

declare dso_local i32 @nfs_sb_deactive(%struct.super_block*) #1

declare dso_local i32 @put_rpccred(i32) #1

declare dso_local i32 @kfree(%struct.nfs_renamedata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

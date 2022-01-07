; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c___put_nfs_open_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c___put_nfs_open_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { %struct.TYPE_5__*, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { %struct.super_block*, %struct.inode* }
%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.nfs_open_context*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_open_context*, i32)* @__put_nfs_open_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__put_nfs_open_context(%struct.nfs_open_context* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_open_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %13 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %6, align 8
  %17 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %17, i32 0, i32 3
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %2
  %22 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %23 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = call i32 @atomic_dec_and_lock(i32* %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %82

30:                                               ; preds = %21
  %31 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %32 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %31, i32 0, i32 3
  %33 = call i32 @list_del(i32* %32)
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  br label %45

37:                                               ; preds = %2
  %38 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %39 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @atomic_dec_and_test(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %82

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = icmp ne %struct.inode* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = call %struct.TYPE_6__* @NFS_PROTO(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32 (%struct.nfs_open_context*, i32)*, i32 (%struct.nfs_open_context*, i32)** %51, align 8
  %53 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 %52(%struct.nfs_open_context* %53, i32 %54)
  br label %56

56:                                               ; preds = %48, %45
  %57 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %58 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %63 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @put_rpccred(i32* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %68 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = call i32 @dput(%struct.TYPE_5__* %69)
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.super_block*, %struct.super_block** %6, align 8
  %75 = call i32 @nfs_sb_deactive(%struct.super_block* %74)
  br label %79

76:                                               ; preds = %66
  %77 = load %struct.super_block*, %struct.super_block** %6, align 8
  %78 = call i32 @nfs_sb_deactive_async(%struct.super_block* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %81 = call i32 @kfree(%struct.nfs_open_context* %80)
  br label %82

82:                                               ; preds = %79, %43, %29
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local %struct.TYPE_6__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @put_rpccred(i32*) #1

declare dso_local i32 @dput(%struct.TYPE_5__*) #1

declare dso_local i32 @nfs_sb_deactive(%struct.super_block*) #1

declare dso_local i32 @nfs_sb_deactive_async(%struct.super_block*) #1

declare dso_local i32 @kfree(%struct.nfs_open_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

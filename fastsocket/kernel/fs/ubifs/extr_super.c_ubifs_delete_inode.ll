; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i64, i64 }
%struct.ubifs_inode = type { i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"inode %lu, mode %#x\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"can't delete inode %lu, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ubifs_delete_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubifs_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 6
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  store %struct.ubifs_info* %10, %struct.ubifs_info** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %11)
  store %struct.ubifs_inode* %12, %struct.ubifs_inode** %5, align 8
  %13 = load %struct.ubifs_inode*, %struct.ubifs_inode** %5, align 8
  %14 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %64

18:                                               ; preds = %1
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25)
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 4
  %29 = call i32 @atomic_read(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @ubifs_assert(i32 %32)
  %34 = load %struct.inode*, %struct.inode** %2, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @ubifs_assert(i32 %38)
  %40 = load %struct.inode*, %struct.inode** %2, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 3
  %42 = call i32 @truncate_inode_pages(i32* %41, i32 0)
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = call i64 @is_bad_inode(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %18
  br label %64

47:                                               ; preds = %18
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.ubifs_inode*, %struct.ubifs_inode** %5, align 8
  %51 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = call i32 @ubifs_jnl_delete_inode(%struct.ubifs_info* %52, %struct.inode* %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load %struct.inode*, %struct.inode** %2, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @ubifs_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %47
  br label %64

64:                                               ; preds = %63, %46, %17
  %65 = load %struct.ubifs_inode*, %struct.ubifs_inode** %5, align 8
  %66 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %71 = load %struct.ubifs_inode*, %struct.ubifs_inode** %5, align 8
  %72 = call i32 @ubifs_release_dirty_inode_budget(%struct.ubifs_info* %70, %struct.ubifs_inode* %71)
  br label %79

73:                                               ; preds = %64
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %75 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = call i32 (...) @smp_wmb()
  br label %79

79:                                               ; preds = %73, %69
  %80 = load %struct.inode*, %struct.inode** %2, align 8
  %81 = call i32 @clear_inode(%struct.inode* %80)
  ret void
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_jnl_delete_inode(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

declare dso_local i32 @ubifs_release_dirty_inode_budget(%struct.ubifs_info*, %struct.ubifs_inode*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bnode.c_hfs_bnode_unhash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bnode.c_hfs_bnode_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { %struct.TYPE_2__*, %struct.hfs_bnode*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.hfs_bnode**, i32 }

@DBG_BNODE_REFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"remove_node(%d:%d): %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bnode_unhash(%struct.hfs_bnode* %0) #0 {
  %2 = alloca %struct.hfs_bnode*, align 8
  %3 = alloca %struct.hfs_bnode**, align 8
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %2, align 8
  %4 = load i32, i32* @DBG_BNODE_REFS, align 4
  %5 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %6 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %11 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %14 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %13, i32 0, i32 3
  %15 = call i32 @atomic_read(i32* %14)
  %16 = call i32 @dprint(i32 %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15)
  %17 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %18 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.hfs_bnode**, %struct.hfs_bnode*** %20, align 8
  %22 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %23 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @hfs_bnode_hash(i32 %24)
  %26 = getelementptr inbounds %struct.hfs_bnode*, %struct.hfs_bnode** %21, i64 %25
  store %struct.hfs_bnode** %26, %struct.hfs_bnode*** %3, align 8
  br label %27

27:                                               ; preds = %39, %1
  %28 = load %struct.hfs_bnode**, %struct.hfs_bnode*** %3, align 8
  %29 = load %struct.hfs_bnode*, %struct.hfs_bnode** %28, align 8
  %30 = icmp ne %struct.hfs_bnode* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.hfs_bnode**, %struct.hfs_bnode*** %3, align 8
  %33 = load %struct.hfs_bnode*, %struct.hfs_bnode** %32, align 8
  %34 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %35 = icmp ne %struct.hfs_bnode* %33, %34
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i1 [ false, %27 ], [ %35, %31 ]
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.hfs_bnode**, %struct.hfs_bnode*** %3, align 8
  %41 = load %struct.hfs_bnode*, %struct.hfs_bnode** %40, align 8
  %42 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %41, i32 0, i32 1
  store %struct.hfs_bnode** %42, %struct.hfs_bnode*** %3, align 8
  br label %27

43:                                               ; preds = %36
  %44 = load %struct.hfs_bnode**, %struct.hfs_bnode*** %3, align 8
  %45 = load %struct.hfs_bnode*, %struct.hfs_bnode** %44, align 8
  %46 = icmp ne %struct.hfs_bnode* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %51 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %50, i32 0, i32 1
  %52 = load %struct.hfs_bnode*, %struct.hfs_bnode** %51, align 8
  %53 = load %struct.hfs_bnode**, %struct.hfs_bnode*** %3, align 8
  store %struct.hfs_bnode* %52, %struct.hfs_bnode** %53, align 8
  %54 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %55 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  ret void
}

declare dso_local i32 @dprint(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @hfs_bnode_hash(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

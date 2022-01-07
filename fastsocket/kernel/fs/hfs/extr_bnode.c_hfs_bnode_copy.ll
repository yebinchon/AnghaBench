; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bnode.c_hfs_bnode_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bnode.c_hfs_bnode_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { %struct.page**, i64, %struct.hfs_btree* }
%struct.page = type { i32 }
%struct.hfs_btree = type { i32 }

@DBG_BNODE_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"copybytes: %u,%u,%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bnode_copy(%struct.hfs_bnode* %0, i32 %1, %struct.hfs_bnode* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hfs_bnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfs_bnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hfs_btree*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.hfs_bnode* %2, %struct.hfs_bnode** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @DBG_BNODE_MOD, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @dprint(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %68

22:                                               ; preds = %5
  %23 = load %struct.hfs_bnode*, %struct.hfs_bnode** %8, align 8
  %24 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %23, i32 0, i32 2
  %25 = load %struct.hfs_btree*, %struct.hfs_btree** %24, align 8
  store %struct.hfs_btree* %25, %struct.hfs_btree** %11, align 8
  %26 = load %struct.hfs_bnode*, %struct.hfs_bnode** %8, align 8
  %27 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %34 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load %struct.hfs_bnode*, %struct.hfs_bnode** %8, align 8
  %41 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %40, i32 0, i32 0
  %42 = load %struct.page**, %struct.page*** %41, align 8
  %43 = getelementptr inbounds %struct.page*, %struct.page** %42, i64 0
  %44 = load %struct.page*, %struct.page** %43, align 8
  store %struct.page* %44, %struct.page** %12, align 8
  %45 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %46 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %45, i32 0, i32 0
  %47 = load %struct.page**, %struct.page*** %46, align 8
  %48 = getelementptr inbounds %struct.page*, %struct.page** %47, i64 0
  %49 = load %struct.page*, %struct.page** %48, align 8
  store %struct.page* %49, %struct.page** %13, align 8
  %50 = load %struct.page*, %struct.page** %13, align 8
  %51 = call i64 @kmap(%struct.page* %50)
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load %struct.page*, %struct.page** %12, align 8
  %56 = call i64 @kmap(%struct.page* %55)
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @memcpy(i64 %54, i64 %59, i32 %60)
  %62 = load %struct.page*, %struct.page** %12, align 8
  %63 = call i32 @kunmap(%struct.page* %62)
  %64 = load %struct.page*, %struct.page** %13, align 8
  %65 = call i32 @kunmap(%struct.page* %64)
  %66 = load %struct.page*, %struct.page** %13, align 8
  %67 = call i32 @set_page_dirty(%struct.page* %66)
  br label %68

68:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @dprint(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i64 @kmap(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bnode.c_hfs_bnode_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bnode.c_hfs_bnode_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { %struct.page**, i64 }
%struct.page = type { i32 }

@DBG_BNODE_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"movebytes: %u,%u,%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bnode_move(%struct.hfs_bnode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hfs_bnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i8*, align 8
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @DBG_BNODE_MOD, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @dprint(i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %55

19:                                               ; preds = %4
  %20 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %21 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %28 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %35 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %34, i32 0, i32 0
  %36 = load %struct.page**, %struct.page*** %35, align 8
  %37 = getelementptr inbounds %struct.page*, %struct.page** %36, i64 0
  %38 = load %struct.page*, %struct.page** %37, align 8
  store %struct.page* %38, %struct.page** %9, align 8
  %39 = load %struct.page*, %struct.page** %9, align 8
  %40 = call i8* @kmap(%struct.page* %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %45, i64 %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @memmove(i8* %44, i8* %48, i32 %49)
  %51 = load %struct.page*, %struct.page** %9, align 8
  %52 = call i32 @kunmap(%struct.page* %51)
  %53 = load %struct.page*, %struct.page** %9, align 8
  %54 = call i32 @set_page_dirty(%struct.page* %53)
  br label %55

55:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @dprint(i32, i8*, i32, i32, i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

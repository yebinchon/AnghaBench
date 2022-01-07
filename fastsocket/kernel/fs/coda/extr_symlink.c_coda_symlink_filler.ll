; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_symlink.c_coda_symlink_filler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_symlink.c_coda_symlink_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.coda_inode_info = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @coda_symlink_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_symlink_filler(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.coda_inode_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %6, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i8* @kmap(%struct.page* %17)
  store i8* %18, i8** %10, align 8
  %19 = call i32 (...) @lock_kernel()
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.coda_inode_info* @ITOC(%struct.inode* %20)
  store %struct.coda_inode_info* %21, %struct.coda_inode_info** %8, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %26 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %25, i32 0, i32 0
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @venus_readlink(i32 %24, i32* %26, i8* %27, i32* %9)
  store i32 %28, i32* %7, align 4
  %29 = call i32 (...) @unlock_kernel()
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %40

33:                                               ; preds = %2
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = call i32 @SetPageUptodate(%struct.page* %34)
  %36 = load %struct.page*, %struct.page** %5, align 8
  %37 = call i32 @kunmap(%struct.page* %36)
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = call i32 @unlock_page(%struct.page* %38)
  store i32 0, i32* %3, align 4
  br label %48

40:                                               ; preds = %32
  %41 = load %struct.page*, %struct.page** %5, align 8
  %42 = call i32 @SetPageError(%struct.page* %41)
  %43 = load %struct.page*, %struct.page** %5, align 8
  %44 = call i32 @kunmap(%struct.page* %43)
  %45 = load %struct.page*, %struct.page** %5, align 8
  %46 = call i32 @unlock_page(%struct.page* %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %33
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @venus_readlink(i32, i32*, i8*, i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_cnode.c_coda_fill_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_cnode.c_coda_fill_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.coda_vattr = type { i32 }

@coda_file_inode_operations = common dso_local global i32 0, align 4
@coda_file_operations = common dso_local global i32 0, align 4
@coda_dir_inode_operations = common dso_local global i32 0, align 4
@coda_dir_operations = common dso_local global i32 0, align 4
@coda_symlink_inode_operations = common dso_local global i32 0, align 4
@coda_symlink_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.coda_vattr*)* @coda_fill_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_fill_inode(%struct.inode* %0, %struct.coda_vattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.coda_vattr*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.coda_vattr* %1, %struct.coda_vattr** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %7 = call i32 @coda_vattr_to_iattr(%struct.inode* %5, %struct.coda_vattr* %6)
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @S_ISREG(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 3
  store i32* @coda_file_inode_operations, i32** %15, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 4
  store i32* @coda_file_operations, i32** %17, align 8
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @S_ISDIR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 3
  store i32* @coda_dir_inode_operations, i32** %26, align 8
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 4
  store i32* @coda_dir_operations, i32** %28, align 8
  br label %56

29:                                               ; preds = %18
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @S_ISLNK(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 3
  store i32* @coda_symlink_inode_operations, i32** %37, align 8
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32* @coda_symlink_aops, i32** %40, align 8
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 2
  store %struct.TYPE_2__* %42, %struct.TYPE_2__** %44, align 8
  br label %55

45:                                               ; preds = %29
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.coda_vattr*, %struct.coda_vattr** %4, align 8
  %51 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @huge_decode_dev(i32 %52)
  %54 = call i32 @init_special_inode(%struct.inode* %46, i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %45, %35
  br label %56

56:                                               ; preds = %55, %24
  br label %57

57:                                               ; preds = %56, %13
  ret void
}

declare dso_local i32 @coda_vattr_to_iattr(%struct.inode*, %struct.coda_vattr*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @huge_decode_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

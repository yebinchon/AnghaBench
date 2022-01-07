; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_attr.c_inode_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_attr.c_inode_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iattr = type { i32, i64 }

@ATTR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inode_setattr(%struct.inode* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %8 = load %struct.iattr*, %struct.iattr** %5, align 8
  %9 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ATTR_SIZE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.iattr*, %struct.iattr** %5, align 8
  %17 = getelementptr inbounds %struct.iattr, %struct.iattr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i64 @i_size_read(%struct.inode* %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = load %struct.iattr*, %struct.iattr** %5, align 8
  %25 = getelementptr inbounds %struct.iattr, %struct.iattr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @vmtruncate(%struct.inode* %23, i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %15, %2
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = load %struct.iattr*, %struct.iattr** %5, align 8
  %36 = call i32 @generic_setattr(%struct.inode* %34, %struct.iattr* %35)
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call i32 @mark_inode_dirty(%struct.inode* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @vmtruncate(%struct.inode*, i64) #1

declare dso_local i32 @generic_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

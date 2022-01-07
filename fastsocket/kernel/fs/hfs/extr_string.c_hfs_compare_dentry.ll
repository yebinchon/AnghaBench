; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_string.c_hfs_compare_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_string.c_hfs_compare_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i8* }

@HFS_NAMELEN = common dso_local global i32 0, align 4
@caseorder = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_compare_dentry(%struct.dentry* %0, %struct.qstr* %1, %struct.qstr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %11 = load %struct.qstr*, %struct.qstr** %6, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @HFS_NAMELEN, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.qstr*, %struct.qstr** %7, align 8
  %19 = getelementptr inbounds %struct.qstr, %struct.qstr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HFS_NAMELEN, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %64

24:                                               ; preds = %17
  %25 = load i32, i32* @HFS_NAMELEN, align 4
  store i32 %25, i32* %10, align 4
  br label %34

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.qstr*, %struct.qstr** %7, align 8
  %29 = getelementptr inbounds %struct.qstr, %struct.qstr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %64

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %24
  %35 = load %struct.qstr*, %struct.qstr** %6, align 8
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %8, align 8
  %38 = load %struct.qstr*, %struct.qstr** %7, align 8
  %39 = getelementptr inbounds %struct.qstr, %struct.qstr* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %9, align 8
  br label %41

41:                                               ; preds = %62, %34
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %10, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load i64*, i64** @caseorder, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  %49 = load i8, i8* %47, align 1
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds i64, i64* %46, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** @caseorder, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %9, align 8
  %56 = load i8, i8* %54, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i64, i64* %53, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %52, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %64

62:                                               ; preds = %45
  br label %41

63:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %61, %32, %23
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_gfs2_xattr_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_gfs2_xattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_ea_location = type { i32, i32 }

@ENODATA = common dso_local global i32 0, align 4
@GFS2_EA_MAX_NAME_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_xattr_get(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.gfs2_inode*, align 8
  %13 = alloca %struct.gfs2_ea_location, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %15)
  store %struct.gfs2_inode* %16, %struct.gfs2_inode** %12, align 8
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENODATA, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %65

24:                                               ; preds = %5
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = load i64, i64* @GFS2_EA_MAX_NAME_LEN, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %65

32:                                               ; preds = %24
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @gfs2_ea_find(%struct.gfs2_inode* %33, i32 %34, i8* %35, %struct.gfs2_ea_location* %13)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  br label %65

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %13, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @ENODATA, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %65

48:                                               ; preds = %41
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @gfs2_ea_get_copy(%struct.gfs2_inode* %52, %struct.gfs2_ea_location* %13, i8* %53, i64 %54)
  store i32 %55, i32* %14, align 4
  br label %60

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %13, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @GFS2_EA_DATA_LEN(i32 %58)
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %13, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @brelse(i32 %62)
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %45, %39, %29, %21
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @gfs2_ea_find(%struct.gfs2_inode*, i32, i8*, %struct.gfs2_ea_location*) #1

declare dso_local i32 @gfs2_ea_get_copy(%struct.gfs2_inode*, %struct.gfs2_ea_location*, i8*, i64) #1

declare dso_local i32 @GFS2_EA_DATA_LEN(i32) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

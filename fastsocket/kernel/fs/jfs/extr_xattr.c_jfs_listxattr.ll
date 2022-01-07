; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_xattr.c_jfs_listxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_xattr.c_jfs_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.jfs_ea_list = type { i32 }
%struct.jfs_ea = type { i32 }
%struct.ea_buffer = type { i64 }
%struct.TYPE_2__ = type { i32 }

@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @jfs_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.jfs_ea_list*, align 8
  %12 = alloca %struct.jfs_ea*, align 8
  %13 = alloca %struct.ea_buffer, align 8
  %14 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %7, align 8
  store i64 0, i64* %9, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @down_read(i32* %20)
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call i32 @ea_get(%struct.inode* %22, %struct.ea_buffer* %13, i32 0)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %9, align 8
  br label %99

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %96

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ea_buffer, %struct.ea_buffer* %13, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.jfs_ea_list*
  store %struct.jfs_ea_list* %36, %struct.jfs_ea_list** %11, align 8
  %37 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %11, align 8
  %38 = call %struct.jfs_ea* @FIRST_EA(%struct.jfs_ea_list* %37)
  store %struct.jfs_ea* %38, %struct.jfs_ea** %12, align 8
  br label %39

39:                                               ; preds = %55, %33
  %40 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %41 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %11, align 8
  %42 = call %struct.jfs_ea* @END_EALIST(%struct.jfs_ea_list* %41)
  %43 = icmp ult %struct.jfs_ea* %40, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %46 = call i64 @can_list(%struct.jfs_ea* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %50 = call i64 @name_size(%struct.jfs_ea* %49)
  %51 = add nsw i64 %50, 1
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %48, %44
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %57 = call %struct.jfs_ea* @NEXT_EA(%struct.jfs_ea* %56)
  store %struct.jfs_ea* %57, %struct.jfs_ea** %12, align 8
  br label %39

58:                                               ; preds = %39
  %59 = load i8*, i8** %5, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  br label %96

62:                                               ; preds = %58
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, i64* @ERANGE, align 8
  %68 = sub i64 0, %67
  store i64 %68, i64* %9, align 8
  br label %96

69:                                               ; preds = %62
  %70 = load i8*, i8** %5, align 8
  store i8* %70, i8** %8, align 8
  %71 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %11, align 8
  %72 = call %struct.jfs_ea* @FIRST_EA(%struct.jfs_ea_list* %71)
  store %struct.jfs_ea* %72, %struct.jfs_ea** %12, align 8
  br label %73

73:                                               ; preds = %92, %69
  %74 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %75 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %11, align 8
  %76 = call %struct.jfs_ea* @END_EALIST(%struct.jfs_ea_list* %75)
  %77 = icmp ult %struct.jfs_ea* %74, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %73
  %79 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %80 = call i64 @can_list(%struct.jfs_ea* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %85 = call i32 @copy_name(i8* %83, %struct.jfs_ea* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  %88 = load i8*, i8** %8, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %8, align 8
  br label %91

91:                                               ; preds = %82, %78
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.jfs_ea*, %struct.jfs_ea** %12, align 8
  %94 = call %struct.jfs_ea* @NEXT_EA(%struct.jfs_ea* %93)
  store %struct.jfs_ea* %94, %struct.jfs_ea** %12, align 8
  br label %73

95:                                               ; preds = %73
  br label %96

96:                                               ; preds = %95, %66, %61, %32
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = call i32 @ea_release(%struct.inode* %97, %struct.ea_buffer* %13)
  br label %99

99:                                               ; preds = %96, %26
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @up_read(i32* %102)
  %104 = load i64, i64* %9, align 8
  ret i64 %104
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @ea_get(%struct.inode*, %struct.ea_buffer*, i32) #1

declare dso_local %struct.jfs_ea* @FIRST_EA(%struct.jfs_ea_list*) #1

declare dso_local %struct.jfs_ea* @END_EALIST(%struct.jfs_ea_list*) #1

declare dso_local i64 @can_list(%struct.jfs_ea*) #1

declare dso_local i64 @name_size(%struct.jfs_ea*) #1

declare dso_local %struct.jfs_ea* @NEXT_EA(%struct.jfs_ea*) #1

declare dso_local i32 @copy_name(i8*, %struct.jfs_ea*) #1

declare dso_local i32 @ea_release(%struct.inode*, %struct.ea_buffer*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

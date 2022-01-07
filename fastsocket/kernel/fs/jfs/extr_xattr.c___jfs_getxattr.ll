; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_xattr.c___jfs_getxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_xattr.c___jfs_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.jfs_ea_list = type { i32 }
%struct.jfs_ea = type { i32, i32, i32 }
%struct.ea_buffer = type { i64 }
%struct.TYPE_2__ = type { i32 }

@XATTR_OS2_PREFIX = common dso_local global i32 0, align 4
@XATTR_OS2_PREFIX_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__jfs_getxattr(%struct.inode* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.jfs_ea_list*, align 8
  %11 = alloca %struct.jfs_ea*, align 8
  %12 = alloca %struct.ea_buffer, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %15, align 4
  store i8* null, i8** %16, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @XATTR_OS2_PREFIX, align 4
  %22 = load i32, i32* @XATTR_OS2_PREFIX_LEN, align 4
  %23 = call i64 @strncmp(i8* %20, i32 %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* @XATTR_OS2_PREFIX_LEN, align 4
  %28 = sub nsw i32 %26, %27
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmalloc(i32 %29, i32 %30)
  store i8* %31, i8** %16, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i64, i64* @ENOMEM, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %138

37:                                               ; preds = %25
  %38 = load i8*, i8** %16, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @XATTR_OS2_PREFIX_LEN, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i32 @strcpy(i8* %38, i8* %42)
  %44 = load i8*, i8** %16, align 8
  store i8* %44, i8** %7, align 8
  %45 = load i32, i32* @XATTR_OS2_PREFIX_LEN, align 4
  %46 = load i32, i32* %15, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %37, %4
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @down_read(i32* %51)
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call i32 @ea_get(%struct.inode* %53, %struct.ea_buffer* %12, i32 0)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %14, align 8
  br label %130

60:                                               ; preds = %48
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %124

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ea_buffer, %struct.ea_buffer* %12, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.jfs_ea_list*
  store %struct.jfs_ea_list* %67, %struct.jfs_ea_list** %10, align 8
  %68 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %10, align 8
  %69 = call %struct.jfs_ea* @FIRST_EA(%struct.jfs_ea_list* %68)
  store %struct.jfs_ea* %69, %struct.jfs_ea** %11, align 8
  br label %70

70:                                               ; preds = %120, %64
  %71 = load %struct.jfs_ea*, %struct.jfs_ea** %11, align 8
  %72 = load %struct.jfs_ea_list*, %struct.jfs_ea_list** %10, align 8
  %73 = call %struct.jfs_ea* @END_EALIST(%struct.jfs_ea_list* %72)
  %74 = icmp ult %struct.jfs_ea* %71, %73
  br i1 %74, label %75, label %123

75:                                               ; preds = %70
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.jfs_ea*, %struct.jfs_ea** %11, align 8
  %78 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %119

81:                                               ; preds = %75
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.jfs_ea*, %struct.jfs_ea** %11, align 8
  %84 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i64 @memcmp(i8* %82, i32 %85, i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %119

89:                                               ; preds = %81
  %90 = load %struct.jfs_ea*, %struct.jfs_ea** %11, align 8
  %91 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @le16_to_cpu(i32 %92)
  store i64 %93, i64* %14, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  br label %127

97:                                               ; preds = %89
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %9, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i64, i64* @ERANGE, align 8
  %103 = sub i64 0, %102
  store i64 %103, i64* %14, align 8
  br label %127

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.jfs_ea*, %struct.jfs_ea** %11, align 8
  %107 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %106, i32 0, i32 1
  %108 = bitcast i32* %107 to i8*
  %109 = load %struct.jfs_ea*, %struct.jfs_ea** %11, align 8
  %110 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  store i8* %114, i8** %17, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %17, align 8
  %117 = load i64, i64* %14, align 8
  %118 = call i32 @memcpy(i8* %115, i8* %116, i64 %117)
  br label %127

119:                                              ; preds = %81, %75
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.jfs_ea*, %struct.jfs_ea** %11, align 8
  %122 = call %struct.jfs_ea* @NEXT_EA(%struct.jfs_ea* %121)
  store %struct.jfs_ea* %122, %struct.jfs_ea** %11, align 8
  br label %70

123:                                              ; preds = %70
  br label %124

124:                                              ; preds = %123, %63
  %125 = load i64, i64* @ENODATA, align 8
  %126 = sub i64 0, %125
  store i64 %126, i64* %14, align 8
  br label %127

127:                                              ; preds = %124, %105, %101, %96
  %128 = load %struct.inode*, %struct.inode** %6, align 8
  %129 = call i32 @ea_release(%struct.inode* %128, %struct.ea_buffer* %12)
  br label %130

130:                                              ; preds = %127, %57
  %131 = load %struct.inode*, %struct.inode** %6, align 8
  %132 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %131)
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = call i32 @up_read(i32* %133)
  %135 = load i8*, i8** %16, align 8
  %136 = call i32 @kfree(i8* %135)
  %137 = load i64, i64* %14, align 8
  store i64 %137, i64* %5, align 8
  br label %138

138:                                              ; preds = %130, %34
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @ea_get(%struct.inode*, %struct.ea_buffer*, i32) #1

declare dso_local %struct.jfs_ea* @FIRST_EA(%struct.jfs_ea_list*) #1

declare dso_local %struct.jfs_ea* @END_EALIST(%struct.jfs_ea_list*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local %struct.jfs_ea* @NEXT_EA(%struct.jfs_ea*) #1

declare dso_local i32 @ea_release(%struct.inode*, %struct.ea_buffer*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

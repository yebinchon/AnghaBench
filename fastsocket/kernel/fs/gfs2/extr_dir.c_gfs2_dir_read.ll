; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file_ra_state = type { i32 }
%struct.gfs2_inode = type { i32, i64, i64 }
%struct.gfs2_sbd = type { i32 }
%struct.dirent_gather = type { i64, %struct.gfs2_dirent** }
%struct.gfs2_dirent = type { i32 }
%struct.buffer_head = type { i32, i32 }

@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@gfs2_dirent_gather = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Number of entries corrupt in dir %llu, ip->i_entries (%u) != g.offset (%u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_dir_read(%struct.inode* %0, i32* %1, i8* %2, i32 %3, %struct.file_ra_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.file_ra_state*, align 8
  %12 = alloca %struct.gfs2_inode*, align 8
  %13 = alloca %struct.gfs2_sbd*, align 8
  %14 = alloca %struct.dirent_gather, align 8
  %15 = alloca %struct.gfs2_dirent**, align 8
  %16 = alloca %struct.gfs2_dirent*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.file_ra_state* %4, %struct.file_ra_state** %11, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %20)
  store %struct.gfs2_inode* %21, %struct.gfs2_inode** %12, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %22)
  store %struct.gfs2_sbd* %23, %struct.gfs2_sbd** %13, align 8
  store i32 0, i32* %18, align 4
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %25 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %126

29:                                               ; preds = %5
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %42 = call i32 @dir_e_read(%struct.inode* %37, i32* %38, i8* %39, i32 %40, %struct.file_ra_state* %41)
  store i32 %42, i32* %6, align 4
  br label %126

43:                                               ; preds = %29
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %45 = call i32 @gfs2_is_stuffed(%struct.gfs2_inode* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %49 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %126

52:                                               ; preds = %43
  %53 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %54 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %53, %struct.buffer_head** %17)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %19, align 4
  store i32 %58, i32* %6, align 4
  br label %126

59:                                               ; preds = %52
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* @GFP_NOFS, align 4
  %63 = call %struct.gfs2_dirent** @kmalloc(i32 768, i32 %62)
  store %struct.gfs2_dirent** %63, %struct.gfs2_dirent*** %15, align 8
  %64 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %15, align 8
  %65 = icmp ne %struct.gfs2_dirent** %64, null
  br i1 %65, label %66, label %118

66:                                               ; preds = %59
  %67 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %15, align 8
  %68 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %14, i32 0, i32 1
  store %struct.gfs2_dirent** %67, %struct.gfs2_dirent*** %68, align 8
  %69 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %14, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @gfs2_dirent_gather, align 4
  %78 = call %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode* %70, i32 %73, i32 %76, i32 %77, i32* null, %struct.dirent_gather* %14)
  store %struct.gfs2_dirent* %78, %struct.gfs2_dirent** %16, align 8
  %79 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %16, align 8
  %80 = call i64 @IS_ERR(%struct.gfs2_dirent* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %66
  %83 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %16, align 8
  %84 = call i32 @PTR_ERR(%struct.gfs2_dirent* %83)
  store i32 %84, i32* %19, align 4
  br label %115

85:                                               ; preds = %66
  %86 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %87 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %14, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %88, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %94 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %95 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %98 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.dirent_gather, %struct.dirent_gather* %14, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @fs_warn(%struct.gfs2_sbd* %93, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %96, i64 %99, i64 %101)
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %19, align 4
  br label %115

105:                                              ; preds = %85
  %106 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %15, align 8
  %111 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %112 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @do_filldir_main(%struct.gfs2_inode* %106, i32* %107, i8* %108, i32 %109, %struct.gfs2_dirent** %110, i64 %113, i32* %18)
  store i32 %114, i32* %19, align 4
  br label %115

115:                                              ; preds = %105, %92, %82
  %116 = load %struct.gfs2_dirent**, %struct.gfs2_dirent*** %15, align 8
  %117 = call i32 @kfree(%struct.gfs2_dirent** %116)
  br label %118

118:                                              ; preds = %115, %59
  %119 = load i32, i32* %19, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* %19, align 4
  br label %122

122:                                              ; preds = %121, %118
  %123 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %124 = call i32 @brelse(%struct.buffer_head* %123)
  %125 = load i32, i32* %19, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %122, %57, %47, %36, %28
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @dir_e_read(%struct.inode*, i32*, i8*, i32, %struct.file_ra_state*) #1

declare dso_local i32 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local %struct.gfs2_dirent** @kmalloc(i32, i32) #1

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_scan(%struct.inode*, i32, i32, i32, i32*, %struct.dirent_gather*) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i64, i64, i64) #1

declare dso_local i32 @do_filldir_main(%struct.gfs2_inode*, i32*, i8*, i32, %struct.gfs2_dirent**, i64, i32*) #1

declare dso_local i32 @kfree(%struct.gfs2_dirent**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

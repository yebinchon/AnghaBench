; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_stat2inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_stat2inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_wstat = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.super_block = type { %struct.v9fs_session_info* }
%struct.v9fs_session_info = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%c %u %u\00", align 1
@S_IFBLK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown special type %c %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v9fs_stat2inode(%struct.p9_wstat* %0, %struct.inode* %1, %struct.super_block* %2) #0 {
  %4 = alloca %struct.p9_wstat*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca %struct.v9fs_session_info*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.p9_wstat* %0, %struct.p9_wstat** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.super_block* %2, %struct.super_block** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %6, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  store %struct.v9fs_session_info* %14, %struct.v9fs_session_info** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %18 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %24 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %30 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %36 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %41 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %46 = call i64 @v9fs_extended(%struct.v9fs_session_info* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %3
  %49 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %50 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %55 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %48, %3
  %60 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %61 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %62 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @p9mode2unixmode(%struct.v9fs_session_info* %60, i32 %63)
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @S_ISBLK(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %59
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @S_ISCHR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %122

78:                                               ; preds = %72, %59
  store i8 0, i8* %9, align 1
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %80 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %81 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @strncpy(i8* %79, i32 %82, i32 32)
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %85 = call i32 @sscanf(i8* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %9, i32* %10, i32* %11)
  %86 = load i8, i8* %9, align 1
  %87 = sext i8 %86 to i32
  switch i32 %87, label %101 [
    i32 99, label %88
    i32 98, label %100
  ]

88:                                               ; preds = %78
  %89 = load i32, i32* @S_IFBLK, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* @S_IFCHR, align 4
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %108

100:                                              ; preds = %78
  br label %108

101:                                              ; preds = %78
  %102 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %103 = load i8, i8* %9, align 1
  %104 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %105 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @P9_DPRINTK(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8 signext %103, i32 %106)
  br label %108

108:                                              ; preds = %101, %100, %88
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i64 @MKDEV(i32 %109, i32 %110)
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load %struct.inode*, %struct.inode** %5, align 8
  %115 = load %struct.inode*, %struct.inode** %5, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @init_special_inode(%struct.inode* %114, i32 %117, i64 %120)
  br label %125

122:                                              ; preds = %72
  %123 = load %struct.inode*, %struct.inode** %5, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %122, %108
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = load %struct.p9_wstat*, %struct.p9_wstat** %4, align 8
  %128 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @i_size_write(%struct.inode* %126, i32 %129)
  %131 = load %struct.inode*, %struct.inode** %5, align 8
  %132 = call i32 @i_size_read(%struct.inode* %131)
  %133 = add nsw i32 %132, 512
  %134 = sub nsw i32 %133, 1
  %135 = ashr i32 %134, 9
  %136 = load %struct.inode*, %struct.inode** %5, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  ret void
}

declare dso_local i64 @v9fs_extended(%struct.v9fs_session_info*) #1

declare dso_local i32 @p9mode2unixmode(%struct.v9fs_session_info*, i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*, i8 signext, i32) #1

declare dso_local i64 @MKDEV(i32, i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i64) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

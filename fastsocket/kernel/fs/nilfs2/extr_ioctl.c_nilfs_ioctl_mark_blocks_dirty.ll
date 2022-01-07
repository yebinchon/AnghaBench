; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_ioctl.c_nilfs_ioctl_mark_blocks_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_ioctl.c_nilfs_ioctl_mark_blocks_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32 }
%struct.nilfs_argv = type { i64 }
%struct.inode = type { i32 }
%struct.nilfs_bmap = type { i32 }
%struct.nilfs_bdesc = type { i64, i64, i64, i32 }
%struct.TYPE_2__ = type { %struct.nilfs_bmap* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*, %struct.nilfs_argv*, i8*)* @nilfs_ioctl_mark_blocks_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_ioctl_mark_blocks_dirty(%struct.the_nilfs* %0, %struct.nilfs_argv* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.nilfs_argv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.nilfs_bmap*, align 8
  %11 = alloca %struct.nilfs_bdesc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %5, align 8
  store %struct.nilfs_argv* %1, %struct.nilfs_argv** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.nilfs_argv*, %struct.nilfs_argv** %6, align 8
  %15 = getelementptr inbounds %struct.nilfs_argv, %struct.nilfs_argv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %18 = call %struct.inode* @nilfs_dat_inode(%struct.the_nilfs* %17)
  store %struct.inode* %18, %struct.inode** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = call %struct.TYPE_2__* @NILFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %21, align 8
  store %struct.nilfs_bmap* %22, %struct.nilfs_bmap** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.nilfs_bdesc*
  store %struct.nilfs_bdesc* %24, %struct.nilfs_bdesc** %11, align 8
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %136, %3
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %139

30:                                               ; preds = %25
  %31 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %10, align 8
  %32 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %32, i64 %34
  %36 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %11, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %38, i64 %40
  %42 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %11, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %45, i64 %47
  %49 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %48, i32 0, i32 1
  %50 = call i32 @nilfs_bmap_lookup_at_level(%struct.nilfs_bmap* %31, i32 %37, i64 %44, i64* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %30
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %142

60:                                               ; preds = %53
  %61 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %11, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %61, i64 %63
  %65 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %30
  %67 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %11, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %67, i64 %69
  %71 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %73, i64 %75
  %77 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %72, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %136

81:                                               ; preds = %66
  %82 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %11, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %82, i64 %84
  %86 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %81
  %90 = load %struct.inode*, %struct.inode** %9, align 8
  %91 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %11, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %91, i64 %93
  %95 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @nilfs_mdt_mark_block_dirty(%struct.inode* %90, i32 %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %89
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @ENOENT, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @WARN_ON(i32 %105)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %4, align 4
  br label %142

108:                                              ; preds = %89
  br label %135

109:                                              ; preds = %81
  %110 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %10, align 8
  %111 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %11, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %111, i64 %113
  %115 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %11, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %117, i64 %119
  %121 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @nilfs_bmap_mark(%struct.nilfs_bmap* %110, i32 %116, i64 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %109
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @ENOENT, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp eq i32 %127, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @WARN_ON(i32 %131)
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %4, align 4
  br label %142

134:                                              ; preds = %109
  br label %135

135:                                              ; preds = %134, %108
  br label %136

136:                                              ; preds = %135, %80
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %25

139:                                              ; preds = %25
  %140 = load i64, i64* %8, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %139, %126, %100, %58
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local %struct.inode* @nilfs_dat_inode(%struct.the_nilfs*) #1

declare dso_local %struct.TYPE_2__* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @nilfs_bmap_lookup_at_level(%struct.nilfs_bmap*, i32, i64, i64*) #1

declare dso_local i32 @nilfs_mdt_mark_block_dirty(%struct.inode*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nilfs_bmap_mark(%struct.nilfs_bmap*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

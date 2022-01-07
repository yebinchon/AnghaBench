; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_ioctl.c_nilfs_ioctl_do_get_bdescs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_ioctl.c_nilfs_ioctl_do_get_bdescs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32 }
%struct.inode = type { i32 }
%struct.nilfs_bmap = type { i32 }
%struct.nilfs_bdesc = type { i64, i64, i32 }
%struct.TYPE_2__ = type { %struct.nilfs_bmap* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*, i32*, i32, i8*, i64, i64)* @nilfs_ioctl_do_get_bdescs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_ioctl_do_get_bdescs(%struct.the_nilfs* %0, i32* %1, i32 %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.the_nilfs*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.nilfs_bmap*, align 8
  %16 = alloca %struct.nilfs_bdesc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %20 = call %struct.inode* @nilfs_dat_inode(%struct.the_nilfs* %19)
  store %struct.inode* %20, %struct.inode** %14, align 8
  %21 = load %struct.inode*, %struct.inode** %14, align 8
  %22 = call %struct.TYPE_2__* @NILFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %23, align 8
  store %struct.nilfs_bmap* %24, %struct.nilfs_bmap** %15, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = bitcast i8* %25 to %struct.nilfs_bdesc*
  store %struct.nilfs_bdesc* %26, %struct.nilfs_bdesc** %16, align 8
  %27 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %28 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %27, i32 0, i32 0
  %29 = call i32 @down_read(i32* %28)
  store i32 0, i32* %18, align 4
  br label %30

30:                                               ; preds = %75, %6
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %13, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %78

35:                                               ; preds = %30
  %36 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %15, align 8
  %37 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %16, align 8
  %38 = load i32, i32* %18, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %37, i64 %39
  %41 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %16, align 8
  %44 = load i32, i32* %18, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %43, i64 %45
  %47 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  %50 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %16, align 8
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %50, i64 %52
  %54 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %53, i32 0, i32 0
  %55 = call i32 @nilfs_bmap_lookup_at_level(%struct.nilfs_bmap* %36, i32 %42, i64 %49, i64* %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %35
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %65 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %64, i32 0, i32 0
  %66 = call i32 @up_read(i32* %65)
  %67 = load i32, i32* %17, align 4
  store i32 %67, i32* %7, align 4
  br label %84

68:                                               ; preds = %58
  %69 = load %struct.nilfs_bdesc*, %struct.nilfs_bdesc** %16, align 8
  %70 = load i32, i32* %18, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %69, i64 %71
  %73 = getelementptr inbounds %struct.nilfs_bdesc, %struct.nilfs_bdesc* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %68, %35
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %18, align 4
  br label %30

78:                                               ; preds = %30
  %79 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %80 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %79, i32 0, i32 0
  %81 = call i32 @up_read(i32* %80)
  %82 = load i64, i64* %13, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %78, %63
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local %struct.inode* @nilfs_dat_inode(%struct.the_nilfs*) #1

declare dso_local %struct.TYPE_2__* @NILFS_I(%struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @nilfs_bmap_lookup_at_level(%struct.nilfs_bmap*, i32, i64, i64*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

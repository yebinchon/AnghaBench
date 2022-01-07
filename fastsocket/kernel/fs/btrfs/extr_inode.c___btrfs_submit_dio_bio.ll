; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c___btrfs_submit_dio_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c___btrfs_submit_dio_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

@REQ_WRITE = common dso_local global i32 0, align 4
@__btrfs_submit_bio_start_direct_io = common dso_local global i32 0, align 4
@__btrfs_submit_bio_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*, %struct.inode*, i32, i32, i32, i32*, i32)* @__btrfs_submit_dio_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_submit_dio_bio(%struct.bio* %0, %struct.inode* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_root*, align 8
  %17 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @REQ_WRITE, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %15, align 4
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %23, align 8
  store %struct.btrfs_root* %24, %struct.btrfs_root** %16, align 8
  %25 = load %struct.bio*, %struct.bio** %8, align 8
  %26 = call i32 @bio_get(%struct.bio* %25)
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %7
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bio*, %struct.bio** %8, align 8
  %34 = call i32 @btrfs_bio_wq_end_io(i32 %32, %struct.bio* %33, i32 0)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %96

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %7
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %90

43:                                               ; preds = %39
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %51 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.bio*, %struct.bio** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @__btrfs_submit_bio_start_direct_io, align 4
  %58 = load i32, i32* @__btrfs_submit_bio_done, align 4
  %59 = call i32 @btrfs_wq_submit_bio(i32 %52, %struct.inode* %53, i32 %54, %struct.bio* %55, i32 0, i32 0, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %17, align 4
  br label %96

60:                                               ; preds = %46, %43
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = load %struct.bio*, %struct.bio** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @btrfs_csum_one_bio(%struct.btrfs_root* %64, %struct.inode* %65, %struct.bio* %66, i32 %67, i32 1)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %96

72:                                               ; preds = %63
  br label %88

73:                                               ; preds = %60
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = load %struct.bio*, %struct.bio** %8, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @btrfs_lookup_bio_sums_dio(%struct.btrfs_root* %77, %struct.inode* %78, %struct.bio* %79, i32 %80, i32* %81)
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %96

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %73
  br label %88

88:                                               ; preds = %87, %72
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %42
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.bio*, %struct.bio** %8, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @btrfs_map_bio(%struct.btrfs_root* %91, i32 %92, %struct.bio* %93, i32 0, i32 %94)
  store i32 %95, i32* %17, align 4
  br label %96

96:                                               ; preds = %90, %85, %71, %49, %37
  %97 = load %struct.bio*, %struct.bio** %8, align 8
  %98 = call i32 @bio_put(%struct.bio* %97)
  %99 = load i32, i32* %17, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @bio_get(%struct.bio*) #1

declare dso_local i32 @btrfs_bio_wq_end_io(i32, %struct.bio*, i32) #1

declare dso_local i32 @btrfs_wq_submit_bio(i32, %struct.inode*, i32, %struct.bio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btrfs_csum_one_bio(%struct.btrfs_root*, %struct.inode*, %struct.bio*, i32, i32) #1

declare dso_local i32 @btrfs_lookup_bio_sums_dio(%struct.btrfs_root*, %struct.inode*, %struct.bio*, i32, i32*) #1

declare dso_local i32 @btrfs_map_bio(%struct.btrfs_root*, i32, %struct.bio*, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

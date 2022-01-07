; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_find_group_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_find_group_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.ext2_group_desc = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*)* @find_group_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group_other(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext2_group_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = call %struct.TYPE_3__* @EXT2_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %20, i32 %21, i32* null)
  store %struct.ext2_group_desc* %22, %struct.ext2_group_desc** %8, align 8
  %23 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %24 = icmp ne %struct.ext2_group_desc* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %27 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le16_to_cpu(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %33 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le16_to_cpu(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %114

38:                                               ; preds = %31, %25, %2
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load i32, i32* %7, align 4
  %45 = srem i32 %43, %44
  store i32 %45, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %81, %38
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.super_block*, %struct.super_block** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %62, i32 %63, i32* null)
  store %struct.ext2_group_desc* %64, %struct.ext2_group_desc** %8, align 8
  %65 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %66 = icmp ne %struct.ext2_group_desc* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %69 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @le16_to_cpu(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %75 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @le16_to_cpu(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %114

80:                                               ; preds = %73, %67, %61
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = shl i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %46

84:                                               ; preds = %46
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %110, %84
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %95, %90
  %97 = load %struct.super_block*, %struct.super_block** %4, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %97, i32 %98, i32* null)
  store %struct.ext2_group_desc* %99, %struct.ext2_group_desc** %8, align 8
  %100 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %101 = icmp ne %struct.ext2_group_desc* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %104 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @le16_to_cpu(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %114

109:                                              ; preds = %102, %96
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %86

113:                                              ; preds = %86
  store i32 -1, i32* %3, align 4
  br label %116

114:                                              ; preds = %108, %79, %37
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %113
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.TYPE_4__* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.TYPE_3__* @EXT2_SB(%struct.super_block*) #1

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

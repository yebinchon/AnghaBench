; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_ialloc.c_find_group_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_ialloc.c_find_group_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.ext3_group_desc = type { i32, i32 }
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
  %8 = alloca %struct.ext3_group_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.TYPE_4__* @EXT3_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = call %struct.TYPE_3__* @EXT3_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block* %20, i32 %21, i32* null)
  store %struct.ext3_group_desc* %22, %struct.ext3_group_desc** %8, align 8
  %23 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %8, align 8
  %24 = icmp ne %struct.ext3_group_desc* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %8, align 8
  %27 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le16_to_cpu(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %8, align 8
  %33 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le16_to_cpu(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %117

39:                                               ; preds = %31, %25, %2
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = load i32, i32* %7, align 4
  %46 = srem i32 %44, %45
  store i32 %46, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %83, %39
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.super_block*, %struct.super_block** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block* %63, i32 %64, i32* null)
  store %struct.ext3_group_desc* %65, %struct.ext3_group_desc** %8, align 8
  %66 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %8, align 8
  %67 = icmp ne %struct.ext3_group_desc* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %8, align 8
  %70 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @le16_to_cpu(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %8, align 8
  %76 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @le16_to_cpu(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %117

82:                                               ; preds = %74, %68, %62
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = shl i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %47

86:                                               ; preds = %47
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %113, %86
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %88
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %97, %92
  %99 = load %struct.super_block*, %struct.super_block** %4, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block* %99, i32 %100, i32* null)
  store %struct.ext3_group_desc* %101, %struct.ext3_group_desc** %8, align 8
  %102 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %8, align 8
  %103 = icmp ne %struct.ext3_group_desc* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %8, align 8
  %106 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @le16_to_cpu(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %3, align 4
  br label %117

112:                                              ; preds = %104, %98
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %88

116:                                              ; preds = %88
  store i32 -1, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %110, %80, %37
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_4__* @EXT3_I(%struct.inode*) #1

declare dso_local %struct.TYPE_3__* @EXT3_SB(%struct.super_block*) #1

declare dso_local %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

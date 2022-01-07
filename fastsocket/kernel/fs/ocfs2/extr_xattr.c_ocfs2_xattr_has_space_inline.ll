; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_has_space_inline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_has_space_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.ocfs2_extent_list, %struct.ocfs2_inline_data }
%struct.ocfs2_extent_list = type { i32, i32 }
%struct.ocfs2_inline_data = type { i32 }
%struct.ocfs2_inode_info = type { i32 }
%struct.TYPE_4__ = type { i32 }

@OCFS2_MIN_XATTR_INLINE_SIZE = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_dinode*)* @ocfs2_xattr_has_space_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_has_space_inline(%struct.inode* %0, %struct.ocfs2_dinode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_dinode*, align 8
  %6 = alloca %struct.ocfs2_inode_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_inline_data*, align 8
  %10 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %11)
  store %struct.ocfs2_inode_info* %12, %struct.ocfs2_inode_info** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_4__* @OCFS2_SB(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @OCFS2_MIN_XATTR_INLINE_SIZE, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

23:                                               ; preds = %2
  %24 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %25 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %32 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store %struct.ocfs2_inline_data* %33, %struct.ocfs2_inline_data** %9, align 8
  %34 = load %struct.ocfs2_inline_data*, %struct.ocfs2_inline_data** %9, align 8
  %35 = getelementptr inbounds %struct.ocfs2_inline_data, %struct.ocfs2_inline_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %39 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le64_to_cpu(i32 %40)
  %42 = sub nsw i32 %37, %41
  store i32 %42, i32* %8, align 4
  br label %74

43:                                               ; preds = %23
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = call i64 @ocfs2_inode_is_fast_symlink(%struct.inode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ocfs2_fast_symlink_chars(i32 %50)
  %52 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %53 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le64_to_cpu(i32 %54)
  %56 = sub nsw i32 %51, %55
  store i32 %56, i32* %8, align 4
  br label %73

57:                                               ; preds = %43
  %58 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %59 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store %struct.ocfs2_extent_list* %60, %struct.ocfs2_extent_list** %10, align 8
  %61 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %10, align 8
  %62 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %10, align 8
  %66 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = sub nsw i32 %64, %68
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %57, %47
  br label %74

74:                                               ; preds = %73, %30
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp uge i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %80

79:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %78, %22
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_SB(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @ocfs2_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local i32 @ocfs2_fast_symlink_chars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

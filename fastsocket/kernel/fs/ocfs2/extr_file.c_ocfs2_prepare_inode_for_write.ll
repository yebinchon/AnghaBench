; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_prepare_inode_for_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_prepare_inode_for_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"O_APPEND: inode->i_size=%llu\0A\00", align 1
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i64*, i64, i32, i32*)* @ocfs2_prepare_inode_for_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_prepare_inode_for_write(%struct.dentry* %0, i64* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %13, align 8
  br label %19

19:                                               ; preds = %35, %5
  %20 = load %struct.inode*, %struct.inode** %13, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @ocfs2_inode_lock(%struct.inode* %20, i32* null, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  store i32 -1, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @mlog_errno(i32 %26)
  br label %140

28:                                               ; preds = %19
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = call i64 @should_remove_suid(%struct.dentry* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.inode*, %struct.inode** %13, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @ocfs2_inode_unlock(%struct.inode* %36, i32 %37)
  store i32 1, i32* %12, align 4
  br label %19

39:                                               ; preds = %32
  %40 = load %struct.inode*, %struct.inode** %13, align 8
  %41 = call i32 @ocfs2_write_remove_suid(%struct.inode* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %132

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.inode*, %struct.inode** %13, align 8
  %53 = call i64 @i_size_read(%struct.inode* %52)
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %14, align 8
  %55 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %54)
  br label %59

56:                                               ; preds = %48
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %14, align 8
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %60, %61
  store i64 %62, i64* %15, align 8
  %63 = load %struct.inode*, %struct.inode** %13, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @ocfs2_check_range_for_refcount(%struct.inode* %63, i64 %64, i64 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %77

69:                                               ; preds = %59
  %70 = load %struct.inode*, %struct.inode** %13, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @ocfs2_inode_unlock(%struct.inode* %70, i32 %71)
  store i32 -1, i32* %12, align 4
  %73 = load %struct.inode*, %struct.inode** %13, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @ocfs2_prepare_inode_for_refcount(%struct.inode* %73, i64 %74, i64 %75, i32* %12)
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %69, %59
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %132

83:                                               ; preds = %77
  %84 = load i32*, i32** %10, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86, %83
  br label %125

91:                                               ; preds = %86
  %92 = load %struct.inode*, %struct.inode** %13, align 8
  %93 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32*, i32** %10, align 8
  store i32 0, i32* %100, align 4
  br label %125

101:                                              ; preds = %91
  %102 = load i64, i64* %15, align 8
  %103 = load %struct.inode*, %struct.inode** %13, align 8
  %104 = call i64 @i_size_read(%struct.inode* %103)
  %105 = icmp sgt i64 %102, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32*, i32** %10, align 8
  store i32 0, i32* %107, align 4
  br label %125

108:                                              ; preds = %101
  %109 = load %struct.inode*, %struct.inode** %13, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @ocfs2_check_range_for_holes(%struct.inode* %109, i64 %110, i64 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32*, i32** %10, align 8
  store i32 0, i32* %116, align 4
  store i32 0, i32* %11, align 4
  br label %124

117:                                              ; preds = %108
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @mlog_errno(i32 %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %115
  br label %125

125:                                              ; preds = %124, %106, %99, %90
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i64, i64* %14, align 8
  %130 = load i64*, i64** %7, align 8
  store i64 %129, i64* %130, align 8
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %80, %44
  %133 = load i32, i32* %12, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load %struct.inode*, %struct.inode** %13, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @ocfs2_inode_unlock(%struct.inode* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %132
  br label %140

140:                                              ; preds = %139, %25
  %141 = load i32, i32* %11, align 4
  ret i32 %141
}

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @should_remove_suid(%struct.dentry*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_write_remove_suid(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @ocfs2_check_range_for_refcount(%struct.inode*, i64, i64) #1

declare dso_local i32 @ocfs2_prepare_inode_for_refcount(%struct.inode*, i64, i64, i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_check_range_for_holes(%struct.inode*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

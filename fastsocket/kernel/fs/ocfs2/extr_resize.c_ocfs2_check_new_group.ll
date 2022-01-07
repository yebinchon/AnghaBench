; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_resize.c_ocfs2_check_new_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_resize.c_ocfs2_check_new_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_new_group_input = type { i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_group_desc = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Group descriptor # %llu has bad chain %u while input has %u set.\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Group descriptor # %llu has bit count %u but input has %u clusters set\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Group descriptor # %llu has free bit count %u but it should have %u set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_new_group_input*, %struct.buffer_head*)* @ocfs2_check_new_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_check_new_group(%struct.inode* %0, %struct.ocfs2_dinode* %1, %struct.ocfs2_new_group_input* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_dinode*, align 8
  %7 = alloca %struct.ocfs2_new_group_input*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_group_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %6, align 8
  store %struct.ocfs2_new_group_input* %2, %struct.ocfs2_new_group_input** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %15, %struct.ocfs2_group_desc** %10, align 8
  %16 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %17 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %27 = call i32 @ocfs2_check_group_descriptor(i32 %24, %struct.ocfs2_dinode* %25, %struct.buffer_head* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %112

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %35 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %39 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %31
  %43 = load i32, i32* @ML_ERROR, align 4
  %44 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %45 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le64_to_cpu(i32 %46)
  %48 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %49 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %53 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mlog(i32 %43, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %47, i32 %51, i32 %54)
  br label %111

56:                                               ; preds = %31
  %57 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %58 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %62 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = mul nsw i32 %63, %64
  %66 = icmp ne i32 %60, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %56
  %68 = load i32, i32* @ML_ERROR, align 4
  %69 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %70 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @le64_to_cpu(i32 %71)
  %73 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %74 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %78 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mlog(i32 %68, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i64 %72, i32 %76, i32 %79)
  br label %110

81:                                               ; preds = %56
  %82 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %83 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %87 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %11, align 4
  %90 = mul nsw i32 %88, %89
  %91 = icmp ne i32 %85, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %81
  %93 = load i32, i32* @ML_ERROR, align 4
  %94 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %95 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @le64_to_cpu(i32 %96)
  %98 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %10, align 8
  %99 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %103 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = mul nsw i32 %104, %105
  %107 = call i32 @mlog(i32 %93, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i64 %97, i32 %101, i32 %106)
  br label %109

108:                                              ; preds = %81
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %108, %92
  br label %110

110:                                              ; preds = %109, %67
  br label %111

111:                                              ; preds = %110, %42
  br label %112

112:                                              ; preds = %111, %30
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_check_group_descriptor(i32, %struct.ocfs2_dinode*, %struct.buffer_head*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

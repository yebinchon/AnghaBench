; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_resize.c_ocfs2_verify_group_and_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_resize.c_ocfs2_verify_group_and_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ocfs2_new_group_input = type { i64, i64, i64, i64 }
%struct.buffer_head = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"add a group which is in the current volume.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"input chain exceeds the limit.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"the add group should be in chain %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"add group's clusters overflow.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"the cluster exceeds the maximum of a group\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"the free cluster exceeds the total clusters\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"the last group isn't full. Use group extend first.\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"group blkno is invalid\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"group descriptor check failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_new_group_input*, %struct.buffer_head*)* @ocfs2_verify_group_and_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_verify_group_and_input(%struct.inode* %0, %struct.ocfs2_dinode* %1, %struct.ocfs2_new_group_input* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_dinode*, align 8
  %7 = alloca %struct.ocfs2_new_group_input*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %6, align 8
  store %struct.ocfs2_new_group_input* %2, %struct.ocfs2_new_group_input** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %15 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @le16_to_cpu(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %22 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le16_to_cpu(i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %28 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le16_to_cpu(i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %37 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @ocfs2_blocks_to_clusters(i32 %35, i64 %38)
  store i64 %39, i64* %12, align 8
  %40 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %41 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @le32_to_cpu(i32 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %4
  %50 = load i32, i32* @ML_ERROR, align 4
  %51 = call i32 (i32, i8*, ...) @mlog(i32 %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %144

52:                                               ; preds = %4
  %53 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %54 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @ML_ERROR, align 4
  %60 = call i32 (i32, i8*, ...) @mlog(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %143

61:                                               ; preds = %52
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %68 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @ML_ERROR, align 4
  %73 = load i64, i64* %11, align 8
  %74 = call i32 (i32, i8*, ...) @mlog(i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  br label %142

75:                                               ; preds = %65, %61
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %78 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load i64, i64* %13, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @ML_ERROR, align 4
  %85 = call i32 (i32, i8*, ...) @mlog(i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %141

86:                                               ; preds = %75
  %87 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %88 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @ML_ERROR, align 4
  %94 = call i32 (i32, i8*, ...) @mlog(i32 %93, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %140

95:                                               ; preds = %86
  %96 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %97 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %100 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* @ML_ERROR, align 4
  %105 = call i32 (i32, i8*, ...) @mlog(i32 %104, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %139

106:                                              ; preds = %95
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* %10, align 8
  %109 = srem i64 %107, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @ML_ERROR, align 4
  %113 = call i32 (i32, i8*, ...) @mlog(i32 %112, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %138

114:                                              ; preds = %106
  %115 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %116 = getelementptr inbounds %struct.ocfs2_new_group_input, %struct.ocfs2_new_group_input* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = load i64, i64* %12, align 8
  %120 = call i64 @ocfs2_which_cluster_group(%struct.inode* %118, i64 %119)
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* @ML_ERROR, align 4
  %124 = call i32 (i32, i8*, ...) @mlog(i32 %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %137

125:                                              ; preds = %114
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %128 = load %struct.ocfs2_new_group_input*, %struct.ocfs2_new_group_input** %7, align 8
  %129 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %130 = call i32 @ocfs2_check_new_group(%struct.inode* %126, %struct.ocfs2_dinode* %127, %struct.ocfs2_new_group_input* %128, %struct.buffer_head* %129)
  store i32 %130, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i32, i32* @ML_ERROR, align 4
  %134 = call i32 (i32, i8*, ...) @mlog(i32 %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %136

135:                                              ; preds = %125
  store i32 0, i32* %14, align 4
  br label %136

136:                                              ; preds = %135, %132
  br label %137

137:                                              ; preds = %136, %122
  br label %138

138:                                              ; preds = %137, %111
  br label %139

139:                                              ; preds = %138, %103
  br label %140

140:                                              ; preds = %139, %92
  br label %141

141:                                              ; preds = %140, %83
  br label %142

142:                                              ; preds = %141, %71
  br label %143

143:                                              ; preds = %142, %58
  br label %144

144:                                              ; preds = %143, %49
  %145 = load i32, i32* %14, align 4
  ret i32 %145
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @ocfs2_blocks_to_clusters(i32, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i64 @ocfs2_which_cluster_group(%struct.inode*, i64) #1

declare dso_local i32 @ocfs2_check_new_group(%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_new_group_input*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

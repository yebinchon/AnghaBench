; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_setup_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_setup_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext3_super_block = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ext3_sb_info = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@EXT3_MAX_SUPP_REV = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"error: revision level too high, forcing read-only mode\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@EXT3_VALID_FS = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"warning: mounting unchecked fs, running e2fsck is recommended\00", align 1
@EXT3_ERROR_FS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"warning: mounting fs with errors, running e2fsck is recommended\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"warning: maximal mount count reached, running e2fsck is recommended\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"warning: checktime reached, running e2fsck is recommended\00", align 1
@EXT3_DFL_MAX_MNT_COUNT = common dso_local global i32 0, align 4
@EXT3_FEATURE_INCOMPAT_RECOVER = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"[bs=%lu, gc=%lu, bpg=%lu, ipg=%lu, mo=%04lx]\00", align 1
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"using external journal on %s\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"using internal journal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext3_super_block*, i32)* @ext3_setup_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_setup_super(%struct.super_block* %0, %struct.ext3_super_block* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext3_super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext3_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ext3_super_block* %1, %struct.ext3_super_block** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.ext3_sb_info* @EXT3_SB(%struct.super_block* %12)
  store %struct.ext3_sb_info* %13, %struct.ext3_sb_info** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %15 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le32_to_cpu(i32 %16)
  %18 = load i64, i64* @EXT3_MAX_SUPP_REV, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load i32, i32* @KERN_ERR, align 4
  %23 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %21, i32 %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @MS_RDONLY, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %20, %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %181

30:                                               ; preds = %25
  %31 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %8, align 8
  %32 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @EXT3_VALID_FS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = load i32, i32* @KERN_WARNING, align 4
  %40 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %38, i32 %39, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %102

41:                                               ; preds = %30
  %42 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %8, align 8
  %43 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @EXT3_ERROR_FS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = load i32, i32* @KERN_WARNING, align 4
  %51 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %49, i32 %50, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %101

52:                                               ; preds = %41
  %53 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %54 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call zeroext i16 @le16_to_cpu(i32 %55)
  %57 = zext i16 %56 to i64
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %61 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call zeroext i16 @le16_to_cpu(i32 %62)
  %64 = zext i16 %63 to i32
  %65 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %66 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call zeroext i16 @le16_to_cpu(i32 %67)
  %69 = zext i16 %68 to i64
  %70 = trunc i64 %69 to i16
  %71 = zext i16 %70 to i32
  %72 = icmp sge i32 %64, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load %struct.super_block*, %struct.super_block** %5, align 8
  %75 = load i32, i32* @KERN_WARNING, align 4
  %76 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %74, i32 %75, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  br label %100

77:                                               ; preds = %59, %52
  %78 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %79 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le32_to_cpu(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %77
  %84 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %85 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @le32_to_cpu(i32 %86)
  %88 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %89 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le32_to_cpu(i32 %90)
  %92 = add nsw i64 %87, %91
  %93 = call i64 (...) @get_seconds()
  %94 = icmp sle i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %83
  %96 = load %struct.super_block*, %struct.super_block** %5, align 8
  %97 = load i32, i32* @KERN_WARNING, align 4
  %98 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %96, i32 %97, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %99

99:                                               ; preds = %95, %83, %77
  br label %100

100:                                              ; preds = %99, %73
  br label %101

101:                                              ; preds = %100, %48
  br label %102

102:                                              ; preds = %101, %37
  %103 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %104 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call zeroext i16 @le16_to_cpu(i32 %105)
  %107 = zext i16 %106 to i64
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* @EXT3_DFL_MAX_MNT_COUNT, align 4
  %111 = call i32 @cpu_to_le16(i32 %110)
  %112 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %113 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %102
  %115 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %116 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %115, i32 0, i32 1
  %117 = call i32 @le16_add_cpu(i32* %116, i32 1)
  %118 = call i64 (...) @get_seconds()
  %119 = call i32 @cpu_to_le32(i64 %118)
  %120 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %121 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.super_block*, %struct.super_block** %5, align 8
  %123 = call i32 @ext3_update_dynamic_rev(%struct.super_block* %122)
  %124 = load %struct.super_block*, %struct.super_block** %5, align 8
  %125 = load i32, i32* @EXT3_FEATURE_INCOMPAT_RECOVER, align 4
  %126 = call i32 @EXT3_SET_INCOMPAT_FEATURE(%struct.super_block* %124, i32 %125)
  %127 = load %struct.super_block*, %struct.super_block** %5, align 8
  %128 = load %struct.ext3_super_block*, %struct.ext3_super_block** %6, align 8
  %129 = call i32 @ext3_commit_super(%struct.super_block* %127, %struct.ext3_super_block* %128, i32 1)
  %130 = load %struct.super_block*, %struct.super_block** %5, align 8
  %131 = load i32, i32* @DEBUG, align 4
  %132 = call i64 @test_opt(%struct.super_block* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %114
  %135 = load %struct.super_block*, %struct.super_block** %5, align 8
  %136 = load i32, i32* @KERN_INFO, align 4
  %137 = load %struct.super_block*, %struct.super_block** %5, align 8
  %138 = getelementptr inbounds %struct.super_block, %struct.super_block* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %8, align 8
  %141 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.super_block*, %struct.super_block** %5, align 8
  %144 = call i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %143)
  %145 = load %struct.super_block*, %struct.super_block** %5, align 8
  %146 = call i32 @EXT3_INODES_PER_GROUP(%struct.super_block* %145)
  %147 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %8, align 8
  %148 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %135, i32 %136, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %139, i32 %142, i32 %144, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %134, %114
  %152 = load %struct.super_block*, %struct.super_block** %5, align 8
  %153 = call %struct.ext3_sb_info* @EXT3_SB(%struct.super_block* %152)
  %154 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %153, i32 0, i32 1
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %175

159:                                              ; preds = %151
  %160 = load i32, i32* @BDEVNAME_SIZE, align 4
  %161 = zext i32 %160 to i64
  %162 = call i8* @llvm.stacksave()
  store i8* %162, i8** %10, align 8
  %163 = alloca i8, i64 %161, align 16
  store i64 %161, i64* %11, align 8
  %164 = load %struct.super_block*, %struct.super_block** %5, align 8
  %165 = load i32, i32* @KERN_INFO, align 4
  %166 = load %struct.super_block*, %struct.super_block** %5, align 8
  %167 = call %struct.ext3_sb_info* @EXT3_SB(%struct.super_block* %166)
  %168 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %167, i32 0, i32 1
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @bdevname(i32 %171, i8* %163)
  %173 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %164, i32 %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %172)
  %174 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %174)
  br label %179

175:                                              ; preds = %151
  %176 = load %struct.super_block*, %struct.super_block** %5, align 8
  %177 = load i32, i32* @KERN_INFO, align 4
  %178 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %176, i32 %177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %179

179:                                              ; preds = %175, %159
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %179, %28
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local %struct.ext3_sb_info* @EXT3_SB(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext3_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local zeroext i16 @le16_to_cpu(i32) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @ext3_update_dynamic_rev(%struct.super_block*) #1

declare dso_local i32 @EXT3_SET_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @ext3_commit_super(%struct.super_block*, %struct.ext3_super_block*, i32) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @EXT3_INODES_PER_GROUP(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bdevname(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_sysv_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_sysv_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 (i32, %struct.buffer_head*)* }
%struct.buffer_head = type { i32 }
%struct.super_block = type { i32, %struct.sysv_sb_info* }
%struct.sysv_sb_info = type { %struct.buffer_head*, %struct.buffer_head*, i64, %struct.super_block* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@flavours = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"oldfs: cannot read superblock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"VFS: unable to find oldfs superblock on device %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"VFS: oldfs: unsupported block size (%dKb)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @sysv_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysv_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.sysv_sb_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store i32 0, i32* %12, align 4
  %14 = call i32 @BUILD_BUG_ON(i32 1)
  %15 = call i32 @BUILD_BUG_ON(i32 1)
  %16 = call i32 @BUILD_BUG_ON(i32 1)
  %17 = call i32 @BUILD_BUG_ON(i32 1)
  %18 = call i32 @BUILD_BUG_ON(i32 1)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sysv_sb_info* @kzalloc(i32 32, i32 %19)
  store %struct.sysv_sb_info* %20, %struct.sysv_sb_info** %10, align 8
  %21 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %22 = icmp ne %struct.sysv_sb_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %172

26:                                               ; preds = %3
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %29 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %28, i32 0, i32 3
  store %struct.super_block* %27, %struct.super_block** %29, align 8
  %30 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %31 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 1
  store %struct.sysv_sb_info* %32, %struct.sysv_sb_info** %34, align 8
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = load i32, i32* @BLOCK_SIZE, align 4
  %37 = call i32 @sb_set_blocksize(%struct.super_block* %35, i32 %36)
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %74, %26
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flavours, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  br i1 %48, label %49, label %77

49:                                               ; preds = %47
  %50 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %51 = call i32 @brelse(%struct.buffer_head* %50)
  %52 = load %struct.super_block*, %struct.super_block** %5, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flavours, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call %struct.buffer_head* @sb_bread(%struct.super_block* %52, i64 %58)
  store %struct.buffer_head* %59, %struct.buffer_head** %9, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %61 = icmp ne %struct.buffer_head* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %49
  br label %74

63:                                               ; preds = %49
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flavours, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32 (i32, %struct.buffer_head*)*, i32 (i32, %struct.buffer_head*)** %68, align 8
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = call i32 @SYSV_SB(%struct.super_block* %70)
  %72 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %73 = call i32 %69(i32 %71, %struct.buffer_head* %72)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %63, %62
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %38

77:                                               ; preds = %47
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  br label %150

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  switch i32 %82, label %115 [
    i32 1, label %83
    i32 2, label %100
    i32 3, label %102
  ]

83:                                               ; preds = %81
  %84 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 1
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %11, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %90 = call i32 @brelse(%struct.buffer_head* %89)
  %91 = load %struct.super_block*, %struct.super_block** %5, align 8
  %92 = call i32 @sb_set_blocksize(%struct.super_block* %91, i32 512)
  %93 = load %struct.super_block*, %struct.super_block** %5, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call %struct.buffer_head* @sb_bread(%struct.super_block* %93, i64 %94)
  store %struct.buffer_head* %95, %struct.buffer_head** %8, align 8
  %96 = load %struct.super_block*, %struct.super_block** %5, align 8
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %97, 1
  %99 = call %struct.buffer_head* @sb_bread(%struct.super_block* %96, i64 %98)
  store %struct.buffer_head* %99, %struct.buffer_head** %9, align 8
  br label %116

100:                                              ; preds = %81
  %101 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %101, %struct.buffer_head** %8, align 8
  br label %116

102:                                              ; preds = %81
  %103 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %104 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 1
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %11, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %109 = call i32 @brelse(%struct.buffer_head* %108)
  %110 = load %struct.super_block*, %struct.super_block** %5, align 8
  %111 = call i32 @sb_set_blocksize(%struct.super_block* %110, i32 2048)
  %112 = load %struct.super_block*, %struct.super_block** %5, align 8
  %113 = load i64, i64* %11, align 8
  %114 = call %struct.buffer_head* @sb_bread(%struct.super_block* %112, i64 %113)
  store %struct.buffer_head* %114, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %114, %struct.buffer_head** %8, align 8
  br label %116

115:                                              ; preds = %81
  br label %161

116:                                              ; preds = %102, %100, %83
  %117 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %118 = icmp ne %struct.buffer_head* %117, null
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %121 = icmp ne %struct.buffer_head* %120, null
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %124 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %125 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %124, i32 0, i32 1
  store %struct.buffer_head* %123, %struct.buffer_head** %125, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %127 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %128 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %127, i32 0, i32 0
  store %struct.buffer_head* %126, %struct.buffer_head** %128, align 8
  %129 = load %struct.super_block*, %struct.super_block** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i64 @complete_read_super(%struct.super_block* %129, i32 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %172

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %119, %116
  %137 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %138 = call i32 @brelse(%struct.buffer_head* %137)
  %139 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %140 = call i32 @brelse(%struct.buffer_head* %139)
  %141 = load %struct.super_block*, %struct.super_block** %5, align 8
  %142 = load i32, i32* @BLOCK_SIZE, align 4
  %143 = call i32 @sb_set_blocksize(%struct.super_block* %141, i32 %142)
  %144 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %145

145:                                              ; preds = %171, %160, %136
  %146 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %147 = call i32 @kfree(%struct.sysv_sb_info* %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %172

150:                                              ; preds = %80
  %151 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %152 = call i32 @brelse(%struct.buffer_head* %151)
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = load %struct.super_block*, %struct.super_block** %5, align 8
  %157 = getelementptr inbounds %struct.super_block, %struct.super_block* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %155, %150
  br label %145

161:                                              ; preds = %115
  %162 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %163 = call i32 @brelse(%struct.buffer_head* %162)
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %12, align 4
  %168 = sub nsw i32 %167, 2
  %169 = shl i32 1, %168
  %170 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %166, %161
  br label %145

172:                                              ; preds = %145, %134, %23
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.sysv_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i32 @SYSV_SB(%struct.super_block*) #1

declare dso_local i64 @complete_read_super(%struct.super_block*, i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @kfree(%struct.sysv_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

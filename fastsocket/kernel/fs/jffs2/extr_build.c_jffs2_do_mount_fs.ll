; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_build.c_jffs2_do_mount_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_build.c_jffs2_do_mount_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"build_fs failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_do_mount_fs(%struct.jffs2_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  %7 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %8 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %11 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %13 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %16 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %14, %17
  %19 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %22 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %28 = call i64 @jffs2_blocks_use_vmalloc(%struct.jffs2_sb_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.TYPE_6__* @vmalloc(i32 %31)
  %33 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %34 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %33, i32 0, i32 5
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %34, align 8
  br label %41

35:                                               ; preds = %1
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.TYPE_6__* @kmalloc(i32 %36, i32 %37)
  %39 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %40 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %39, i32 0, i32 5
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %40, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %43 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %42, i32 0, i32 5
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %172

49:                                               ; preds = %41
  %50 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %51 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %50, i32 0, i32 5
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @memset(%struct.TYPE_6__* %52, i32 0, i32 %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %92, %49
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %58 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %55
  %62 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %63 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %62, i32 0, i32 5
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %72 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %76 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %75, i32 0, i32 5
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 %74, i32* %81, align 4
  %82 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %83 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %86 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %85, i32 0, i32 5
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 %84, i32* %91, align 4
  br label %92

92:                                               ; preds = %61
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %55

95:                                               ; preds = %55
  %96 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %97 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %96, i32 0, i32 18
  %98 = call i32 @INIT_LIST_HEAD(i32* %97)
  %99 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %100 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %99, i32 0, i32 17
  %101 = call i32 @INIT_LIST_HEAD(i32* %100)
  %102 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %103 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %102, i32 0, i32 16
  %104 = call i32 @INIT_LIST_HEAD(i32* %103)
  %105 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %106 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %105, i32 0, i32 15
  %107 = call i32 @INIT_LIST_HEAD(i32* %106)
  %108 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %109 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %108, i32 0, i32 14
  %110 = call i32 @INIT_LIST_HEAD(i32* %109)
  %111 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %112 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %111, i32 0, i32 13
  %113 = call i32 @INIT_LIST_HEAD(i32* %112)
  %114 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %115 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %114, i32 0, i32 12
  %116 = call i32 @INIT_LIST_HEAD(i32* %115)
  %117 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %118 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %117, i32 0, i32 11
  %119 = call i32 @INIT_LIST_HEAD(i32* %118)
  %120 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %121 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %120, i32 0, i32 10
  %122 = call i32 @INIT_LIST_HEAD(i32* %121)
  %123 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %124 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %123, i32 0, i32 9
  %125 = call i32 @INIT_LIST_HEAD(i32* %124)
  %126 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %127 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %126, i32 0, i32 8
  %128 = call i32 @INIT_LIST_HEAD(i32* %127)
  %129 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %130 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %129, i32 0, i32 7
  %131 = call i32 @INIT_LIST_HEAD(i32* %130)
  %132 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %133 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %132, i32 0, i32 4
  store i32 1, i32* %133, align 8
  %134 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %135 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %134, i32 0, i32 6
  store i32* null, i32** %135, align 8
  %136 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %137 = call i32 @jffs2_sum_init(%struct.jffs2_sb_info* %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %95
  br label %156

141:                                              ; preds = %95
  %142 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %143 = call i64 @jffs2_build_filesystem(%struct.jffs2_sb_info* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = call i32 @dbg_fsbuild(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %147 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %148 = call i32 @jffs2_free_ino_caches(%struct.jffs2_sb_info* %147)
  %149 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %150 = call i32 @jffs2_free_raw_node_refs(%struct.jffs2_sb_info* %149)
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %156

153:                                              ; preds = %141
  %154 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %155 = call i32 @jffs2_calc_trigger_levels(%struct.jffs2_sb_info* %154)
  store i32 0, i32* %2, align 4
  br label %172

156:                                              ; preds = %145, %140
  %157 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %158 = call i64 @jffs2_blocks_use_vmalloc(%struct.jffs2_sb_info* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %162 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %161, i32 0, i32 5
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = call i32 @vfree(%struct.TYPE_6__* %163)
  br label %170

165:                                              ; preds = %156
  %166 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %167 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %166, i32 0, i32 5
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = call i32 @kfree(%struct.TYPE_6__* %168)
  br label %170

170:                                              ; preds = %165, %160
  %171 = load i32, i32* %4, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %170, %153, %46
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i64 @jffs2_blocks_use_vmalloc(%struct.jffs2_sb_info*) #1

declare dso_local %struct.TYPE_6__* @vmalloc(i32) #1

declare dso_local %struct.TYPE_6__* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @jffs2_sum_init(%struct.jffs2_sb_info*) #1

declare dso_local i64 @jffs2_build_filesystem(%struct.jffs2_sb_info*) #1

declare dso_local i32 @dbg_fsbuild(i8*) #1

declare dso_local i32 @jffs2_free_ino_caches(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_free_raw_node_refs(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_calc_trigger_levels(%struct.jffs2_sb_info*) #1

declare dso_local i32 @vfree(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

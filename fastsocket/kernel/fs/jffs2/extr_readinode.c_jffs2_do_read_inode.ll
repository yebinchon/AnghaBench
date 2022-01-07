; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_jffs2_do_read_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_jffs2_do_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32 }
%struct.jffs2_inode_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.jffs2_raw_node_ref* }
%struct.jffs2_raw_node_ref = type { i32 }
%struct.jffs2_raw_inode = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"read inode #%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"waiting for ino #%u in state %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Eep. Trying to read_inode #%u when it's already in state %d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"cannot allocate inocache for root inode\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"creating inocache for root inode\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"requestied to read an nonexistent ino %u\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_do_read_inode(%struct.jffs2_sb_info* %0, %struct.jffs2_inode_info* %1, i32 %2, %struct.jffs2_raw_inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.jffs2_sb_info*, align 8
  %7 = alloca %struct.jffs2_inode_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.jffs2_raw_inode*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %6, align 8
  store %struct.jffs2_inode_info* %1, %struct.jffs2_inode_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.jffs2_raw_inode* %3, %struct.jffs2_raw_inode** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = call i32 (i8*, ...) @dbg_readinode(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %36, %4
  %13 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %14 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.TYPE_5__* @jffs2_get_ino_cache(%struct.jffs2_sb_info* %16, i32 %17)
  %19 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %20 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %19, i32 0, i32 0
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %20, align 8
  %21 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %22 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %62

25:                                               ; preds = %12
  %26 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %27 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %59 [
    i32 128, label %31
    i32 133, label %31
    i32 132, label %36
    i32 131, label %36
    i32 129, label %49
    i32 130, label %49
  ]

31:                                               ; preds = %25, %25
  %32 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %33 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 129, i32* %35, align 8
  br label %61

36:                                               ; preds = %25, %25
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %39 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, ...) @dbg_readinode(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %42)
  %44 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %45 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %44, i32 0, i32 1
  %46 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %47 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %46, i32 0, i32 0
  %48 = call i32 @sleep_on_spinunlock(i32* %45, i32* %47)
  br label %12

49:                                               ; preds = %25, %25
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %52 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %55)
  %57 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %58 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %57, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %58, align 8
  br label %61

59:                                               ; preds = %25
  %60 = call i32 (...) @BUG()
  br label %61

61:                                               ; preds = %59, %49, %31
  br label %62

62:                                               ; preds = %61, %12
  %63 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %64 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %67 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = icmp ne %struct.TYPE_5__* %68, null
  br i1 %69, label %116, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %116

73:                                               ; preds = %70
  %74 = call %struct.TYPE_5__* (...) @jffs2_alloc_inode_cache()
  %75 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %76 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %75, i32 0, i32 0
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %76, align 8
  %77 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %78 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %73
  %82 = call i32 (i8*, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %131

85:                                               ; preds = %73
  %86 = call i32 (i8*, ...) @dbg_readinode(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %87 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %88 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = call i32 @memset(%struct.TYPE_5__* %89, i32 0, i32 4)
  %91 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %92 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %96 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %100 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = bitcast %struct.TYPE_5__* %101 to %struct.jffs2_raw_node_ref*
  %103 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %104 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  store %struct.jffs2_raw_node_ref* %102, %struct.jffs2_raw_node_ref** %106, align 8
  %107 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %108 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 129, i32* %110, align 8
  %111 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %112 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %113 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = call i32 @jffs2_add_ino_cache(%struct.jffs2_sb_info* %111, %struct.TYPE_5__* %114)
  br label %116

116:                                              ; preds = %85, %70, %62
  %117 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %118 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = icmp ne %struct.TYPE_5__* %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (i8*, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @ENOENT, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %131

126:                                              ; preds = %116
  %127 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %128 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %129 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %9, align 8
  %130 = call i32 @jffs2_do_read_inode_internal(%struct.jffs2_sb_info* %127, %struct.jffs2_inode_info* %128, %struct.jffs2_raw_inode* %129)
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %126, %121, %81
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @dbg_readinode(i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_5__* @jffs2_get_ino_cache(%struct.jffs2_sb_info*, i32) #1

declare dso_local i32 @sleep_on_spinunlock(i32*, i32*) #1

declare dso_local i32 @JFFS2_ERROR(i8*, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.TYPE_5__* @jffs2_alloc_inode_cache(...) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @jffs2_add_ino_cache(%struct.jffs2_sb_info*, %struct.TYPE_5__*) #1

declare dso_local i32 @jffs2_do_read_inode_internal(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %struct.jffs2_raw_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

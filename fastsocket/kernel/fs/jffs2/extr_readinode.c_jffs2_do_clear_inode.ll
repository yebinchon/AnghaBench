; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_jffs2_do_clear_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_jffs2_do_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_inode_info = type { i32, %struct.TYPE_5__*, %struct.jffs2_full_dirent*, i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, i8*, i32 }
%struct.jffs2_full_dirent = type { %struct.jffs2_full_dirent* }
%struct.TYPE_6__ = type { i32 }

@INO_STATE_CHECKING = common dso_local global i64 0, align 8
@INO_STATE_CLEARING = common dso_local global i32 0, align 4
@INO_STATE_CHECKEDABSENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jffs2_do_clear_inode(%struct.jffs2_sb_info* %0, %struct.jffs2_inode_info* %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca %struct.jffs2_inode_info*, align 8
  %5 = alloca %struct.jffs2_full_dirent*, align 8
  %6 = alloca %struct.jffs2_full_dirent*, align 8
  %7 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store %struct.jffs2_inode_info* %1, %struct.jffs2_inode_info** %4, align 8
  %8 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %9 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %10 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = call i32 @jffs2_xattr_delete_inode(%struct.jffs2_sb_info* %8, %struct.TYPE_5__* %11)
  %13 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %14 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %17 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %22 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %20, %2
  %29 = phi i1 [ false, %2 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %32 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %37 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @INO_STATE_CHECKING, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %45 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %46 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* @INO_STATE_CLEARING, align 4
  %49 = call i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info* %44, %struct.TYPE_5__* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %35, %28
  %51 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %52 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %51, i32 0, i32 5
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %60 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %61 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %60, i32 0, i32 5
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info* %59, i32 %64)
  br label %66

66:                                               ; preds = %58, %55
  %67 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %68 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %67, i32 0, i32 5
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 @jffs2_free_full_dnode(%struct.TYPE_6__* %69)
  br label %71

71:                                               ; preds = %66, %50
  %72 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %73 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %72, i32 0, i32 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  br label %79

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi %struct.jffs2_sb_info* [ %77, %76 ], [ null, %78 ]
  %81 = call i32 @jffs2_kill_fragtree(i32* %73, %struct.jffs2_sb_info* %80)
  %82 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %83 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %88 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @kfree(i32* %89)
  %91 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %92 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %91, i32 0, i32 3
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %95 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %94, i32 0, i32 2
  %96 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %95, align 8
  store %struct.jffs2_full_dirent* %96, %struct.jffs2_full_dirent** %6, align 8
  br label %97

97:                                               ; preds = %100, %93
  %98 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %6, align 8
  %99 = icmp ne %struct.jffs2_full_dirent* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %6, align 8
  store %struct.jffs2_full_dirent* %101, %struct.jffs2_full_dirent** %5, align 8
  %102 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %103 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %102, i32 0, i32 0
  %104 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %103, align 8
  store %struct.jffs2_full_dirent* %104, %struct.jffs2_full_dirent** %6, align 8
  %105 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %5, align 8
  %106 = call i32 @jffs2_free_full_dirent(%struct.jffs2_full_dirent* %105)
  br label %97

107:                                              ; preds = %97
  %108 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %109 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = icmp ne %struct.TYPE_5__* %110, null
  br i1 %111, label %112, label %144

112:                                              ; preds = %107
  %113 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %114 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @INO_STATE_CHECKING, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %144

120:                                              ; preds = %112
  %121 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %122 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %123 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %122, i32 0, i32 1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load i32, i32* @INO_STATE_CHECKEDABSENT, align 4
  %126 = call i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info* %121, %struct.TYPE_5__* %124, i32 %125)
  %127 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %128 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %127, i32 0, i32 1
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %133 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %132, i32 0, i32 1
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = bitcast %struct.TYPE_5__* %134 to i8*
  %136 = icmp eq i8* %131, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %120
  %138 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %139 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %140 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %139, i32 0, i32 1
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = call i32 @jffs2_del_ino_cache(%struct.jffs2_sb_info* %138, %struct.TYPE_5__* %141)
  br label %143

143:                                              ; preds = %137, %120
  br label %144

144:                                              ; preds = %143, %112, %107
  %145 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %4, align 8
  %146 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %145, i32 0, i32 0
  %147 = call i32 @mutex_unlock(i32* %146)
  ret void
}

declare dso_local i32 @jffs2_xattr_delete_inode(%struct.jffs2_sb_info*, %struct.TYPE_5__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info*, i32) #1

declare dso_local i32 @jffs2_free_full_dnode(%struct.TYPE_6__*) #1

declare dso_local i32 @jffs2_kill_fragtree(i32*, %struct.jffs2_sb_info*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @jffs2_free_full_dirent(%struct.jffs2_full_dirent*) #1

declare dso_local i32 @jffs2_del_ino_cache(%struct.jffs2_sb_info*, %struct.TYPE_5__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

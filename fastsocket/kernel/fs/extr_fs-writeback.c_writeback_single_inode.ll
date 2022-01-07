; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c_writeback_single_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c_writeback_single_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.writeback_control = type { i64, i64 }

@I_WILL_FREE = common dso_local global i32 0, align 4
@I_FREEING = common dso_local global i32 0, align 4
@I_SYNC = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@I_DIRTY = common dso_local global i32 0, align 4
@inode_lock = common dso_local global i32 0, align 4
@I_DIRTY_SYNC = common dso_local global i32 0, align 4
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4
@I_CLEAR = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@I_DIRTY_PAGES = common dso_local global i32 0, align 4
@inode_in_use = common dso_local global i32 0, align 4
@inode_unused = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.writeback_control*)* @writeback_single_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeback_single_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 3
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @I_WILL_FREE, align 4
  %23 = load i32, i32* @I_FREEING, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @I_WILL_FREE, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @WARN_ON(i32 %35)
  br label %37

37:                                               ; preds = %30, %18
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @I_SYNC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %46 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @WB_SYNC_ALL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = call i32 @requeue_io(%struct.inode* %51)
  store i32 0, i32* %3, align 4
  br label %180

53:                                               ; preds = %44
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = call i32 @inode_wait_for_writeback(%struct.inode* %54)
  br label %56

56:                                               ; preds = %53, %37
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @I_SYNC, align 4
  %61 = and i32 %59, %60
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @I_DIRTY, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @I_SYNC, align 4
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* @I_DIRTY, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = call i32 @spin_unlock(i32* @inode_lock)
  %80 = load %struct.address_space*, %struct.address_space** %6, align 8
  %81 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %82 = call i32 @do_writepages(%struct.address_space* %80, %struct.writeback_control* %81)
  store i32 %82, i32* %8, align 4
  %83 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %84 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @WB_SYNC_ALL, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %56
  %89 = load %struct.address_space*, %struct.address_space** %6, align 8
  %90 = call i32 @filemap_fdatawait(%struct.address_space* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %93, %88
  br label %96

96:                                               ; preds = %95, %56
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @I_DIRTY_SYNC, align 4
  %99 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %106 = call i32 @write_inode(%struct.inode* %104, %struct.writeback_control* %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %109, %103
  br label %112

112:                                              ; preds = %111, %96
  %113 = call i32 @spin_lock(i32* @inode_lock)
  %114 = load i32, i32* @I_SYNC, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.inode*, %struct.inode** %4, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @I_FREEING, align 4
  %124 = load i32, i32* @I_CLEAR, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %176, label %128

128:                                              ; preds = %112
  %129 = load %struct.address_space*, %struct.address_space** %6, align 8
  %130 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %131 = call i64 @mapping_tagged(%struct.address_space* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %128
  %134 = load i32, i32* @I_DIRTY_PAGES, align 4
  %135 = load %struct.inode*, %struct.inode** %4, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %140 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp sle i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %133
  %144 = load %struct.inode*, %struct.inode** %4, align 8
  %145 = call i32 @requeue_io(%struct.inode* %144)
  br label %149

146:                                              ; preds = %133
  %147 = load %struct.inode*, %struct.inode** %4, align 8
  %148 = call i32 @redirty_tail(%struct.inode* %147)
  br label %149

149:                                              ; preds = %146, %143
  br label %175

150:                                              ; preds = %128
  %151 = load %struct.inode*, %struct.inode** %4, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @I_DIRTY, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load %struct.inode*, %struct.inode** %4, align 8
  %159 = call i32 @redirty_tail(%struct.inode* %158)
  br label %174

160:                                              ; preds = %150
  %161 = load %struct.inode*, %struct.inode** %4, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 2
  %163 = call i64 @atomic_read(i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.inode*, %struct.inode** %4, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 1
  %168 = call i32 @list_move(i32* %167, i32* @inode_in_use)
  br label %173

169:                                              ; preds = %160
  %170 = load %struct.inode*, %struct.inode** %4, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 1
  %172 = call i32 @list_move(i32* %171, i32* @inode_unused)
  br label %173

173:                                              ; preds = %169, %165
  br label %174

174:                                              ; preds = %173, %157
  br label %175

175:                                              ; preds = %174, %149
  br label %176

176:                                              ; preds = %175, %112
  %177 = load %struct.inode*, %struct.inode** %4, align 8
  %178 = call i32 @inode_sync_complete(%struct.inode* %177)
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %176, %50
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @requeue_io(%struct.inode*) #1

declare dso_local i32 @inode_wait_for_writeback(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @do_writepages(%struct.address_space*, %struct.writeback_control*) #1

declare dso_local i32 @filemap_fdatawait(%struct.address_space*) #1

declare dso_local i32 @write_inode(%struct.inode*, %struct.writeback_control*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @mapping_tagged(%struct.address_space*, i32) #1

declare dso_local i32 @redirty_tail(%struct.inode*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @inode_sync_complete(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

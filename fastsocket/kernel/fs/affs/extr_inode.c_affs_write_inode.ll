; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_inode.c_affs_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_inode.c_affs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, %struct.TYPE_5__, i32, i32, %struct.super_block* }
%struct.TYPE_5__ = type { i32 }
%struct.super_block = type { i32 }
%struct.writeback_control = type { i32 }
%struct.buffer_head = type { i32 }
%struct.affs_tail = type { i8*, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"AFFS: write_inode(%lu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"write_inode\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Cannot read block %lu\00", align 1
@EIO = common dso_local global i32 0, align 4
@ST_ROOT = common dso_local global i32 0, align 4
@SF_MUFS = common dso_local global i32 0, align 4
@SF_SETUID = common dso_local global i32 0, align 4
@SF_SETGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @affs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.affs_tail*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 6
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %172

23:                                               ; preds = %2
  %24 = load %struct.super_block*, %struct.super_block** %6, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.buffer_head* @affs_bread(%struct.super_block* %24, i64 %27)
  store %struct.buffer_head* %28, %struct.buffer_head** %7, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = icmp ne %struct.buffer_head* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load %struct.super_block*, %struct.super_block** %6, align 8
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @affs_error(%struct.super_block* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %172

39:                                               ; preds = %23
  %40 = load %struct.super_block*, %struct.super_block** %6, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %42 = call %struct.affs_tail* @AFFS_TAIL(%struct.super_block* %40, %struct.buffer_head* %41)
  store %struct.affs_tail* %42, %struct.affs_tail** %8, align 8
  %43 = load %struct.affs_tail*, %struct.affs_tail** %8, align 8
  %44 = getelementptr inbounds %struct.affs_tail, %struct.affs_tail* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @ST_ROOT, align 4
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = icmp eq i8* %45, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.super_block*, %struct.super_block** %6, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = call %struct.TYPE_7__* @AFFS_ROOT_TAIL(%struct.super_block* %54, %struct.buffer_head* %55)
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = call i32 @secs_to_datestamp(i32 %53, i32* %57)
  br label %161

59:                                               ; preds = %39
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = call %struct.TYPE_8__* @AFFS_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_be32(i32 %63)
  %65 = load %struct.affs_tail*, %struct.affs_tail** %8, align 8
  %66 = getelementptr inbounds %struct.affs_tail, %struct.affs_tail* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.affs_tail*, %struct.affs_tail** %8, align 8
  %72 = getelementptr inbounds %struct.affs_tail, %struct.affs_tail* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.affs_tail*, %struct.affs_tail** %8, align 8
  %78 = getelementptr inbounds %struct.affs_tail, %struct.affs_tail* %77, i32 0, i32 3
  %79 = call i32 @secs_to_datestamp(i32 %76, i32* %78)
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.super_block*, %struct.super_block** %6, align 8
  %84 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %82, %86
  br i1 %87, label %160, label %88

88:                                               ; preds = %59
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %9, align 4
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %10, align 4
  %95 = load %struct.super_block*, %struct.super_block** %6, align 8
  %96 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %95)
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SF_MUFS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %133

102:                                              ; preds = %88
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.inode*, %struct.inode** %4, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 65535
  br i1 %111, label %112, label %117

112:                                              ; preds = %107, %102
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = xor i32 %115, -1
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load %struct.inode*, %struct.inode** %4, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 65535
  br i1 %126, label %127, label %132

127:                                              ; preds = %122, %117
  %128 = load %struct.inode*, %struct.inode** %4, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = xor i32 %130, -1
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %127, %122
  br label %133

133:                                              ; preds = %132, %88
  %134 = load %struct.super_block*, %struct.super_block** %6, align 8
  %135 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %134)
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SF_SETUID, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %9, align 4
  %143 = call i8* @cpu_to_be16(i32 %142)
  %144 = load %struct.affs_tail*, %struct.affs_tail** %8, align 8
  %145 = getelementptr inbounds %struct.affs_tail, %struct.affs_tail* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %141, %133
  %147 = load %struct.super_block*, %struct.super_block** %6, align 8
  %148 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %147)
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SF_SETGID, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %146
  %155 = load i32, i32* %10, align 4
  %156 = call i8* @cpu_to_be16(i32 %155)
  %157 = load %struct.affs_tail*, %struct.affs_tail** %8, align 8
  %158 = getelementptr inbounds %struct.affs_tail, %struct.affs_tail* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  br label %159

159:                                              ; preds = %154, %146
  br label %160

160:                                              ; preds = %159, %59
  br label %161

161:                                              ; preds = %160, %49
  %162 = load %struct.super_block*, %struct.super_block** %6, align 8
  %163 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %164 = call i32 @affs_fix_checksum(%struct.super_block* %162, %struct.buffer_head* %163)
  %165 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %166 = load %struct.inode*, %struct.inode** %4, align 8
  %167 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %165, %struct.inode* %166)
  %168 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %169 = call i32 @affs_brelse(%struct.buffer_head* %168)
  %170 = load %struct.inode*, %struct.inode** %4, align 8
  %171 = call i32 @affs_free_prealloc(%struct.inode* %170)
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %161, %31, %22
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i64) #1

declare dso_local i32 @affs_error(%struct.super_block*, i8*, i8*, i64) #1

declare dso_local %struct.affs_tail* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @secs_to_datestamp(i32, i32*) #1

declare dso_local %struct.TYPE_7__* @AFFS_ROOT_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local %struct.TYPE_8__* @AFFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @AFFS_SB(%struct.super_block*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @affs_fix_checksum(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i32 @affs_free_prealloc(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

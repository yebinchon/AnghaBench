; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_jffs2_do_read_inode_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_jffs2_do_read_inode_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_inode_info = type { i8*, %struct.TYPE_8__*, i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.jffs2_raw_inode = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.jffs2_readinode_info = type { i64, i64, i64, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@.str = private unnamed_addr constant [26 x i8] c"ino #%u pino/nlink is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"cannot read nodes for ino %u, returned error is %d\0A\00", align 1
@INO_STATE_READING = common dso_local global i64 0, align 8
@INO_STATE_CHECKEDABSENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Failed to build final fragtree for inode #%u: error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"no data nodes found for ino #%u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"but it has children so we fake some modes for it\0A\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@INO_STATE_PRESENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"failed to read from flash: error %d, %zd of %zd bytes read\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"CRC failed for read_inode of inode %u at physical location 0x%x\0A\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [83 x i8] c"Truncating ino #%u to %d bytes failed because it only had %d bytes to start with!\0A\00", align 1
@INO_STATE_CHECKING = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [69 x i8] c"can't allocate %d bytes of memory for the symlink target path cache\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"symlink's target '%s' cached\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"Argh. Special inode #%u with mode 0%o had metadata node\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"Argh. Special inode #%u with mode 0%o has no fragments\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"Argh. Special inode #%u with mode 0x%x had more than one node\0A\00", align 1
@RB_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %struct.jffs2_raw_inode*)* @jffs2_do_read_inode_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_do_read_inode_internal(%struct.jffs2_sb_info* %0, %struct.jffs2_inode_info* %1, %struct.jffs2_raw_inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca %struct.jffs2_inode_info*, align 8
  %7 = alloca %struct.jffs2_raw_inode*, align 8
  %8 = alloca %struct.jffs2_readinode_info, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %5, align 8
  store %struct.jffs2_inode_info* %1, %struct.jffs2_inode_info** %6, align 8
  store %struct.jffs2_raw_inode* %2, %struct.jffs2_raw_inode** %7, align 8
  %13 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %14 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %19 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @dbg_readinode(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22)
  %24 = call i32 @memset(%struct.jffs2_readinode_info* %8, i32 0, i32 48)
  %25 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %26 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %27 = call i32 @jffs2_get_inode_nodes(%struct.jffs2_sb_info* %25, %struct.jffs2_inode_info* %26, %struct.jffs2_readinode_info* %8)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %3
  %31 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %32 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %39 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @INO_STATE_READING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %30
  %46 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %47 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %48 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i32, i32* @INO_STATE_CHECKEDABSENT, align 4
  %51 = call i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info* %46, %struct.TYPE_8__* %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %30
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %558

54:                                               ; preds = %3
  %55 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %56 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %57 = call i32 @jffs2_build_inode_fragtree(%struct.jffs2_sb_info* %55, %struct.jffs2_inode_info* %56, %struct.jffs2_readinode_info* %8)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %54
  %61 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %62 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %69 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @INO_STATE_READING, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %60
  %76 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %77 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %78 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* @INO_STATE_CHECKEDABSENT, align 4
  %81 = call i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info* %76, %struct.TYPE_8__* %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %60
  %83 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 5
  %84 = call i32 @jffs2_free_tmp_dnode_info_list(i32* %83)
  %85 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = icmp ne %struct.TYPE_9__* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = call i32 @jffs2_free_full_dnode(%struct.TYPE_11__* %92)
  %94 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = call i32 @jffs2_free_tmp_dnode_info(%struct.TYPE_9__* %95)
  %97 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %97, align 8
  br label %98

98:                                               ; preds = %88, %82
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %4, align 4
  br label %558

100:                                              ; preds = %54
  %101 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = icmp ne %struct.TYPE_9__* %102, null
  br i1 %103, label %104, label %131

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %120 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %119, i32 0, i32 3
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %120, align 8
  %121 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = call i32 @jffs2_free_tmp_dnode_info(%struct.TYPE_9__* %122)
  br label %129

124:                                              ; preds = %104
  %125 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %126 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = call i32 @jffs2_kill_tn(%struct.jffs2_sb_info* %125, %struct.TYPE_9__* %127)
  br label %129

129:                                              ; preds = %124, %114
  %130 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %130, align 8
  br label %131

131:                                              ; preds = %129, %100
  %132 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %135 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 4
  %136 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %137 = call i32 @jffs2_dbg_fragtree_paranoia_check_nolock(%struct.jffs2_inode_info* %136)
  %138 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %226

145:                                              ; preds = %131
  %146 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %147 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %146, i32 0, i32 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 1
  br i1 %151, label %152, label %182

152:                                              ; preds = %145
  %153 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %154 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %153, i32 0, i32 1
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (i8*, i32, ...) @JFFS2_WARNING(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  %159 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %180, label %162

162:                                              ; preds = %152
  %163 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %164 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %163, i32 0, i32 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @INO_STATE_READING, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %162
  %171 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %172 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %173 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %172, i32 0, i32 1
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = load i32, i32* @INO_STATE_CHECKEDABSENT, align 4
  %176 = call i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info* %171, %struct.TYPE_8__* %174, i32 %175)
  br label %177

177:                                              ; preds = %170, %162
  %178 = load i32, i32* @EIO, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %558

180:                                              ; preds = %152
  %181 = call i32 @JFFS2_NOTICE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %145
  %183 = load i32, i32* @S_IRUGO, align 4
  %184 = or i32 130, %183
  %185 = load i32, i32* @S_IWUSR, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @S_IXUGO, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @cpu_to_jemode(i32 %188)
  %190 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %191 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = call i8* @cpu_to_je32(i64 0)
  %193 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %194 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %193, i32 0, i32 6
  store i8* %192, i8** %194, align 8
  %195 = call i8* @cpu_to_je32(i64 0)
  %196 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %197 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %196, i32 0, i32 4
  store i8* %195, i8** %197, align 8
  %198 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %199 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %198, i32 0, i32 5
  store i8* %195, i8** %199, align 8
  %200 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %201 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %200, i32 0, i32 10
  store i8* %195, i8** %201, align 8
  %202 = call i8* @cpu_to_je32(i64 0)
  %203 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %204 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  %205 = call i8* @cpu_to_je16(i32 0)
  %206 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %207 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %206, i32 0, i32 9
  store i8* %205, i8** %207, align 8
  %208 = call i8* @cpu_to_je16(i32 0)
  %209 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %210 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %209, i32 0, i32 8
  store i8* %208, i8** %210, align 8
  %211 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %212 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %211, i32 0, i32 1
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @INO_STATE_READING, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %225

218:                                              ; preds = %182
  %219 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %220 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %221 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %220, i32 0, i32 1
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = load i32, i32* @INO_STATE_PRESENT, align 4
  %224 = call i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info* %219, %struct.TYPE_8__* %222, i32 %223)
  br label %225

225:                                              ; preds = %218, %182
  store i32 0, i32* %4, align 4
  br label %558

226:                                              ; preds = %131
  %227 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %228 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @ref_offset(i64 %229)
  %231 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %232 = bitcast %struct.jffs2_raw_inode* %231 to i8*
  %233 = call i32 @jffs2_flash_read(%struct.jffs2_sb_info* %227, i32 %230, i64 88, i64* %11, i8* %232)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %226
  %237 = load i64, i64* %11, align 8
  %238 = icmp ne i64 %237, 88
  br i1 %238, label %239, label %258

239:                                              ; preds = %236, %226
  %240 = load i32, i32* %12, align 4
  %241 = load i64, i64* %11, align 8
  %242 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %240, i64 %241, i64 88)
  %243 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %244 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %243, i32 0, i32 4
  %245 = call i32 @mutex_unlock(i32* %244)
  %246 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %247 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %248 = call i32 @jffs2_do_clear_inode(%struct.jffs2_sb_info* %246, %struct.jffs2_inode_info* %247)
  %249 = load i32, i32* %12, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %239
  %252 = load i32, i32* %12, align 4
  br label %256

253:                                              ; preds = %239
  %254 = load i32, i32* @EIO, align 4
  %255 = sub nsw i32 0, %254
  br label %256

256:                                              ; preds = %253, %251
  %257 = phi i32 [ %252, %251 ], [ %255, %253 ]
  store i32 %257, i32* %4, align 4
  br label %558

258:                                              ; preds = %236
  %259 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %260 = call i64 @crc32(i32 0, %struct.jffs2_raw_inode* %259, i32 80)
  store i64 %260, i64* %9, align 8
  %261 = load i64, i64* %9, align 8
  %262 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %263 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %262, i32 0, i32 7
  %264 = load i8*, i8** %263, align 8
  %265 = call i64 @je32_to_cpu(i8* %264)
  %266 = icmp ne i64 %261, %265
  br i1 %266, label %267, label %285

267:                                              ; preds = %258
  %268 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %269 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %268, i32 0, i32 1
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @ref_offset(i64 %274)
  %276 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %272, i32 %275)
  %277 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %278 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %277, i32 0, i32 4
  %279 = call i32 @mutex_unlock(i32* %278)
  %280 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %281 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %282 = call i32 @jffs2_do_clear_inode(%struct.jffs2_sb_info* %280, %struct.jffs2_inode_info* %281)
  %283 = load i32, i32* @EIO, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %4, align 4
  br label %558

285:                                              ; preds = %258
  %286 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %287 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @jemode_to_cpu(i32 %288)
  %290 = load i32, i32* @S_IFMT, align 4
  %291 = and i32 %289, %290
  switch i32 %291, label %542 [
    i32 130, label %292
    i32 128, label %309
    i32 129, label %341
    i32 132, label %454
    i32 131, label %454
  ]

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %296 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %295, i32 0, i32 6
  %297 = load i8*, i8** %296, align 8
  %298 = call i64 @je32_to_cpu(i8* %297)
  %299 = icmp ugt i64 %294, %298
  br i1 %299, label %300, label %308

300:                                              ; preds = %292
  %301 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = call i8* @cpu_to_je32(i64 %302)
  %304 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %305 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %304, i32 0, i32 4
  store i8* %303, i8** %305, align 8
  %306 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %307 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %306, i32 0, i32 5
  store i8* %303, i8** %307, align 8
  br label %308

308:                                              ; preds = %300, %292
  br label %542

309:                                              ; preds = %285
  %310 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %311 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %312 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %311, i32 0, i32 2
  %313 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %314 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %313, i32 0, i32 3
  %315 = load i8*, i8** %314, align 8
  %316 = call i64 @je32_to_cpu(i8* %315)
  %317 = call i64 @jffs2_truncate_fragtree(%struct.jffs2_sb_info* %310, i32* %312, i64 %316)
  store i64 %317, i64* %10, align 8
  %318 = load i64, i64* %10, align 8
  %319 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %320 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %319, i32 0, i32 3
  %321 = load i8*, i8** %320, align 8
  %322 = call i64 @je32_to_cpu(i8* %321)
  %323 = icmp ne i64 %318, %322
  br i1 %323, label %324, label %340

324:                                              ; preds = %309
  %325 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %326 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %325, i32 0, i32 1
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %331 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %330, i32 0, i32 3
  %332 = load i8*, i8** %331, align 8
  %333 = call i64 @je32_to_cpu(i8* %332)
  %334 = load i64, i64* %10, align 8
  %335 = call i32 (i8*, i32, ...) @JFFS2_WARNING(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0), i32 %329, i64 %333, i64 %334)
  %336 = load i64, i64* %10, align 8
  %337 = call i8* @cpu_to_je32(i64 %336)
  %338 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %339 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %338, i32 0, i32 3
  store i8* %337, i8** %339, align 8
  br label %340

340:                                              ; preds = %324, %309
  br label %542

341:                                              ; preds = %285
  %342 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %343 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %342, i32 0, i32 3
  %344 = load i8*, i8** %343, align 8
  %345 = call i64 @je32_to_cpu(i8* %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %353, label %347

347:                                              ; preds = %341
  %348 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %349 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %348, i32 0, i32 2
  %350 = load i8*, i8** %349, align 8
  %351 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %352 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %351, i32 0, i32 3
  store i8* %350, i8** %352, align 8
  br label %353

353:                                              ; preds = %347, %341
  %354 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %355 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %354, i32 0, i32 1
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @INO_STATE_CHECKING, align 8
  %360 = icmp ne i64 %358, %359
  br i1 %360, label %361, label %453

361:                                              ; preds = %353
  %362 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %363 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %362, i32 0, i32 1
  %364 = load i8*, i8** %363, align 8
  %365 = call i64 @je32_to_cpu(i8* %364)
  %366 = add i64 %365, 1
  %367 = load i32, i32* @GFP_KERNEL, align 4
  %368 = call i8* @kmalloc(i64 %366, i32 %367)
  %369 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %370 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %369, i32 0, i32 0
  store i8* %368, i8** %370, align 8
  %371 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %372 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %371, i32 0, i32 0
  %373 = load i8*, i8** %372, align 8
  %374 = icmp ne i8* %373, null
  br i1 %374, label %390, label %375

375:                                              ; preds = %361
  %376 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %377 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %376, i32 0, i32 1
  %378 = load i8*, i8** %377, align 8
  %379 = call i64 @je32_to_cpu(i8* %378)
  %380 = trunc i64 %379 to i32
  %381 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0), i32 %380)
  %382 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %383 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %382, i32 0, i32 4
  %384 = call i32 @mutex_unlock(i32* %383)
  %385 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %386 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %387 = call i32 @jffs2_do_clear_inode(%struct.jffs2_sb_info* %385, %struct.jffs2_inode_info* %386)
  %388 = load i32, i32* @ENOMEM, align 4
  %389 = sub nsw i32 0, %388
  store i32 %389, i32* %4, align 4
  br label %558

390:                                              ; preds = %361
  %391 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %392 = getelementptr inbounds %struct.jffs2_readinode_info, %struct.jffs2_readinode_info* %8, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = call i32 @ref_offset(i64 %393)
  %395 = sext i32 %394 to i64
  %396 = add i64 %395, 88
  %397 = trunc i64 %396 to i32
  %398 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %399 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %398, i32 0, i32 1
  %400 = load i8*, i8** %399, align 8
  %401 = call i64 @je32_to_cpu(i8* %400)
  %402 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %403 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %402, i32 0, i32 0
  %404 = load i8*, i8** %403, align 8
  %405 = call i32 @jffs2_flash_read(%struct.jffs2_sb_info* %391, i32 %397, i64 %401, i64* %11, i8* %404)
  store i32 %405, i32* %12, align 4
  %406 = load i32, i32* %12, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %415, label %408

408:                                              ; preds = %390
  %409 = load i64, i64* %11, align 8
  %410 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %411 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %410, i32 0, i32 1
  %412 = load i8*, i8** %411, align 8
  %413 = call i64 @je32_to_cpu(i8* %412)
  %414 = icmp ne i64 %409, %413
  br i1 %414, label %415, label %440

415:                                              ; preds = %408, %390
  %416 = load i64, i64* %11, align 8
  %417 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %418 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %417, i32 0, i32 1
  %419 = load i8*, i8** %418, align 8
  %420 = call i64 @je32_to_cpu(i8* %419)
  %421 = icmp ne i64 %416, %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %415
  %423 = load i32, i32* @EIO, align 4
  %424 = sub nsw i32 0, %423
  store i32 %424, i32* %12, align 4
  br label %425

425:                                              ; preds = %422, %415
  %426 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %427 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %426, i32 0, i32 0
  %428 = load i8*, i8** %427, align 8
  %429 = call i32 @kfree(i8* %428)
  %430 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %431 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %430, i32 0, i32 0
  store i8* null, i8** %431, align 8
  %432 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %433 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %432, i32 0, i32 4
  %434 = call i32 @mutex_unlock(i32* %433)
  %435 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %436 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %437 = call i32 @jffs2_do_clear_inode(%struct.jffs2_sb_info* %435, %struct.jffs2_inode_info* %436)
  %438 = load i32, i32* %12, align 4
  %439 = sub nsw i32 0, %438
  store i32 %439, i32* %4, align 4
  br label %558

440:                                              ; preds = %408
  %441 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %442 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %441, i32 0, i32 0
  %443 = load i8*, i8** %442, align 8
  %444 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %445 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %444, i32 0, i32 1
  %446 = load i8*, i8** %445, align 8
  %447 = call i64 @je32_to_cpu(i8* %446)
  %448 = getelementptr inbounds i8, i8* %443, i64 %447
  store i8 0, i8* %448, align 1
  %449 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %450 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %449, i32 0, i32 0
  %451 = load i8*, i8** %450, align 8
  %452 = call i32 (i8*, ...) @dbg_readinode(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %451)
  br label %453

453:                                              ; preds = %440, %353
  br label %454

454:                                              ; preds = %285, %285, %453
  %455 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %456 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %455, i32 0, i32 3
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** %456, align 8
  %458 = icmp ne %struct.TYPE_11__* %457, null
  br i1 %458, label %459, label %478

459:                                              ; preds = %454
  %460 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %461 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %460, i32 0, i32 1
  %462 = load %struct.TYPE_8__*, %struct.TYPE_8__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %466 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = call i32 @jemode_to_cpu(i32 %467)
  %469 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %464, i32 %468)
  %470 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %471 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %470, i32 0, i32 4
  %472 = call i32 @mutex_unlock(i32* %471)
  %473 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %474 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %475 = call i32 @jffs2_do_clear_inode(%struct.jffs2_sb_info* %473, %struct.jffs2_inode_info* %474)
  %476 = load i32, i32* @EIO, align 4
  %477 = sub nsw i32 0, %476
  store i32 %477, i32* %4, align 4
  br label %558

478:                                              ; preds = %454
  %479 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %480 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %479, i32 0, i32 2
  %481 = call %struct.TYPE_10__* @frag_first(i32* %480)
  %482 = icmp ne %struct.TYPE_10__* %481, null
  br i1 %482, label %502, label %483

483:                                              ; preds = %478
  %484 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %485 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %484, i32 0, i32 1
  %486 = load %struct.TYPE_8__*, %struct.TYPE_8__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %490 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = call i32 @jemode_to_cpu(i32 %491)
  %493 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i32 %488, i32 %492)
  %494 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %495 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %494, i32 0, i32 4
  %496 = call i32 @mutex_unlock(i32* %495)
  %497 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %498 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %499 = call i32 @jffs2_do_clear_inode(%struct.jffs2_sb_info* %497, %struct.jffs2_inode_info* %498)
  %500 = load i32, i32* @EIO, align 4
  %501 = sub nsw i32 0, %500
  store i32 %501, i32* %4, align 4
  br label %558

502:                                              ; preds = %478
  %503 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %504 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %503, i32 0, i32 2
  %505 = call %struct.TYPE_10__* @frag_first(i32* %504)
  %506 = call i32 @frag_next(%struct.TYPE_10__* %505)
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %527

508:                                              ; preds = %502
  %509 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %510 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %509, i32 0, i32 1
  %511 = load %struct.TYPE_8__*, %struct.TYPE_8__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %7, align 8
  %515 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = call i32 @jemode_to_cpu(i32 %516)
  %518 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0), i32 %513, i32 %517)
  %519 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %520 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %519, i32 0, i32 4
  %521 = call i32 @mutex_unlock(i32* %520)
  %522 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %523 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %524 = call i32 @jffs2_do_clear_inode(%struct.jffs2_sb_info* %522, %struct.jffs2_inode_info* %523)
  %525 = load i32, i32* @EIO, align 4
  %526 = sub nsw i32 0, %525
  store i32 %526, i32* %4, align 4
  br label %558

527:                                              ; preds = %502
  %528 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %529 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %528, i32 0, i32 2
  %530 = call %struct.TYPE_10__* @frag_first(i32* %529)
  %531 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %530, i32 0, i32 0
  %532 = load %struct.TYPE_11__*, %struct.TYPE_11__** %531, align 8
  %533 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %534 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %533, i32 0, i32 3
  store %struct.TYPE_11__* %532, %struct.TYPE_11__** %534, align 8
  %535 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %536 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %535, i32 0, i32 2
  %537 = call %struct.TYPE_10__* @frag_first(i32* %536)
  %538 = call i32 @jffs2_free_node_frag(%struct.TYPE_10__* %537)
  %539 = load i32, i32* @RB_ROOT, align 4
  %540 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %541 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %540, i32 0, i32 2
  store i32 %539, i32* %541, align 8
  br label %542

542:                                              ; preds = %285, %527, %340, %308
  %543 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %544 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %543, i32 0, i32 1
  %545 = load %struct.TYPE_8__*, %struct.TYPE_8__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %545, i32 0, i32 1
  %547 = load i64, i64* %546, align 8
  %548 = load i64, i64* @INO_STATE_READING, align 8
  %549 = icmp eq i64 %547, %548
  br i1 %549, label %550, label %557

550:                                              ; preds = %542
  %551 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %552 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %553 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %552, i32 0, i32 1
  %554 = load %struct.TYPE_8__*, %struct.TYPE_8__** %553, align 8
  %555 = load i32, i32* @INO_STATE_PRESENT, align 4
  %556 = call i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info* %551, %struct.TYPE_8__* %554, i32 %555)
  br label %557

557:                                              ; preds = %550, %542
  store i32 0, i32* %4, align 4
  br label %558

558:                                              ; preds = %557, %508, %483, %459, %425, %375, %267, %256, %225, %177, %98, %52
  %559 = load i32, i32* %4, align 4
  ret i32 %559
}

declare dso_local i32 @dbg_readinode(i8*, ...) #1

declare dso_local i32 @memset(%struct.jffs2_readinode_info*, i32, i32) #1

declare dso_local i32 @jffs2_get_inode_nodes(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %struct.jffs2_readinode_info*) #1

declare dso_local i32 @JFFS2_ERROR(i8*, i32, ...) #1

declare dso_local i32 @jffs2_set_inocache_state(%struct.jffs2_sb_info*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @jffs2_build_inode_fragtree(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %struct.jffs2_readinode_info*) #1

declare dso_local i32 @jffs2_free_tmp_dnode_info_list(i32*) #1

declare dso_local i32 @jffs2_free_full_dnode(%struct.TYPE_11__*) #1

declare dso_local i32 @jffs2_free_tmp_dnode_info(%struct.TYPE_9__*) #1

declare dso_local i32 @jffs2_kill_tn(%struct.jffs2_sb_info*, %struct.TYPE_9__*) #1

declare dso_local i32 @jffs2_dbg_fragtree_paranoia_check_nolock(%struct.jffs2_inode_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @JFFS2_WARNING(i8*, i32, ...) #1

declare dso_local i32 @JFFS2_NOTICE(i8*) #1

declare dso_local i32 @cpu_to_jemode(i32) #1

declare dso_local i8* @cpu_to_je32(i64) #1

declare dso_local i8* @cpu_to_je16(i32) #1

declare dso_local i32 @jffs2_flash_read(%struct.jffs2_sb_info*, i32, i64, i64*, i8*) #1

declare dso_local i32 @ref_offset(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @jffs2_do_clear_inode(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*) #1

declare dso_local i64 @crc32(i32, %struct.jffs2_raw_inode*, i32) #1

declare dso_local i64 @je32_to_cpu(i8*) #1

declare dso_local i32 @jemode_to_cpu(i32) #1

declare dso_local i64 @jffs2_truncate_fragtree(%struct.jffs2_sb_info*, i32*, i64) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.TYPE_10__* @frag_first(i32*) #1

declare dso_local i32 @frag_next(%struct.TYPE_10__*) #1

declare dso_local i32 @jffs2_free_node_frag(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

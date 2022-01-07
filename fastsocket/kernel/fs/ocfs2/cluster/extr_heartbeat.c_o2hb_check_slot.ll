; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_check_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_check_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, i32, %struct.o2hb_disk_heartbeat_block* }
%struct.o2hb_disk_heartbeat_block = type { i32, i32, i32, i32 }
%struct.o2hb_disk_slot = type { i64, i32, i64, i64, i32, i32, i32 }
%struct.o2hb_node_event = type { i32 }
%struct.o2nm_node = type { i32 }

@o2hb_dead_threshold = common dso_local global i32 0, align 4
@O2HB_REGION_TIMEOUT_MS = common dso_local global i32 0, align 4
@o2hb_live_lock = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Node %d has written a bad crc to %s\0A\00", align 1
@ML_HEARTBEAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Node %d changed generation (0x%llx to 0x%llx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Slot %d gen 0x%llx cksum 0x%x seq %llu last %llu changed %u equal %u\0A\00", align 1
@O2HB_LIVE_THRESHOLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Node %d (id 0x%llx) joined my region\0A\00", align 1
@o2hb_live_slots = common dso_local global i32* null, align 8
@o2hb_live_node_bitmap = common dso_local global i32 0, align 4
@O2HB_NODE_UP_CB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [150 x i8] c"Node %d on device %s has a dead count of %u ms, but our count is %u ms.\0APlease double check your configuration values for 'O2CB_HEARTBEAT_THRESHOLD'\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Node %d left my region\0A\00", align 1
@O2HB_NODE_DOWN_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2hb_region*, %struct.o2hb_disk_slot*)* @o2hb_check_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_check_slot(%struct.o2hb_region* %0, %struct.o2hb_disk_slot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.o2hb_region*, align 8
  %5 = alloca %struct.o2hb_disk_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.o2hb_node_event, align 4
  %9 = alloca %struct.o2nm_node*, align 8
  %10 = alloca %struct.o2hb_disk_heartbeat_block*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.o2hb_region* %0, %struct.o2hb_region** %4, align 8
  store %struct.o2hb_disk_slot* %1, %struct.o2hb_disk_slot** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = getelementptr inbounds %struct.o2hb_node_event, %struct.o2hb_node_event* %8, i32 0, i32 0
  %15 = getelementptr inbounds %struct.o2hb_node_event, %struct.o2hb_node_event* %8, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @LIST_HEAD_INIT(i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %19 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %18, i32 0, i32 2
  %20 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %19, align 8
  store %struct.o2hb_disk_heartbeat_block* %20, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %21 = load i32, i32* @o2hb_dead_threshold, align 4
  %22 = load i32, i32* @O2HB_REGION_TIMEOUT_MS, align 4
  %23 = mul i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %25 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %26 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %29 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(%struct.o2hb_disk_heartbeat_block* %24, i32 %27, i32 %30)
  %32 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %33 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call %struct.o2nm_node* @o2nm_get_node_by_num(i64 %34)
  store %struct.o2nm_node* %35, %struct.o2nm_node** %9, align 8
  %36 = load %struct.o2nm_node*, %struct.o2nm_node** %9, align 8
  %37 = icmp ne %struct.o2nm_node* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %285

39:                                               ; preds = %2
  %40 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %41 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %42 = call i32 @o2hb_verify_crc(%struct.o2hb_region* %40, %struct.o2hb_disk_heartbeat_block* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %39
  %45 = call i32 @spin_lock(i32* @o2hb_live_lock)
  %46 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %47 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %46, i32 0, i32 5
  %48 = call i64 @list_empty(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %279

51:                                               ; preds = %44
  %52 = load i32, i32* @ML_ERROR, align 4
  %53 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %54 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %57 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, i64, ...) @mlog(i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %55, i32 %58)
  %60 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %61 = call i32 @o2hb_dump_slot(%struct.o2hb_disk_heartbeat_block* %60)
  %62 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %63 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = add i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %146

66:                                               ; preds = %39
  %67 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %68 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le64_to_cpu(i32 %69)
  store i64 %70, i64* %11, align 8
  %71 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %72 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %78 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  br label %86

81:                                               ; preds = %66
  %82 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %83 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %89 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %91 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %94 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @le64_to_cpu(i32 %95)
  %97 = icmp ne i64 %92, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %86
  store i32 1, i32* %7, align 4
  %99 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %100 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %99, i32 0, i32 1
  store i32 0, i32* %100, align 8
  %101 = load i32, i32* @ML_HEARTBEAT, align 4
  %102 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %103 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %106 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %109 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @le64_to_cpu(i32 %110)
  %112 = call i32 (i32, i8*, i64, ...) @mlog(i32 %101, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %104, i64 %107, i64 %111)
  br label %113

113:                                              ; preds = %98, %86
  %114 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %115 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @le64_to_cpu(i32 %116)
  %118 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %119 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  %120 = load i32, i32* @ML_HEARTBEAT, align 4
  %121 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %122 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %125 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %128 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le32_to_cpu(i32 %129)
  %131 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %132 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @le64_to_cpu(i32 %133)
  %135 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %136 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %139 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %142 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, i64, ...) @mlog(i32 %120, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %123, i64 %126, i32 %130, i64 %134, i64 %137, i32 %140, i32 %143)
  %145 = call i32 @spin_lock(i32* @o2hb_live_lock)
  br label %146

146:                                              ; preds = %113, %51
  %147 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %148 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %147, i32 0, i32 5
  %149 = call i64 @list_empty(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %218

151:                                              ; preds = %146
  %152 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %153 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @O2HB_LIVE_THRESHOLD, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %218

157:                                              ; preds = %151
  %158 = load i32, i32* @ML_HEARTBEAT, align 4
  %159 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %160 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %163 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = call i32 (i32, i8*, i64, ...) @mlog(i32 %158, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %161, i64 %164)
  %166 = load i32*, i32** @o2hb_live_slots, align 8
  %167 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %168 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = call i64 @list_empty(i32* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %157
  %174 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %175 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* @o2hb_live_node_bitmap, align 4
  %178 = call i32 @set_bit(i64 %176, i32 %177)
  %179 = load i32, i32* @O2HB_NODE_UP_CB, align 4
  %180 = load %struct.o2nm_node*, %struct.o2nm_node** %9, align 8
  %181 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %182 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @o2hb_queue_node_event(%struct.o2hb_node_event* %8, i32 %179, %struct.o2nm_node* %180, i64 %183)
  store i32 1, i32* %6, align 4
  br label %185

185:                                              ; preds = %173, %157
  %186 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %187 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %186, i32 0, i32 5
  %188 = load i32*, i32** @o2hb_live_slots, align 8
  %189 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %190 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = call i32 @list_add_tail(i32* %187, i32* %192)
  %194 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %195 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %194, i32 0, i32 1
  store i32 0, i32* %195, align 8
  %196 = load %struct.o2hb_disk_heartbeat_block*, %struct.o2hb_disk_heartbeat_block** %10, align 8
  %197 = getelementptr inbounds %struct.o2hb_disk_heartbeat_block, %struct.o2hb_disk_heartbeat_block* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @le32_to_cpu(i32 %198)
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %217

202:                                              ; preds = %185
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %12, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %202
  %207 = load i32, i32* @ML_ERROR, align 4
  %208 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %209 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %212 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* %12, align 4
  %216 = call i32 (i32, i8*, i64, ...) @mlog(i32 %207, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.4, i64 0, i64 0), i64 %210, i32 %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %206, %202, %185
  br label %279

218:                                              ; preds = %151, %146
  %219 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %220 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %219, i32 0, i32 5
  %221 = call i64 @list_empty(i32* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %279

224:                                              ; preds = %218
  %225 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %226 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @o2hb_dead_threshold, align 4
  %229 = icmp uge i32 %227, %228
  br i1 %229, label %233, label %230

230:                                              ; preds = %224
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %268

233:                                              ; preds = %230, %224
  %234 = load i32, i32* @ML_HEARTBEAT, align 4
  %235 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %236 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = call i32 (i32, i8*, i64, ...) @mlog(i32 %234, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %237)
  %239 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %240 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %239, i32 0, i32 5
  %241 = call i32 @list_del_init(i32* %240)
  %242 = load i32*, i32** @o2hb_live_slots, align 8
  %243 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %244 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = call i64 @list_empty(i32* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %233
  %250 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %251 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i32, i32* @o2hb_live_node_bitmap, align 4
  %254 = call i32 @clear_bit(i64 %252, i32 %253)
  %255 = load i32, i32* @O2HB_NODE_DOWN_CB, align 4
  %256 = load %struct.o2nm_node*, %struct.o2nm_node** %9, align 8
  %257 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %258 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @o2hb_queue_node_event(%struct.o2hb_node_event* %8, i32 %255, %struct.o2nm_node* %256, i64 %259)
  store i32 1, i32* %6, align 4
  br label %261

261:                                              ; preds = %249, %233
  %262 = load i32, i32* %7, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %261
  %265 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %266 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %265, i32 0, i32 4
  store i32 0, i32* %266, align 8
  br label %267

267:                                              ; preds = %264, %261
  br label %279

268:                                              ; preds = %230
  %269 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %270 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %275 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %274, i32 0, i32 4
  store i32 0, i32* %275, align 8
  %276 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %5, align 8
  %277 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %276, i32 0, i32 1
  store i32 0, i32* %277, align 8
  br label %278

278:                                              ; preds = %273, %268
  br label %279

279:                                              ; preds = %278, %267, %223, %217, %50
  %280 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  %281 = call i32 @o2hb_run_event_list(%struct.o2hb_node_event* %8)
  %282 = load %struct.o2nm_node*, %struct.o2nm_node** %9, align 8
  %283 = call i32 @o2nm_node_put(%struct.o2nm_node* %282)
  %284 = load i32, i32* %6, align 4
  store i32 %284, i32* %3, align 4
  br label %285

285:                                              ; preds = %279, %38
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i32 @LIST_HEAD_INIT(i32) #1

declare dso_local i32 @memcpy(%struct.o2hb_disk_heartbeat_block*, i32, i32) #1

declare dso_local %struct.o2nm_node* @o2nm_get_node_by_num(i64) #1

declare dso_local i32 @o2hb_verify_crc(%struct.o2hb_region*, %struct.o2hb_disk_heartbeat_block*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i32 @o2hb_dump_slot(%struct.o2hb_disk_heartbeat_block*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @o2hb_queue_node_event(%struct.o2hb_node_event*, i32, %struct.o2nm_node*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @o2hb_run_event_list(%struct.o2hb_node_event*) #1

declare dso_local i32 @o2nm_node_put(%struct.o2nm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_do_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_do_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.ebt_table = type { i32, %struct.ebt_table_info* }
%struct.ebt_table_info = type { i8*, %struct.ebt_entries**, %struct.ebt_chainstack**, i32, i32 }
%struct.ebt_entries = type { i32, i32, i32, i64, i64 }
%struct.ebt_chainstack = type { i32, %struct.ebt_entry*, %struct.ebt_entries* }
%struct.ebt_entry = type { i32 }
%struct.ebt_counter = type { i32, i32 }
%struct.ebt_entry_target = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sk_buff*, %struct.xt_target_param*)* }
%struct.xt_target_param = type { i32, i32, %struct.TYPE_3__*, %struct.net_device*, %struct.net_device*, i32 }
%struct.xt_match_param = type { i32*, i32, %struct.net_device*, %struct.net_device*, i32 }
%struct.ebt_standard_target = type { i32 }

@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@ebt_do_match = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@ebt_do_watcher = common dso_local global i32 0, align 4
@EBT_ACCEPT = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@EBT_DROP = common dso_local global i32 0, align 4
@EBT_RETURN = common dso_local global i32 0, align 4
@EBT_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebt_do_table(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, %struct.ebt_table* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.ebt_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ebt_entry*, align 8
  %15 = alloca %struct.ebt_counter*, align 8
  %16 = alloca %struct.ebt_counter*, align 8
  %17 = alloca %struct.ebt_entry_target*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ebt_chainstack*, align 8
  %21 = alloca %struct.ebt_entries*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.ebt_table_info*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.xt_match_param, align 8
  %26 = alloca %struct.xt_target_param, align 8
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store %struct.ebt_table* %4, %struct.ebt_table** %11, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %24, align 4
  %27 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %28 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %26, i32 0, i32 5
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %25, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %9, align 8
  %31 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %26, i32 0, i32 4
  store %struct.net_device* %30, %struct.net_device** %31, align 8
  %32 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %25, i32 0, i32 3
  store %struct.net_device* %30, %struct.net_device** %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %10, align 8
  %34 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %26, i32 0, i32 3
  store %struct.net_device* %33, %struct.net_device** %34, align 8
  %35 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %25, i32 0, i32 2
  store %struct.net_device* %33, %struct.net_device** %35, align 8
  %36 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %25, i32 0, i32 0
  store i32* %24, i32** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %26, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %25, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %41 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %40, i32 0, i32 0
  %42 = call i32 @read_lock_bh(i32* %41)
  %43 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %44 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %43, i32 0, i32 1
  %45 = load %struct.ebt_table_info*, %struct.ebt_table_info** %44, align 8
  store %struct.ebt_table_info* %45, %struct.ebt_table_info** %23, align 8
  %46 = load %struct.ebt_table_info*, %struct.ebt_table_info** %23, align 8
  %47 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ebt_table_info*, %struct.ebt_table_info** %23, align 8
  %50 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 (...) @smp_processor_id()
  %53 = call %struct.ebt_counter* @COUNTER_BASE(i32 %48, i32 %51, i64 %52)
  store %struct.ebt_counter* %53, %struct.ebt_counter** %16, align 8
  %54 = load %struct.ebt_table_info*, %struct.ebt_table_info** %23, align 8
  %55 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %54, i32 0, i32 2
  %56 = load %struct.ebt_chainstack**, %struct.ebt_chainstack*** %55, align 8
  %57 = icmp ne %struct.ebt_chainstack** %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %5
  %59 = load %struct.ebt_table_info*, %struct.ebt_table_info** %23, align 8
  %60 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %59, i32 0, i32 2
  %61 = load %struct.ebt_chainstack**, %struct.ebt_chainstack*** %60, align 8
  %62 = call i64 (...) @smp_processor_id()
  %63 = getelementptr inbounds %struct.ebt_chainstack*, %struct.ebt_chainstack** %61, i64 %62
  %64 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %63, align 8
  store %struct.ebt_chainstack* %64, %struct.ebt_chainstack** %20, align 8
  br label %66

65:                                               ; preds = %5
  store %struct.ebt_chainstack* null, %struct.ebt_chainstack** %20, align 8
  br label %66

66:                                               ; preds = %65, %58
  %67 = load %struct.ebt_table_info*, %struct.ebt_table_info** %23, align 8
  %68 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %67, i32 0, i32 1
  %69 = load %struct.ebt_entries**, %struct.ebt_entries*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ebt_entries*, %struct.ebt_entries** %69, i64 %71
  %73 = load %struct.ebt_entries*, %struct.ebt_entries** %72, align 8
  store %struct.ebt_entries* %73, %struct.ebt_entries** %21, align 8
  %74 = load %struct.ebt_table_info*, %struct.ebt_table_info** %23, align 8
  %75 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %74, i32 0, i32 1
  %76 = load %struct.ebt_entries**, %struct.ebt_entries*** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ebt_entries*, %struct.ebt_entries** %76, i64 %78
  %80 = load %struct.ebt_entries*, %struct.ebt_entries** %79, align 8
  %81 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %13, align 4
  %83 = load %struct.ebt_table_info*, %struct.ebt_table_info** %23, align 8
  %84 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %83, i32 0, i32 1
  %85 = load %struct.ebt_entries**, %struct.ebt_entries*** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ebt_entries*, %struct.ebt_entries** %85, i64 %87
  %89 = load %struct.ebt_entries*, %struct.ebt_entries** %88, align 8
  %90 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.ebt_entry*
  store %struct.ebt_entry* %92, %struct.ebt_entry** %14, align 8
  %93 = load %struct.ebt_counter*, %struct.ebt_counter** %16, align 8
  %94 = load %struct.ebt_table_info*, %struct.ebt_table_info** %23, align 8
  %95 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %94, i32 0, i32 1
  %96 = load %struct.ebt_entries**, %struct.ebt_entries*** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ebt_entries*, %struct.ebt_entries** %96, i64 %98
  %100 = load %struct.ebt_entries*, %struct.ebt_entries** %99, align 8
  %101 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ebt_counter, %struct.ebt_counter* %93, i64 %103
  store %struct.ebt_counter* %104, %struct.ebt_counter** %15, align 8
  %105 = load %struct.ebt_table_info*, %struct.ebt_table_info** %23, align 8
  %106 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %22, align 8
  store i32 0, i32* %12, align 4
  br label %108

108:                                              ; preds = %298, %256, %221, %66
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %304

112:                                              ; preds = %108
  %113 = load %struct.ebt_entry*, %struct.ebt_entry** %14, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = call i32 @eth_hdr(%struct.sk_buff* %114)
  %116 = load %struct.net_device*, %struct.net_device** %9, align 8
  %117 = load %struct.net_device*, %struct.net_device** %10, align 8
  %118 = call i64 @ebt_basic_match(%struct.ebt_entry* %113, i32 %115, %struct.net_device* %116, %struct.net_device* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %298

121:                                              ; preds = %112
  %122 = load %struct.ebt_entry*, %struct.ebt_entry** %14, align 8
  %123 = load i32, i32* @ebt_do_match, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = call i64 @EBT_MATCH_ITERATE(%struct.ebt_entry* %122, i32 %123, %struct.sk_buff* %124, %struct.xt_match_param* %25)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %298

128:                                              ; preds = %121
  %129 = load i32, i32* %24, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %133 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %132, i32 0, i32 0
  %134 = call i32 @read_unlock_bh(i32* %133)
  %135 = load i32, i32* @NF_DROP, align 4
  store i32 %135, i32* %6, align 4
  br label %327

136:                                              ; preds = %128
  %137 = load %struct.ebt_counter*, %struct.ebt_counter** %15, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.ebt_counter, %struct.ebt_counter* %137, i64 %139
  %141 = getelementptr inbounds %struct.ebt_counter, %struct.ebt_counter* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.ebt_counter*, %struct.ebt_counter** %15, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ebt_counter, %struct.ebt_counter* %147, i64 %149
  %151 = getelementptr inbounds %struct.ebt_counter, %struct.ebt_counter* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %146
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 4
  %156 = load %struct.ebt_entry*, %struct.ebt_entry** %14, align 8
  %157 = load i32, i32* @ebt_do_watcher, align 4
  %158 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %159 = call i32 @EBT_WATCHER_ITERATE(%struct.ebt_entry* %156, i32 %157, %struct.sk_buff* %158, %struct.xt_target_param* %26)
  %160 = load %struct.ebt_entry*, %struct.ebt_entry** %14, align 8
  %161 = bitcast %struct.ebt_entry* %160 to i8*
  %162 = load %struct.ebt_entry*, %struct.ebt_entry** %14, align 8
  %163 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %161, i64 %165
  %167 = bitcast i8* %166 to %struct.ebt_entry_target*
  store %struct.ebt_entry_target* %167, %struct.ebt_entry_target** %17, align 8
  %168 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %17, align 8
  %169 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32 (%struct.sk_buff*, %struct.xt_target_param*)*, i32 (%struct.sk_buff*, %struct.xt_target_param*)** %172, align 8
  %174 = icmp ne i32 (%struct.sk_buff*, %struct.xt_target_param*)* %173, null
  br i1 %174, label %180, label %175

175:                                              ; preds = %136
  %176 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %17, align 8
  %177 = bitcast %struct.ebt_entry_target* %176 to %struct.ebt_standard_target*
  %178 = getelementptr inbounds %struct.ebt_standard_target, %struct.ebt_standard_target* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %18, align 4
  br label %198

180:                                              ; preds = %136
  %181 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %17, align 8
  %182 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %26, i32 0, i32 2
  store %struct.TYPE_3__* %184, %struct.TYPE_3__** %185, align 8
  %186 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %17, align 8
  %187 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %26, i32 0, i32 1
  store i32 %188, i32* %189, align 4
  %190 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %17, align 8
  %191 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32 (%struct.sk_buff*, %struct.xt_target_param*)*, i32 (%struct.sk_buff*, %struct.xt_target_param*)** %194, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %197 = call i32 %195(%struct.sk_buff* %196, %struct.xt_target_param* %26)
  store i32 %197, i32* %18, align 4
  br label %198

198:                                              ; preds = %180, %175
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* @EBT_ACCEPT, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %198
  %203 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %204 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %203, i32 0, i32 0
  %205 = call i32 @read_unlock_bh(i32* %204)
  %206 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %206, i32* %6, align 4
  br label %327

207:                                              ; preds = %198
  %208 = load i32, i32* %18, align 4
  %209 = load i32, i32* @EBT_DROP, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %213 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %212, i32 0, i32 0
  %214 = call i32 @read_unlock_bh(i32* %213)
  %215 = load i32, i32* @NF_DROP, align 4
  store i32 %215, i32* %6, align 4
  br label %327

216:                                              ; preds = %207
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* @EBT_RETURN, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %251

220:                                              ; preds = %216
  br label %221

221:                                              ; preds = %310, %220
  %222 = load i32, i32* %19, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %19, align 4
  %224 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %20, align 8
  %225 = load i32, i32* %19, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %224, i64 %226
  %228 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  store i32 %229, i32* %12, align 4
  %230 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %20, align 8
  %231 = load i32, i32* %19, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %230, i64 %232
  %234 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %233, i32 0, i32 2
  %235 = load %struct.ebt_entries*, %struct.ebt_entries** %234, align 8
  store %struct.ebt_entries* %235, %struct.ebt_entries** %21, align 8
  %236 = load %struct.ebt_entries*, %struct.ebt_entries** %21, align 8
  %237 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  store i32 %238, i32* %13, align 4
  %239 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %20, align 8
  %240 = load i32, i32* %19, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %239, i64 %241
  %243 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %242, i32 0, i32 1
  %244 = load %struct.ebt_entry*, %struct.ebt_entry** %243, align 8
  store %struct.ebt_entry* %244, %struct.ebt_entry** %14, align 8
  %245 = load %struct.ebt_counter*, %struct.ebt_counter** %16, align 8
  %246 = load %struct.ebt_entries*, %struct.ebt_entries** %21, align 8
  %247 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.ebt_counter, %struct.ebt_counter* %245, i64 %249
  store %struct.ebt_counter* %250, %struct.ebt_counter** %15, align 8
  br label %108

251:                                              ; preds = %216
  %252 = load i32, i32* %18, align 4
  %253 = load i32, i32* @EBT_CONTINUE, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  br label %298

256:                                              ; preds = %251
  %257 = load i32, i32* %12, align 4
  %258 = add nsw i32 %257, 1
  %259 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %20, align 8
  %260 = load i32, i32* %19, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %259, i64 %261
  %263 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %262, i32 0, i32 0
  store i32 %258, i32* %263, align 8
  %264 = load %struct.ebt_entries*, %struct.ebt_entries** %21, align 8
  %265 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %20, align 8
  %266 = load i32, i32* %19, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %265, i64 %267
  %269 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %268, i32 0, i32 2
  store %struct.ebt_entries* %264, %struct.ebt_entries** %269, align 8
  %270 = load %struct.ebt_entry*, %struct.ebt_entry** %14, align 8
  %271 = call i8* @ebt_next_entry(%struct.ebt_entry* %270)
  %272 = bitcast i8* %271 to %struct.ebt_entry*
  %273 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %20, align 8
  %274 = load i32, i32* %19, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %273, i64 %275
  %277 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %276, i32 0, i32 1
  store %struct.ebt_entry* %272, %struct.ebt_entry** %277, align 8
  store i32 0, i32* %12, align 4
  %278 = load i8*, i8** %22, align 8
  %279 = load i32, i32* %18, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  %282 = bitcast i8* %281 to %struct.ebt_entries*
  store %struct.ebt_entries* %282, %struct.ebt_entries** %21, align 8
  %283 = load %struct.ebt_entries*, %struct.ebt_entries** %21, align 8
  %284 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  store i32 %285, i32* %13, align 4
  %286 = load %struct.ebt_entries*, %struct.ebt_entries** %21, align 8
  %287 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = inttoptr i64 %288 to %struct.ebt_entry*
  store %struct.ebt_entry* %289, %struct.ebt_entry** %14, align 8
  %290 = load %struct.ebt_counter*, %struct.ebt_counter** %16, align 8
  %291 = load %struct.ebt_entries*, %struct.ebt_entries** %21, align 8
  %292 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.ebt_counter, %struct.ebt_counter* %290, i64 %294
  store %struct.ebt_counter* %295, %struct.ebt_counter** %15, align 8
  %296 = load i32, i32* %19, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %19, align 4
  br label %108

298:                                              ; preds = %255, %127, %120
  %299 = load %struct.ebt_entry*, %struct.ebt_entry** %14, align 8
  %300 = call i8* @ebt_next_entry(%struct.ebt_entry* %299)
  %301 = bitcast i8* %300 to %struct.ebt_entry*
  store %struct.ebt_entry* %301, %struct.ebt_entry** %14, align 8
  %302 = load i32, i32* %12, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %12, align 4
  br label %108

304:                                              ; preds = %108
  %305 = load %struct.ebt_entries*, %struct.ebt_entries** %21, align 8
  %306 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @EBT_RETURN, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %304
  br label %221

311:                                              ; preds = %304
  %312 = load %struct.ebt_entries*, %struct.ebt_entries** %21, align 8
  %313 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @EBT_ACCEPT, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %322

317:                                              ; preds = %311
  %318 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %319 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %318, i32 0, i32 0
  %320 = call i32 @read_unlock_bh(i32* %319)
  %321 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %321, i32* %6, align 4
  br label %327

322:                                              ; preds = %311
  %323 = load %struct.ebt_table*, %struct.ebt_table** %11, align 8
  %324 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %323, i32 0, i32 0
  %325 = call i32 @read_unlock_bh(i32* %324)
  %326 = load i32, i32* @NF_DROP, align 4
  store i32 %326, i32* %6, align 4
  br label %327

327:                                              ; preds = %322, %317, %211, %202, %131
  %328 = load i32, i32* %6, align 4
  ret i32 %328
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.ebt_counter* @COUNTER_BASE(i32, i32, i64) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @ebt_basic_match(%struct.ebt_entry*, i32, %struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @EBT_MATCH_ITERATE(%struct.ebt_entry*, i32, %struct.sk_buff*, %struct.xt_match_param*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @EBT_WATCHER_ITERATE(%struct.ebt_entry*, i32, %struct.sk_buff*, %struct.xt_target_param*) #1

declare dso_local i8* @ebt_next_entry(%struct.ebt_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_check_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_check_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_target = type { i32 }
%struct.ebt_entry = type { i32, i32, i32, i64, i32 }
%struct.ebt_table_info = type { i64* }
%struct.ebt_cl_stack = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ebt_entry_target = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.xt_target*, i32 }
%struct.xt_mtchk_param = type { i8*, i32, i32, %struct.ebt_entry* }
%struct.xt_tgchk_param = type { i8*, i32, i32, %struct.xt_target*, i32, %struct.ebt_entry* }
%struct.ebt_standard_target = type { i32 }

@EBT_F_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown flag for bitmask\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBT_INV_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown flag for inv bitmask\0A\00", align 1
@EBT_NOPROTO = common dso_local global i32 0, align 4
@EBT_802_3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"NOPROTO & 802_3 not allowed\0A\00", align 1
@NF_BR_NUMHOOKS = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@ebt_check_match = common dso_local global i32 0, align 4
@ebt_check_watcher = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ebt_%s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ebt_standard_target = common dso_local global %struct.xt_target zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Standard target size too big\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@NUM_STANDARD_TARGETS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Invalid standard target\0A\00", align 1
@EBT_IPROTO = common dso_local global i32 0, align 4
@ebt_cleanup_watcher = common dso_local global i32 0, align 4
@ebt_cleanup_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry*, %struct.ebt_table_info*, i8*, i32*, %struct.ebt_cl_stack*, i32)* @ebt_check_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_check_entry(%struct.ebt_entry* %0, %struct.ebt_table_info* %1, i8* %2, i32* %3, %struct.ebt_cl_stack* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ebt_entry*, align 8
  %9 = alloca %struct.ebt_table_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ebt_cl_stack*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ebt_entry_target*, align 8
  %15 = alloca %struct.xt_target*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.xt_mtchk_param, align 8
  %23 = alloca %struct.xt_tgchk_param, align 8
  store %struct.ebt_entry* %0, %struct.ebt_entry** %8, align 8
  store %struct.ebt_table_info* %1, %struct.ebt_table_info** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.ebt_cl_stack* %4, %struct.ebt_cl_stack** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %24 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %25 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %309

29:                                               ; preds = %6
  %30 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %31 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EBT_F_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = call i32 @BUGPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %309

41:                                               ; preds = %29
  %42 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %43 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EBT_INV_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = call i32 @BUGPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %309

53:                                               ; preds = %41
  %54 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %55 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @EBT_NOPROTO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %62 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @EBT_802_3, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = call i32 @BUGPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %309

71:                                               ; preds = %60, %53
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %102, %71
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %72
  %77 = load %struct.ebt_table_info*, %struct.ebt_table_info** %9, align 8
  %78 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %16, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %76
  br label %102

86:                                               ; preds = %76
  %87 = load %struct.ebt_table_info*, %struct.ebt_table_info** %9, align 8
  %88 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %16, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %96 = bitcast %struct.ebt_entry* %95 to i8*
  %97 = icmp ult i8* %94, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %86
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %18, align 4
  br label %101

100:                                              ; preds = %86
  br label %105

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101, %85
  %103 = load i32, i32* %16, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %72

105:                                              ; preds = %100, %72
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* %18, align 4
  %111 = shl i32 1, %110
  %112 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %113 = shl i32 1, %112
  %114 = or i32 %111, %113
  store i32 %114, i32* %19, align 4
  br label %155

115:                                              ; preds = %105
  store i32 0, i32* %16, align 4
  br label %116

116:                                              ; preds = %134, %115
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %116
  %121 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %12, align 8
  %122 = load i32, i32* %16, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %121, i64 %123
  %125 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %130 = bitcast %struct.ebt_entry* %129 to i8*
  %131 = icmp ugt i8* %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %137

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %16, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %16, align 4
  br label %116

137:                                              ; preds = %132, %116
  %138 = load i32, i32* %16, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load i32, i32* %18, align 4
  %142 = shl i32 1, %141
  %143 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %144 = shl i32 1, %143
  %145 = or i32 %142, %144
  store i32 %145, i32* %19, align 4
  br label %154

146:                                              ; preds = %137
  %147 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %12, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sub i32 %148, 1
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %147, i64 %150
  %152 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %19, align 4
  br label %154

154:                                              ; preds = %146, %140
  br label %155

155:                                              ; preds = %154, %109
  store i32 0, i32* %16, align 4
  %156 = load i8*, i8** %10, align 8
  %157 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %23, i32 0, i32 0
  store i8* %156, i8** %157, align 8
  %158 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %22, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  %159 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %160 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %23, i32 0, i32 5
  store %struct.ebt_entry* %159, %struct.ebt_entry** %160, align 8
  %161 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %22, i32 0, i32 3
  store %struct.ebt_entry* %159, %struct.ebt_entry** %161, align 8
  %162 = load i32, i32* %19, align 4
  %163 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %23, i32 0, i32 1
  store i32 %162, i32* %163, align 8
  %164 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %22, i32 0, i32 1
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %166 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %23, i32 0, i32 4
  store i32 %165, i32* %166, align 8
  %167 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %22, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  %168 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %169 = load i32, i32* @ebt_check_match, align 4
  %170 = call i32 (%struct.ebt_entry*, i32, ...) @EBT_MATCH_ITERATE(%struct.ebt_entry* %168, i32 %169, %struct.xt_mtchk_param* %22, i32* %16)
  store i32 %170, i32* %21, align 4
  %171 = load i32, i32* %21, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %155
  br label %304

174:                                              ; preds = %155
  store i32 0, i32* %17, align 4
  %175 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %176 = load i32, i32* @ebt_check_watcher, align 4
  %177 = call i32 (%struct.ebt_entry*, i32, ...) @EBT_WATCHER_ITERATE(%struct.ebt_entry* %175, i32 %176, %struct.xt_tgchk_param* %23, i32* %17)
  store i32 %177, i32* %21, align 4
  %178 = load i32, i32* %21, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %300

181:                                              ; preds = %174
  %182 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %183 = bitcast %struct.ebt_entry* %182 to i8*
  %184 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %185 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %183, i64 %187
  %189 = bitcast i8* %188 to %struct.ebt_entry_target*
  store %struct.ebt_entry_target* %189, %struct.ebt_entry_target** %14, align 8
  %190 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %191 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %194 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = sub i64 %192, %196
  store i64 %197, i64* %20, align 8
  %198 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %199 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %200 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @xt_find_target(i32 %198, i32 %202, i32 0)
  %204 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %205 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call %struct.xt_target* @try_then_request_module(i32 %203, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  store %struct.xt_target* %208, %struct.xt_target** %15, align 8
  %209 = load %struct.xt_target*, %struct.xt_target** %15, align 8
  %210 = call i64 @IS_ERR(%struct.xt_target* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %181
  %213 = load %struct.xt_target*, %struct.xt_target** %15, align 8
  %214 = call i32 @PTR_ERR(%struct.xt_target* %213)
  store i32 %214, i32* %21, align 4
  br label %300

215:                                              ; preds = %181
  %216 = load %struct.xt_target*, %struct.xt_target** %15, align 8
  %217 = icmp eq %struct.xt_target* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32, i32* @ENOENT, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %21, align 4
  br label %300

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %221
  %223 = load %struct.xt_target*, %struct.xt_target** %15, align 8
  %224 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %225 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  store %struct.xt_target* %223, %struct.xt_target** %226, align 8
  %227 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %228 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load %struct.xt_target*, %struct.xt_target** %229, align 8
  %231 = icmp eq %struct.xt_target* %230, @ebt_standard_target
  br i1 %231, label %232, label %252

232:                                              ; preds = %222
  %233 = load i64, i64* %20, align 8
  %234 = icmp ult i64 %233, 4
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = call i32 @BUGPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %237 = load i32, i32* @EFAULT, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %21, align 4
  br label %300

239:                                              ; preds = %232
  %240 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %241 = bitcast %struct.ebt_entry_target* %240 to %struct.ebt_standard_target*
  %242 = getelementptr inbounds %struct.ebt_standard_target, %struct.ebt_standard_target* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @NUM_STANDARD_TARGETS, align 4
  %245 = sub nsw i32 0, %244
  %246 = icmp slt i32 %243, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %239
  %248 = call i32 @BUGPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %249 = load i32, i32* @EFAULT, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %21, align 4
  br label %300

251:                                              ; preds = %239
  br label %270

252:                                              ; preds = %222
  %253 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %254 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %20, align 8
  %257 = sub i64 %256, 32
  %258 = icmp ugt i64 %255, %257
  br i1 %258, label %259, label %269

259:                                              ; preds = %252
  %260 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %261 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  %263 = load %struct.xt_target*, %struct.xt_target** %262, align 8
  %264 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @module_put(i32 %265)
  %267 = load i32, i32* @EFAULT, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %21, align 4
  br label %300

269:                                              ; preds = %252
  br label %270

270:                                              ; preds = %269, %251
  %271 = load %struct.xt_target*, %struct.xt_target** %15, align 8
  %272 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %23, i32 0, i32 3
  store %struct.xt_target* %271, %struct.xt_target** %272, align 8
  %273 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %274 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %23, i32 0, i32 2
  store i32 %275, i32* %276, align 4
  %277 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %278 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %281 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %284 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @EBT_IPROTO, align 4
  %287 = and i32 %285, %286
  %288 = call i32 @xt_check_target(%struct.xt_tgchk_param* %23, i64 %279, i32 %282, i32 %287)
  store i32 %288, i32* %21, align 4
  %289 = load i32, i32* %21, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %270
  %292 = load %struct.xt_target*, %struct.xt_target** %15, align 8
  %293 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @module_put(i32 %294)
  br label %300

296:                                              ; preds = %270
  %297 = load i32*, i32** %11, align 8
  %298 = load i32, i32* %297, align 4
  %299 = add i32 %298, 1
  store i32 %299, i32* %297, align 4
  store i32 0, i32* %7, align 4
  br label %309

300:                                              ; preds = %291, %259, %247, %235, %218, %212, %180
  %301 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %302 = load i32, i32* @ebt_cleanup_watcher, align 4
  %303 = call i32 (%struct.ebt_entry*, i32, ...) @EBT_WATCHER_ITERATE(%struct.ebt_entry* %301, i32 %302, i32* %17)
  br label %304

304:                                              ; preds = %300, %173
  %305 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %306 = load i32, i32* @ebt_cleanup_match, align 4
  %307 = call i32 (%struct.ebt_entry*, i32, ...) @EBT_MATCH_ITERATE(%struct.ebt_entry* %305, i32 %306, i32* %16)
  %308 = load i32, i32* %21, align 4
  store i32 %308, i32* %7, align 4
  br label %309

309:                                              ; preds = %304, %296, %67, %49, %37, %28
  %310 = load i32, i32* %7, align 4
  ret i32 %310
}

declare dso_local i32 @BUGPRINT(i8*) #1

declare dso_local i32 @EBT_MATCH_ITERATE(%struct.ebt_entry*, i32, ...) #1

declare dso_local i32 @EBT_WATCHER_ITERATE(%struct.ebt_entry*, i32, ...) #1

declare dso_local %struct.xt_target* @try_then_request_module(i32, i8*, i32) #1

declare dso_local i32 @xt_find_target(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.xt_target*) #1

declare dso_local i32 @PTR_ERR(%struct.xt_target*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @xt_check_target(%struct.xt_tgchk_param*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

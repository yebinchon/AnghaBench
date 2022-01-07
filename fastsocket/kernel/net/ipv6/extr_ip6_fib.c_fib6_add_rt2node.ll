; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_add_rt2node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_add_rt2node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_node = type { i32, i32*, %struct.rt6_info* }
%struct.rt6_info = type { i64, i64, i64, i32, i32, %struct.TYPE_9__, %struct.fib6_node*, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.rt6_info* }
%struct.nl_info = type { %struct.TYPE_12__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@NLM_F_REPLACE = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@RTF_EXPIRES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"NLM_F_CREATE should be set when creating new route\0A\00", align 1
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@RTN_RTINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"NLM_F_REPLACE set, but no existing node found!\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_node*, %struct.rt6_info*, %struct.nl_info*)* @fib6_add_rt2node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_add_rt2node(%struct.fib6_node* %0, %struct.rt6_info* %1, %struct.nl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib6_node*, align 8
  %6 = alloca %struct.rt6_info*, align 8
  %7 = alloca %struct.nl_info*, align 8
  %8 = alloca %struct.rt6_info*, align 8
  %9 = alloca %struct.rt6_info**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fib6_node* %0, %struct.fib6_node** %5, align 8
  store %struct.rt6_info* %1, %struct.rt6_info** %6, align 8
  store %struct.nl_info* %2, %struct.nl_info** %7, align 8
  store %struct.rt6_info* null, %struct.rt6_info** %8, align 8
  %13 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %14 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %19 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NLM_F_REPLACE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %17, %3
  %27 = phi i1 [ false, %3 ], [ %25, %17 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %30 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %35 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NLM_F_CREATE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %33, %26
  %43 = phi i1 [ true, %26 ], [ %41, %33 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %45 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %46 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %45, i32 0, i32 2
  store %struct.rt6_info** %46, %struct.rt6_info*** %9, align 8
  %47 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %48 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %47, i32 0, i32 2
  %49 = load %struct.rt6_info*, %struct.rt6_info** %48, align 8
  store %struct.rt6_info* %49, %struct.rt6_info** %8, align 8
  br label %50

50:                                               ; preds = %156, %42
  %51 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %52 = icmp ne %struct.rt6_info* %51, null
  br i1 %52, label %53, label %162

53:                                               ; preds = %50
  %54 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %55 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %58 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %142

61:                                               ; preds = %53
  %62 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %63 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %68 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NLM_F_EXCL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @EEXIST, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %286

78:                                               ; preds = %66, %61
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %162

84:                                               ; preds = %78
  %85 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %86 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %89 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %141

92:                                               ; preds = %84
  %93 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %94 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %97 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %100, label %141

100:                                              ; preds = %92
  %101 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %102 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %101, i32 0, i32 8
  %103 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %104 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %103, i32 0, i32 8
  %105 = call i64 @ipv6_addr_equal(i32* %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %100
  %108 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %109 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @RTF_EXPIRES, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* @EEXIST, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %286

117:                                              ; preds = %107
  %118 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %119 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %122 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %121, i32 0, i32 7
  store i64 %120, i64* %122, align 8
  %123 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %124 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @RTF_EXPIRES, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %117
  %130 = load i32, i32* @RTF_EXPIRES, align 4
  %131 = xor i32 %130, -1
  %132 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %133 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %137 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %136, i32 0, i32 7
  store i64 0, i64* %137, align 8
  br label %138

138:                                              ; preds = %129, %117
  %139 = load i32, i32* @EEXIST, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %286

141:                                              ; preds = %100, %92, %84
  br label %142

142:                                              ; preds = %141, %53
  %143 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %144 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %147 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %162

151:                                              ; preds = %142
  %152 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %153 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store %struct.rt6_info** %155, %struct.rt6_info*** %9, align 8
  br label %156

156:                                              ; preds = %151
  %157 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %158 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load %struct.rt6_info*, %struct.rt6_info** %160, align 8
  store %struct.rt6_info* %161, %struct.rt6_info** %8, align 8
  br label %50

162:                                              ; preds = %150, %81, %50
  %163 = load %struct.rt6_info**, %struct.rt6_info*** %9, align 8
  %164 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %165 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %164, i32 0, i32 2
  %166 = icmp eq %struct.rt6_info** %163, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %169 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %168, i32 0, i32 1
  store i32* null, i32** %169, align 8
  br label %170

170:                                              ; preds = %167, %162
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %228, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %173
  br label %179

179:                                              ; preds = %234, %178
  %180 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %181 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %182 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  store %struct.rt6_info* %180, %struct.rt6_info** %184, align 8
  %185 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %186 = load %struct.rt6_info**, %struct.rt6_info*** %9, align 8
  store %struct.rt6_info* %185, %struct.rt6_info** %186, align 8
  %187 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %188 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %189 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %188, i32 0, i32 6
  store %struct.fib6_node* %187, %struct.fib6_node** %189, align 8
  %190 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %191 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %190, i32 0, i32 4
  %192 = call i32 @atomic_inc(i32* %191)
  %193 = load i32, i32* @RTM_NEWROUTE, align 4
  %194 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %195 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %196 = call i32 @inet6_rt_notify(i32 %193, %struct.rt6_info* %194, %struct.nl_info* %195)
  %197 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %198 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %197, i32 0, i32 0
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  %206 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %207 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @RTN_RTINFO, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %227, label %212

212:                                              ; preds = %179
  %213 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %214 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %213, i32 0, i32 0
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  %222 = load i32, i32* @RTN_RTINFO, align 4
  %223 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %224 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %212, %179
  br label %285

228:                                              ; preds = %170
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %11, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  br label %179

235:                                              ; preds = %231
  %236 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %237 = load i32, i32* @ENOENT, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %4, align 4
  br label %286

239:                                              ; preds = %228
  %240 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %241 = load %struct.rt6_info**, %struct.rt6_info*** %9, align 8
  store %struct.rt6_info* %240, %struct.rt6_info** %241, align 8
  %242 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %243 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %244 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %243, i32 0, i32 6
  store %struct.fib6_node* %242, %struct.fib6_node** %244, align 8
  %245 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %246 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load %struct.rt6_info*, %struct.rt6_info** %248, align 8
  %250 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %251 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  store %struct.rt6_info* %249, %struct.rt6_info** %253, align 8
  %254 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %255 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %254, i32 0, i32 4
  %256 = call i32 @atomic_inc(i32* %255)
  %257 = load i32, i32* @RTM_NEWROUTE, align 4
  %258 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %259 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %260 = call i32 @inet6_rt_notify(i32 %257, %struct.rt6_info* %258, %struct.nl_info* %259)
  %261 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %262 = call i32 @rt6_release(%struct.rt6_info* %261)
  %263 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %264 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @RTN_RTINFO, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %284, label %269

269:                                              ; preds = %239
  %270 = load %struct.nl_info*, %struct.nl_info** %7, align 8
  %271 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %270, i32 0, i32 0
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 4
  %279 = load i32, i32* @RTN_RTINFO, align 4
  %280 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %281 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 8
  br label %284

284:                                              ; preds = %269, %239
  br label %285

285:                                              ; preds = %284, %227
  store i32 0, i32* %4, align 4
  br label %286

286:                                              ; preds = %285, %235, %138, %114, %75
  %287 = load i32, i32* %4, align 4
  ret i32 %287
}

declare dso_local i64 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @inet6_rt_notify(i32, %struct.rt6_info*, %struct.nl_info*) #1

declare dso_local i32 @rt6_release(%struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_ipaddr.c_op_ipaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII_ipaddr.c_op_ipaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { i32 }
%struct.snmp_value = type { %struct.TYPE_15__, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32* }
%struct.mibifa = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_17__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { i32* }
%struct.update = type { i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i8* }
%struct.asn_oid = type { i32, i32* }

@mibifa_list = common dso_local global i32 0, align 4
@SNMP_ERR_NOSUCHNAME = common dso_local global i32 0, align 4
@SNMP_ERR_NO_CREATION = common dso_local global i32 0, align 4
@oid_ipAddrTable = common dso_local global i32 0, align 4
@update_func = common dso_local global i32 0, align 4
@SNMP_ERR_RES_UNAVAIL = common dso_local global i32 0, align 4
@UPD_IFINDEX = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@SNMP_ERR_WRONG_VALUE = common dso_local global i32 0, align 4
@UPD_MASK = common dso_local global i32 0, align 4
@UPD_BCAST = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@MIBIFA_DESTROYED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @op_ipaddr(%struct.snmp_context* %0, %struct.snmp_value* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snmp_context*, align 8
  %8 = alloca %struct.snmp_value*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mibifa*, align 8
  %14 = alloca %struct.update*, align 8
  %15 = alloca %struct.asn_oid, align 8
  %16 = alloca [4 x i32], align 16
  store %struct.snmp_context* %0, %struct.snmp_context** %7, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %18 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  store %struct.mibifa* null, %struct.mibifa** %13, align 8
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %260 [
    i32 130, label %27
    i32 131, label %42
    i32 128, label %51
    i32 129, label %258
    i32 132, label %258
  ]

27:                                               ; preds = %5
  %28 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %29 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %28, i32 0, i32 1
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.mibifa* @NEXT_OBJECT_OID(i32* @mibifa_list, %struct.TYPE_16__* %29, i32 %30)
  store %struct.mibifa* %31, %struct.mibifa** %13, align 8
  %32 = icmp eq %struct.mibifa* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  store i32 %34, i32* %6, align 4
  br label %391

35:                                               ; preds = %27
  %36 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %37 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %36, i32 0, i32 1
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %40 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %39, i32 0, i32 4
  %41 = call i32 @index_append(%struct.TYPE_16__* %37, i32 %38, %struct.TYPE_17__* %40)
  br label %260

42:                                               ; preds = %5
  %43 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %44 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %43, i32 0, i32 1
  %45 = load i32, i32* %9, align 4
  %46 = call %struct.mibifa* @FIND_OBJECT_OID(i32* @mibifa_list, %struct.TYPE_16__* %44, i32 %45)
  store %struct.mibifa* %46, %struct.mibifa** %13, align 8
  %47 = icmp eq %struct.mibifa* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  store i32 %49, i32* %6, align 4
  br label %391

50:                                               ; preds = %42
  br label %260

51:                                               ; preds = %5
  %52 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %53 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %52, i32 0, i32 1
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %57 = call i32 @index_decode(%struct.TYPE_16__* %53, i32 %54, i32 %55, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @SNMP_ERR_NO_CREATION, align 4
  store i32 %60, i32* %6, align 4
  br label %391

61:                                               ; preds = %51
  %62 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %63 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %62, i32 0, i32 1
  %64 = load i32, i32* %9, align 4
  %65 = call %struct.mibifa* @FIND_OBJECT_OID(i32* @mibifa_list, %struct.TYPE_16__* %63, i32 %64)
  store %struct.mibifa* %65, %struct.mibifa** %13, align 8
  %66 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 0
  store i32 4, i32* %66, align 8
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %68, i32* %71, align 4
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %73, i32* %76, align 4
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %78, i32* %81, align 4
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %15, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  store i32 %83, i32* %86, align 4
  %87 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %88 = load i32, i32* @update_func, align 4
  %89 = call i64 @snmp_dep_lookup(%struct.snmp_context* %87, i32* @oid_ipAddrTable, %struct.asn_oid* %15, i32 32, i32 %88)
  %90 = inttoptr i64 %89 to %struct.update*
  store %struct.update* %90, %struct.update** %14, align 8
  %91 = icmp eq %struct.update* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %61
  %93 = load i32, i32* @SNMP_ERR_RES_UNAVAIL, align 4
  store i32 %93, i32* %6, align 4
  br label %391

94:                                               ; preds = %61
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = shl i32 %96, 24
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 16
  %101 = or i32 %97, %100
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %103 = load i32, i32* %102, align 8
  %104 = shl i32 %103, 8
  %105 = or i32 %101, %104
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 0
  %109 = or i32 %105, %108
  %110 = call i8* @htonl(i32 %109)
  %111 = load %struct.update*, %struct.update** %14, align 8
  %112 = getelementptr inbounds %struct.update, %struct.update* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  %114 = load i32, i32* %12, align 4
  switch i32 %114, label %256 [
    i32 135, label %115
    i32 134, label %171
    i32 136, label %221
  ]

115:                                              ; preds = %94
  %116 = load %struct.update*, %struct.update** %14, align 8
  %117 = getelementptr inbounds %struct.update, %struct.update* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @UPD_IFINDEX, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %123, i32* %6, align 4
  br label %391

124:                                              ; preds = %115
  %125 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %126 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %132 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %134, 2147483647
  br i1 %135, label %136, label %138

136:                                              ; preds = %130, %124
  %137 = load i32, i32* @SNMP_ERR_WRONG_VALUE, align 4
  store i32 %137, i32* %6, align 4
  br label %391

138:                                              ; preds = %130
  %139 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %140 = icmp ne %struct.mibifa* %139, null
  br i1 %140, label %141, label %159

141:                                              ; preds = %138
  %142 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %143 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %146 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %144, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %141
  %151 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %152 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %157, i32* %6, align 4
  br label %391

158:                                              ; preds = %150, %141
  br label %159

159:                                              ; preds = %158, %138
  %160 = load i32, i32* @UPD_IFINDEX, align 4
  %161 = load %struct.update*, %struct.update** %14, align 8
  %162 = getelementptr inbounds %struct.update, %struct.update* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %166 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.update*, %struct.update** %14, align 8
  %170 = getelementptr inbounds %struct.update, %struct.update* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %256

171:                                              ; preds = %94
  %172 = load %struct.update*, %struct.update** %14, align 8
  %173 = getelementptr inbounds %struct.update, %struct.update* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @UPD_MASK, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %179, i32* %6, align 4
  br label %391

180:                                              ; preds = %171
  %181 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %182 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %186, 24
  %188 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %189 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 %193, 16
  %195 = or i32 %187, %194
  %196 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %197 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = shl i32 %201, 8
  %203 = or i32 %195, %202
  %204 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %205 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 3
  %209 = load i32, i32* %208, align 4
  %210 = shl i32 %209, 0
  %211 = or i32 %203, %210
  %212 = call i8* @htonl(i32 %211)
  %213 = load %struct.update*, %struct.update** %14, align 8
  %214 = getelementptr inbounds %struct.update, %struct.update* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  store i8* %212, i8** %215, align 8
  %216 = load i32, i32* @UPD_MASK, align 4
  %217 = load %struct.update*, %struct.update** %14, align 8
  %218 = getelementptr inbounds %struct.update, %struct.update* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %256

221:                                              ; preds = %94
  %222 = load %struct.update*, %struct.update** %14, align 8
  %223 = getelementptr inbounds %struct.update, %struct.update* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @UPD_BCAST, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %221
  %229 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %229, i32* %6, align 4
  br label %391

230:                                              ; preds = %221
  %231 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %232 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %230
  %237 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %238 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 1
  br i1 %241, label %242, label %244

242:                                              ; preds = %236
  %243 = load i32, i32* @SNMP_ERR_WRONG_VALUE, align 4
  store i32 %243, i32* %6, align 4
  br label %391

244:                                              ; preds = %236, %230
  %245 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %246 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.update*, %struct.update** %14, align 8
  %250 = getelementptr inbounds %struct.update, %struct.update* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  %251 = load i32, i32* @UPD_BCAST, align 4
  %252 = load %struct.update*, %struct.update** %14, align 8
  %253 = getelementptr inbounds %struct.update, %struct.update* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %94, %244, %180, %159
  %257 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %257, i32* %6, align 4
  br label %391

258:                                              ; preds = %5, %5
  %259 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %259, i32* %6, align 4
  br label %391

260:                                              ; preds = %5, %50, %35
  %261 = load i32, i32* %12, align 4
  switch i32 %261, label %389 [
    i32 137, label %262
    i32 135, label %307
    i32 134, label %326
    i32 136, label %375
    i32 133, label %385
  ]

262:                                              ; preds = %260
  %263 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %264 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %270 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  store i32 %268, i32* %273, align 4
  %274 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %275 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %281 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  store i32 %279, i32* %284, align 4
  %285 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %286 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %285, i32 0, i32 4
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %292 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 2
  store i32 %290, i32* %295, align 4
  %296 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %297 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %296, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 3
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %303 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 3
  store i32 %301, i32* %306, align 4
  br label %389

307:                                              ; preds = %260
  %308 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %309 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @MIBIFA_DESTROYED, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %307
  %315 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %316 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 0
  store i32 0, i32* %317, align 8
  br label %325

318:                                              ; preds = %307
  %319 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %320 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %323 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 0
  store i32 %321, i32* %324, align 8
  br label %325

325:                                              ; preds = %318, %314
  br label %389

326:                                              ; preds = %260
  %327 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %328 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %327, i32 0, i32 3
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @ntohl(i32 %330)
  %332 = ashr i32 %331, 24
  %333 = and i32 %332, 255
  %334 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %335 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 0
  store i32 %333, i32* %338, align 4
  %339 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %340 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %339, i32 0, i32 3
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @ntohl(i32 %342)
  %344 = ashr i32 %343, 16
  %345 = and i32 %344, 255
  %346 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %347 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 1
  store i32 %345, i32* %350, align 4
  %351 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %352 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @ntohl(i32 %354)
  %356 = ashr i32 %355, 8
  %357 = and i32 %356, 255
  %358 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %359 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %359, i32 0, i32 1
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 2
  store i32 %357, i32* %362, align 4
  %363 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %364 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %363, i32 0, i32 3
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @ntohl(i32 %366)
  %368 = ashr i32 %367, 0
  %369 = and i32 %368, 255
  %370 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %371 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 1
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 3
  store i32 %369, i32* %374, align 4
  br label %389

375:                                              ; preds = %260
  %376 = load %struct.mibifa*, %struct.mibifa** %13, align 8
  %377 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @ntohl(i32 %379)
  %381 = and i32 %380, 1
  %382 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %383 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 0
  store i32 %381, i32* %384, align 8
  br label %389

385:                                              ; preds = %260
  %386 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %387 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 0
  store i32 65535, i32* %388, align 8
  br label %389

389:                                              ; preds = %260, %385, %375, %326, %325, %262
  %390 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %390, i32* %6, align 4
  br label %391

391:                                              ; preds = %389, %258, %256, %242, %228, %178, %156, %136, %122, %92, %59, %48, %33
  %392 = load i32, i32* %6, align 4
  ret i32 %392
}

declare dso_local %struct.mibifa* @NEXT_OBJECT_OID(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @index_append(%struct.TYPE_16__*, i32, %struct.TYPE_17__*) #1

declare dso_local %struct.mibifa* @FIND_OBJECT_OID(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @index_decode(%struct.TYPE_16__*, i32, i32, i32*) #1

declare dso_local i64 @snmp_dep_lookup(%struct.snmp_context*, i32*, %struct.asn_oid*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

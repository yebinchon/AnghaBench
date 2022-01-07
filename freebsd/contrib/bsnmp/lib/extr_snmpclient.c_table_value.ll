; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_table_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_table_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_table = type { i64, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.entry = type { i64 }
%struct.snmp_value = type { i64, %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.asn_oid, %struct.TYPE_8__, i32 }
%struct.asn_oid = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64* }

@snmp_client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"bad syntax (%u instead of %u)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no memory for string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_table*, %struct.entry*, %struct.snmp_value*)* @table_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_value(%struct.snmp_table* %0, %struct.entry* %1, %struct.snmp_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_table*, align 8
  %6 = alloca %struct.entry*, align 8
  %7 = alloca %struct.snmp_value*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.snmp_table* %0, %struct.snmp_table** %5, align 8
  store %struct.entry* %1, %struct.entry** %6, align 8
  store %struct.snmp_value* %2, %struct.snmp_value** %7, align 8
  %10 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %11 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %45, %3
  %14 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %15 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 131
  br i1 %21, label %22, label %48

22:                                               ; preds = %13
  %23 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %24 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %31 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %35 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %33, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %29, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %22
  br label %48

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %13

48:                                               ; preds = %43, %13
  %49 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %50 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 131
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %245

58:                                               ; preds = %48
  %59 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %60 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %63 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %61, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %58
  %71 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %72 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %75 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i32*, i8*, ...) @seterr(i32* @snmp_client, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %73, i64 %80)
  store i32 -1, i32* %4, align 4
  br label %245

82:                                               ; preds = %58
  %83 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %84 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  switch i64 %85, label %238 [
    i64 135, label %86
    i64 130, label %103
    i64 129, label %167
    i64 134, label %185
    i64 139, label %202
    i64 136, label %202
    i64 128, label %202
    i64 138, label %219
    i64 131, label %236
    i64 132, label %236
    i64 133, label %236
    i64 137, label %236
  ]

86:                                               ; preds = %82
  %87 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %88 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.entry*, %struct.entry** %6, align 8
  %92 = bitcast %struct.entry* %91 to i8*
  %93 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %94 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %92, i64 %100
  %102 = bitcast i8* %101 to i32*
  store i32 %90, i32* %102, align 4
  br label %238

103:                                              ; preds = %82
  %104 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %105 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  %110 = call i8* @malloc(i32 %109)
  store i8* %110, i8** %9, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = call i32 (i32*, i8*, ...) @seterr(i32* @snmp_client, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %245

114:                                              ; preds = %103
  %115 = load i8*, i8** %9, align 8
  %116 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %117 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %122 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @memcpy(i8* %115, i32 %120, i32 %125)
  %127 = load i8*, i8** %9, align 8
  %128 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %129 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %127, i64 %133
  store i8 0, i8* %134, align 1
  %135 = load i8*, i8** %9, align 8
  %136 = load %struct.entry*, %struct.entry** %6, align 8
  %137 = bitcast %struct.entry* %136 to i8*
  %138 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %139 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = load i64, i64* %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %137, i64 %145
  %147 = bitcast i8* %146 to i8**
  store i8* %135, i8** %147, align 8
  %148 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %149 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.entry*, %struct.entry** %6, align 8
  %155 = bitcast %struct.entry* %154 to i8*
  %156 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %157 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %156, i32 0, i32 1
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %155, i64 %163
  %165 = getelementptr inbounds i8, i8* %164, i64 8
  %166 = bitcast i8* %165 to i64*
  store i64 %153, i64* %166, align 8
  br label %238

167:                                              ; preds = %82
  %168 = load %struct.entry*, %struct.entry** %6, align 8
  %169 = bitcast %struct.entry* %168 to i8*
  %170 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %171 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %170, i32 0, i32 1
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = load i64, i64* %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %169, i64 %177
  %179 = bitcast i8* %178 to %struct.asn_oid*
  %180 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %181 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 3
  %183 = bitcast %struct.asn_oid* %179 to i8*
  %184 = bitcast %struct.asn_oid* %182 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %183, i8* align 8 %184, i64 4, i1 false)
  br label %238

185:                                              ; preds = %82
  %186 = load %struct.entry*, %struct.entry** %6, align 8
  %187 = bitcast %struct.entry* %186 to i8*
  %188 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %189 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %188, i32 0, i32 1
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = load i64, i64* %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %187, i64 %195
  %197 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %198 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @memcpy(i8* %196, i32 %200, i32 4)
  br label %238

202:                                              ; preds = %82, %82, %82
  %203 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %204 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.entry*, %struct.entry** %6, align 8
  %208 = bitcast %struct.entry* %207 to i8*
  %209 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %210 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %209, i32 0, i32 1
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = load i64, i64* %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %208, i64 %216
  %218 = bitcast i8* %217 to i32*
  store i32 %206, i32* %218, align 4
  br label %238

219:                                              ; preds = %82
  %220 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %221 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.entry*, %struct.entry** %6, align 8
  %225 = bitcast %struct.entry* %224 to i8*
  %226 = load %struct.snmp_table*, %struct.snmp_table** %5, align 8
  %227 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %226, i32 0, i32 1
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = load i64, i64* %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %225, i64 %233
  %235 = bitcast i8* %234 to i64*
  store i64 %223, i64* %235, align 8
  br label %238

236:                                              ; preds = %82, %82, %82, %82
  %237 = call i32 (...) @abort() #4
  unreachable

238:                                              ; preds = %82, %219, %202, %185, %167, %114, %86
  %239 = load i64, i64* %8, align 8
  %240 = shl i64 1, %239
  %241 = load %struct.entry*, %struct.entry** %6, align 8
  %242 = getelementptr inbounds %struct.entry, %struct.entry* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = or i64 %243, %240
  store i64 %244, i64* %242, align 8
  store i32 0, i32* %4, align 4
  br label %245

245:                                              ; preds = %238, %112, %70, %57
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local i32 @seterr(i32*, i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

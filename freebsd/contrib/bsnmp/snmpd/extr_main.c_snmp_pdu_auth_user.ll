; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_snmp_pdu_auth_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_snmp_pdu_auth_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i64, i64, i32 }
%struct.snmp_pdu = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32 }

@usm_user = common dso_local global %struct.TYPE_10__* null, align 8
@snmpd_engine = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@SNMP_MSG_AUTODISCOVER = common dso_local global i32 0, align 4
@SNMP_CODE_OK = common dso_local global i32 0, align 4
@SNMP_CODE_BADUSER = common dso_local global i32 0, align 4
@SNMP_CODE_BADENGINE = common dso_local global i32 0, align 4
@SNMP_MSG_AUTH_FLAG = common dso_local global i32 0, align 4
@SNMP_TIME_WINDOW = common dso_local global i64 0, align 8
@SNMP_CODE_NOTINTIME = common dso_local global i32 0, align 4
@SNMP_MSG_PRIV_FLAG = common dso_local global i32 0, align 4
@SNMP_AUTH_NOAUTH = common dso_local global i64 0, align 8
@SNMP_PRIV_NOPRIV = common dso_local global i64 0, align 8
@SNMP_CODE_BADSECLEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_pdu*)* @snmp_pdu_auth_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp_pdu_auth_user(%struct.snmp_pdu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snmp_pdu*, align 8
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %3, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @usm_user, align 8
  %4 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %5 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  %10 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %11 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @strlen(i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %9
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @snmpd_engine, i32 0, i32 0), align 8
  %18 = sext i32 %17 to i64
  %19 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %20 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %23 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @snmpd_engine, i32 0, i32 3), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @snmpd_engine, i32 0, i32 0), align 8
  %28 = call i32 @memcpy(i32 %25, i32 %26, i32 %27)
  %29 = call i32 (...) @update_snmpd_engine_time()
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @snmpd_engine, i32 0, i32 1), align 8
  %31 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %32 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i64 %30, i64* %33, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @snmpd_engine, i32 0, i32 2), align 8
  %35 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %36 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i64 %34, i64* %37, align 8
  %38 = load i32, i32* @SNMP_MSG_AUTODISCOVER, align 4
  %39 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %40 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @SNMP_CODE_OK, align 4
  store i32 %43, i32* %2, align 4
  br label %211

44:                                               ; preds = %9, %1
  %45 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %46 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %50 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %55 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.TYPE_10__* @usm_find_user(i32 %48, i32 %53, i32 %57)
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** @usm_user, align 8
  %59 = icmp eq %struct.TYPE_10__* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %44
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @usm_user, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %60, %44
  %66 = load i32, i32* @SNMP_CODE_BADUSER, align 4
  store i32 %66, i32* %2, align 4
  br label %211

67:                                               ; preds = %60
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** @usm_user, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @snmpd_engine, i32 0, i32 0), align 8
  %72 = sext i32 %71 to i64
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %67
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @usm_user, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @snmpd_engine, i32 0, i32 3), align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @snmpd_engine, i32 0, i32 0), align 8
  %80 = sext i32 %79 to i64
  %81 = call i64 @memcmp(i32 %77, i32 %78, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74, %67
  %84 = load i32, i32* @SNMP_CODE_BADENGINE, align 4
  store i32 %84, i32* %2, align 4
  br label %211

85:                                               ; preds = %74
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** @usm_user, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %91 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  %93 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %94 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** @usm_user, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @memcpy(i32 %96, i32 %100, i32 4)
  %102 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %103 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SNMP_MSG_AUTH_FLAG, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %165

108:                                              ; preds = %85
  %109 = call i32 (...) @update_snmpd_engine_time()
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** @usm_user, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %115 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i64 %113, i64* %116, align 8
  %117 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %118 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** @usm_user, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @memcpy(i32 %120, i32 %124, i32 4)
  %126 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %127 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %108
  %132 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %133 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %131
  %138 = call i32 (...) @update_snmpd_engine_time()
  %139 = load i32, i32* @SNMP_MSG_AUTODISCOVER, align 4
  %140 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %141 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load i32, i32* @SNMP_CODE_OK, align 4
  store i32 %144, i32* %2, align 4
  br label %211

145:                                              ; preds = %131, %108
  %146 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %147 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @snmpd_engine, i32 0, i32 1), align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %162, label %152

152:                                              ; preds = %145
  %153 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %154 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @snmpd_engine, i32 0, i32 2), align 8
  %158 = sub nsw i64 %156, %157
  %159 = call i64 @abs(i64 %158)
  %160 = load i64, i64* @SNMP_TIME_WINDOW, align 8
  %161 = icmp sgt i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %152, %145
  %163 = load i32, i32* @SNMP_CODE_NOTINTIME, align 4
  store i32 %163, i32* %2, align 4
  br label %211

164:                                              ; preds = %152
  br label %165

165:                                              ; preds = %164, %85
  %166 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %167 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @SNMP_MSG_PRIV_FLAG, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %165
  %173 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %174 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @SNMP_MSG_AUTH_FLAG, align 4
  %177 = and i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %207, label %179

179:                                              ; preds = %172, %165
  %180 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %181 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @SNMP_MSG_AUTH_FLAG, align 4
  %184 = and i32 %182, %183
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %179
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** @usm_user, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @SNMP_AUTH_NOAUTH, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %207, label %193

193:                                              ; preds = %186, %179
  %194 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %195 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @SNMP_MSG_PRIV_FLAG, align 4
  %198 = and i32 %196, %197
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %193
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** @usm_user, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @SNMP_PRIV_NOPRIV, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %200, %186, %172
  %208 = load i32, i32* @SNMP_CODE_BADSECLEVEL, align 4
  store i32 %208, i32* %2, align 4
  br label %211

209:                                              ; preds = %200, %193
  %210 = load i32, i32* @SNMP_CODE_OK, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %209, %207, %162, %137, %83, %65, %16
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @update_snmpd_engine_time(...) #1

declare dso_local %struct.TYPE_10__* @usm_find_user(i32, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_table_check_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_table_check_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.tabwork = type { i64, i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.snmp_pdu = type { i64, i32, i32, %struct.snmp_value* }
%struct.snmp_value = type { i64, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i64* }
%struct.TYPE_8__ = type { i64 }
%struct.entry = type { i32 }

@SNMP_ERR_NOERROR = common dso_local global i64 0, align 8
@snmp_client = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@SNMP_V1 = common dso_local global i64 0, align 8
@SNMP_ERR_NOSUCHNAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"error fetching table: status=%d index=%d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"last_change: bad response\00", align 1
@SNMP_SYNTAX_TIMETICKS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"last_change: bad syntax %u\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"max iteration count exceeded\00", align 1
@SNMP_SYNTAX_ENDOFMIBVIEW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tabwork*, %struct.snmp_pdu*)* @table_check_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_check_response(%struct.tabwork* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tabwork*, align 8
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca %struct.snmp_value*, align 8
  %7 = alloca %struct.entry*, align 8
  store %struct.tabwork* %0, %struct.tabwork** %4, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %5, align 8
  %8 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %9 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SNMP_ERR_NOERROR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %2
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @snmp_client, i32 0, i32 0), align 8
  %15 = load i64, i64* @SNMP_V1, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %19 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNMP_ERR_NOSUCHNAME, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %25 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %28 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = icmp eq i32 %26, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br i1 true, label %38, label %39

37:                                               ; preds = %23, %17, %13
  br i1 true, label %38, label %39

38:                                               ; preds = %37, %36
  store i32 0, i32* %3, align 4
  br label %204

39:                                               ; preds = %37, %36
  %40 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %41 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %44 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.TYPE_11__*, i8*, ...) @seterr(%struct.TYPE_11__* @snmp_client, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %42, i32 %45)
  store i32 -1, i32* %3, align 4
  br label %204

47:                                               ; preds = %2
  %48 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %49 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %48, i32 0, i32 3
  %50 = load %struct.snmp_value*, %struct.snmp_value** %49, align 8
  store %struct.snmp_value* %50, %struct.snmp_value** %6, align 8
  br label %51

51:                                               ; preds = %200, %47
  %52 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %53 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %54 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %53, i32 0, i32 3
  %55 = load %struct.snmp_value*, %struct.snmp_value** %54, align 8
  %56 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %57 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %55, i64 %59
  %61 = icmp ult %struct.snmp_value* %52, %60
  br i1 %61, label %62, label %203

62:                                               ; preds = %51
  %63 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %64 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %63, i32 0, i32 2
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %167

70:                                               ; preds = %62
  %71 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %72 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %73 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %72, i32 0, i32 3
  %74 = load %struct.snmp_value*, %struct.snmp_value** %73, align 8
  %75 = icmp eq %struct.snmp_value* %71, %74
  br i1 %75, label %76, label %167

76:                                               ; preds = %70
  %77 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %78 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %77, i32 0, i32 2
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %82 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %81, i32 0, i32 1
  %83 = call i32 @asn_is_suboid(%struct.TYPE_12__* %80, %struct.TYPE_10__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %76
  %86 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %87 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %91 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %90, i32 0, i32 2
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  %97 = icmp ne i32 %89, %96
  br i1 %97, label %113, label %98

98:                                               ; preds = %85
  %99 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %100 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %104 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %103, i32 0, i32 2
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %102, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %98, %85, %76
  %114 = call i32 (%struct.TYPE_11__*, i8*, ...) @seterr(%struct.TYPE_11__* @snmp_client, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %204

115:                                              ; preds = %98
  %116 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %117 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SNMP_SYNTAX_TIMETICKS, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %123 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (%struct.TYPE_11__*, i8*, ...) @seterr(%struct.TYPE_11__* @snmp_client, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %124)
  store i32 -1, i32* %3, align 4
  br label %204

126:                                              ; preds = %115
  %127 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %128 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %133 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %137 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %139 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %138, i32 0, i32 3
  store i64 0, i64* %139, align 8
  br label %166

140:                                              ; preds = %126
  %141 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %142 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %145 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %143, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %140
  %150 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %151 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %151, align 8
  %154 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %155 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %154, i32 0, i32 2
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sge i64 %153, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %149
  %161 = call i32 (%struct.TYPE_11__*, i8*, ...) @seterr(%struct.TYPE_11__* @snmp_client, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %204

162:                                              ; preds = %149
  %163 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %164 = call i32 @table_free(%struct.tabwork* %163, i32 1)
  store i32 -2, i32* %3, align 4
  br label %204

165:                                              ; preds = %140
  br label %166

166:                                              ; preds = %165, %131
  br label %200

167:                                              ; preds = %70, %62
  %168 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %169 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %168, i32 0, i32 2
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %173 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %172, i32 0, i32 1
  %174 = call i32 @asn_is_suboid(%struct.TYPE_12__* %171, %struct.TYPE_10__* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %167
  %177 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %178 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @SNMP_SYNTAX_ENDOFMIBVIEW, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %176, %167
  store i32 0, i32* %3, align 4
  br label %204

183:                                              ; preds = %176
  %184 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %185 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %186 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %185, i32 0, i32 1
  %187 = call %struct.entry* @table_find(%struct.tabwork* %184, %struct.TYPE_10__* %186)
  store %struct.entry* %187, %struct.entry** %7, align 8
  %188 = icmp eq %struct.entry* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  store i32 -1, i32* %3, align 4
  br label %204

190:                                              ; preds = %183
  %191 = load %struct.tabwork*, %struct.tabwork** %4, align 8
  %192 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %191, i32 0, i32 2
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = load %struct.entry*, %struct.entry** %7, align 8
  %195 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %196 = call i64 @table_value(%struct.TYPE_9__* %193, %struct.entry* %194, %struct.snmp_value* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %190
  store i32 -1, i32* %3, align 4
  br label %204

199:                                              ; preds = %190
  br label %200

200:                                              ; preds = %199, %166
  %201 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %202 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %201, i32 1
  store %struct.snmp_value* %202, %struct.snmp_value** %6, align 8
  br label %51

203:                                              ; preds = %51
  store i32 1, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %198, %189, %182, %162, %160, %121, %113, %39, %38
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @seterr(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @asn_is_suboid(%struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local i32 @table_free(%struct.tabwork*, i32) #1

declare dso_local %struct.entry* @table_find(%struct.tabwork*, %struct.TYPE_10__*) #1

declare dso_local i64 @table_value(%struct.TYPE_9__*, %struct.entry*, %struct.snmp_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

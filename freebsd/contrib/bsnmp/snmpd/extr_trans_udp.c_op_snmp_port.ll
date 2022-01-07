; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_udp.c_op_snmp_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_udp.c_op_snmp_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.snmp_value = type { %struct.TYPE_9__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.udp_port = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@my_trans = common dso_local global i32 0, align 4
@SNMP_ERR_NOSUCHNAME = common dso_local global i32 0, align 4
@SNMP_ERR_WRONG_VALUE = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@SNMP_ERR_NO_CREATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @op_snmp_port(%struct.snmp_context* %0, %struct.snmp_value* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snmp_context*, align 8
  %8 = alloca %struct.snmp_value*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.udp_port*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  store %struct.snmp_context* %0, %struct.snmp_context** %7, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %17 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %182 [
    i32 130, label %26
    i32 131, label %44
    i32 128, label %55
    i32 129, label %120
    i32 132, label %151
  ]

26:                                               ; preds = %5
  %27 = load i32, i32* @my_trans, align 4
  %28 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %29 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %28, i32 0, i32 1
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @trans_next_port(i32 %27, %struct.TYPE_11__* %29, i32 %30)
  %32 = inttoptr i64 %31 to %struct.udp_port*
  store %struct.udp_port* %32, %struct.udp_port** %13, align 8
  %33 = icmp eq %struct.udp_port* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  store i32 %35, i32* %6, align 4
  br label %194

36:                                               ; preds = %26
  %37 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %38 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %37, i32 0, i32 1
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.udp_port*, %struct.udp_port** %13, align 8
  %41 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = call i32 @index_append(%struct.TYPE_11__* %38, i32 %39, i32* %42)
  br label %184

44:                                               ; preds = %5
  %45 = load i32, i32* @my_trans, align 4
  %46 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %47 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %46, i32 0, i32 1
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @trans_find_port(i32 %45, %struct.TYPE_11__* %47, i32 %48)
  %50 = inttoptr i64 %49 to %struct.udp_port*
  store %struct.udp_port* %50, %struct.udp_port** %13, align 8
  %51 = icmp eq %struct.udp_port* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  store i32 %53, i32* %6, align 4
  br label %194

54:                                               ; preds = %44
  br label %184

55:                                               ; preds = %5
  %56 = load i32, i32* @my_trans, align 4
  %57 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %58 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %57, i32 0, i32 1
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @trans_find_port(i32 %56, %struct.TYPE_11__* %58, i32 %59)
  %61 = inttoptr i64 %60 to %struct.udp_port*
  store %struct.udp_port* %61, %struct.udp_port** %13, align 8
  %62 = load %struct.udp_port*, %struct.udp_port** %13, align 8
  %63 = icmp ne %struct.udp_port* %62, null
  %64 = zext i1 %63 to i32
  %65 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %66 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 133
  br i1 %70, label %71, label %73

71:                                               ; preds = %55
  %72 = call i32 (...) @abort() #3
  unreachable

73:                                               ; preds = %55
  %74 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %75 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @TRUTH_OK(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* @SNMP_ERR_WRONG_VALUE, align 4
  store i32 %81, i32* %6, align 4
  br label %194

82:                                               ; preds = %73
  %83 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %84 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @TRUTH_GET(i32 %86)
  %88 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %89 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  %92 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %93 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %82
  %99 = load %struct.udp_port*, %struct.udp_port** %13, align 8
  %100 = icmp ne %struct.udp_port* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %102, i32* %6, align 4
  br label %194

103:                                              ; preds = %98
  %104 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %105 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %104, i32 0, i32 1
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %109 = call i32 @index_decode(%struct.TYPE_11__* %105, i32 %106, i32 %107, i32* %108, i32* %15)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @SNMP_ERR_NO_CREATION, align 4
  store i32 %112, i32* %6, align 4
  br label %194

113:                                              ; preds = %103
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @udp_open_port(i32* %114, i32 %115, %struct.udp_port** %13)
  store i32 %116, i32* %6, align 4
  br label %194

117:                                              ; preds = %82
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %119, i32* %6, align 4
  br label %194

120:                                              ; preds = %5
  %121 = load i32, i32* @my_trans, align 4
  %122 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %123 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %122, i32 0, i32 1
  %124 = load i32, i32* %9, align 4
  %125 = call i64 @trans_find_port(i32 %121, %struct.TYPE_11__* %123, i32 %124)
  %126 = inttoptr i64 %125 to %struct.udp_port*
  store %struct.udp_port* %126, %struct.udp_port** %13, align 8
  %127 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %128 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %120
  %134 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %135 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %148

140:                                              ; preds = %133
  %141 = load %struct.udp_port*, %struct.udp_port** %13, align 8
  %142 = icmp ne %struct.udp_port* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load %struct.udp_port*, %struct.udp_port** %13, align 8
  %145 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %144, i32 0, i32 0
  %146 = call i32 @udp_close_port(%struct.TYPE_10__* %145)
  br label %147

147:                                              ; preds = %143, %140
  br label %148

148:                                              ; preds = %147, %133
  br label %149

149:                                              ; preds = %148, %120
  %150 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %150, i32* %6, align 4
  br label %194

151:                                              ; preds = %5
  %152 = load i32, i32* @my_trans, align 4
  %153 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %154 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %153, i32 0, i32 1
  %155 = load i32, i32* %9, align 4
  %156 = call i64 @trans_find_port(i32 %152, %struct.TYPE_11__* %154, i32 %155)
  %157 = inttoptr i64 %156 to %struct.udp_port*
  store %struct.udp_port* %157, %struct.udp_port** %13, align 8
  %158 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %159 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %158, i32 0, i32 0
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %180

164:                                              ; preds = %151
  %165 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %166 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %165, i32 0, i32 0
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %164
  %172 = load %struct.udp_port*, %struct.udp_port** %13, align 8
  %173 = icmp ne %struct.udp_port* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load %struct.udp_port*, %struct.udp_port** %13, align 8
  %176 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %175, i32 0, i32 0
  %177 = call i32 @udp_close_port(%struct.TYPE_10__* %176)
  br label %178

178:                                              ; preds = %174, %171
  br label %179

179:                                              ; preds = %178, %164
  br label %180

180:                                              ; preds = %179, %151
  %181 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %181, i32* %6, align 4
  br label %194

182:                                              ; preds = %5
  %183 = call i32 (...) @abort() #3
  unreachable

184:                                              ; preds = %54, %36
  %185 = load i32, i32* %12, align 4
  switch i32 %185, label %190 [
    i32 133, label %186
  ]

186:                                              ; preds = %184
  %187 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %188 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  br label %192

190:                                              ; preds = %184
  %191 = call i32 (...) @abort() #3
  unreachable

192:                                              ; preds = %186
  %193 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %192, %180, %149, %118, %113, %111, %101, %80, %52, %34
  %195 = load i32, i32* %6, align 4
  ret i32 %195
}

declare dso_local i64 @trans_next_port(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @index_append(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i64 @trans_find_port(i32, %struct.TYPE_11__*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @TRUTH_OK(i32) #1

declare dso_local i32 @TRUTH_GET(i32) #1

declare dso_local i32 @index_decode(%struct.TYPE_11__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @udp_open_port(i32*, i32, %struct.udp_port**) #1

declare dso_local i32 @udp_close_port(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

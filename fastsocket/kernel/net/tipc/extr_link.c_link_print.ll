; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i64, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.print_buf = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Link %x<%s>:\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c": NXO(%u):\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"NXI(%u):\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SQUE\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"[%u..\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%u..\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%u]\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"\0ASend queue inconsistency\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"first_out= %x \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"next_out= %x \00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"last_out= %x \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"SQSIZ(%u)\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c":RQUE[%u..%u]\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c":RQSIZ(%u)\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c":WU\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c":RR\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c":RU\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c":WW\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link*, %struct.print_buf*, i8*)* @link_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_print(%struct.link* %0, %struct.print_buf* %1, i8* %2) #0 {
  %4 = alloca %struct.link*, align 8
  %5 = alloca %struct.print_buf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.link* %0, %struct.link** %4, align 8
  store %struct.print_buf* %1, %struct.print_buf** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %9, i8* %10)
  %12 = load %struct.link*, %struct.link** %4, align 8
  %13 = call i64 @link_reset_reset(%struct.link* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load %struct.link*, %struct.link** %4, align 8
  %17 = call i64 @link_reset_unknown(%struct.link* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %3
  br label %202

20:                                               ; preds = %15
  %21 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %22 = load %struct.link*, %struct.link** %4, align 8
  %23 = getelementptr inbounds %struct.link, %struct.link* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.link*, %struct.link** %4, align 8
  %26 = getelementptr inbounds %struct.link, %struct.link* %25, i32 0, i32 9
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %30)
  %32 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %33 = load %struct.link*, %struct.link** %4, align 8
  %34 = getelementptr inbounds %struct.link, %struct.link* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @mod(i64 %35)
  %37 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %39 = load %struct.link*, %struct.link** %4, align 8
  %40 = getelementptr inbounds %struct.link, %struct.link* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @mod(i64 %41)
  %43 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %45 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.link*, %struct.link** %4, align 8
  %47 = getelementptr inbounds %struct.link, %struct.link* %46, i32 0, i32 6
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %127

50:                                               ; preds = %20
  %51 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %52 = load %struct.link*, %struct.link** %4, align 8
  %53 = getelementptr inbounds %struct.link, %struct.link* %52, i32 0, i32 6
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call i32 @buf_msg(%struct.TYPE_6__* %54)
  %56 = call i64 @msg_seqno(i32 %55)
  %57 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %56)
  %58 = load %struct.link*, %struct.link** %4, align 8
  %59 = getelementptr inbounds %struct.link, %struct.link* %58, i32 0, i32 5
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = icmp ne %struct.TYPE_6__* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %50
  %63 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %64 = load %struct.link*, %struct.link** %4, align 8
  %65 = getelementptr inbounds %struct.link, %struct.link* %64, i32 0, i32 5
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = call i32 @buf_msg(%struct.TYPE_6__* %66)
  %68 = call i64 @msg_seqno(i32 %67)
  %69 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %62, %50
  %71 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %72 = load %struct.link*, %struct.link** %4, align 8
  %73 = getelementptr inbounds %struct.link, %struct.link* %72, i32 0, i32 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = call i32 @buf_msg(%struct.TYPE_6__* %74)
  %76 = call i64 @msg_seqno(i32 %75)
  %77 = load %struct.link*, %struct.link** %4, align 8
  %78 = getelementptr inbounds %struct.link, %struct.link* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 %76, i32 %79)
  %81 = load %struct.link*, %struct.link** %4, align 8
  %82 = getelementptr inbounds %struct.link, %struct.link* %81, i32 0, i32 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = call i32 @buf_msg(%struct.TYPE_6__* %83)
  %85 = call i64 @msg_seqno(i32 %84)
  %86 = load %struct.link*, %struct.link** %4, align 8
  %87 = getelementptr inbounds %struct.link, %struct.link* %86, i32 0, i32 6
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = call i32 @buf_msg(%struct.TYPE_6__* %88)
  %90 = call i64 @msg_seqno(i32 %89)
  %91 = sub nsw i64 %85, %90
  %92 = call i64 @mod(i64 %91)
  %93 = load %struct.link*, %struct.link** %4, align 8
  %94 = getelementptr inbounds %struct.link, %struct.link* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = icmp ne i64 %92, %97
  br i1 %98, label %106, label %99

99:                                               ; preds = %70
  %100 = load %struct.link*, %struct.link** %4, align 8
  %101 = getelementptr inbounds %struct.link, %struct.link* %100, i32 0, i32 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %126

106:                                              ; preds = %99, %70
  %107 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %108 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %109 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %110 = load %struct.link*, %struct.link** %4, align 8
  %111 = getelementptr inbounds %struct.link, %struct.link* %110, i32 0, i32 6
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_6__* %112)
  %114 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %115 = load %struct.link*, %struct.link** %4, align 8
  %116 = getelementptr inbounds %struct.link, %struct.link* %115, i32 0, i32 5
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_6__* %117)
  %119 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %120 = load %struct.link*, %struct.link** %4, align 8
  %121 = getelementptr inbounds %struct.link, %struct.link* %120, i32 0, i32 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_6__* %122)
  %124 = load %struct.link*, %struct.link** %4, align 8
  %125 = call i32 @link_dump_send_queue(%struct.link* %124)
  br label %126

126:                                              ; preds = %106, %99
  br label %130

127:                                              ; preds = %20
  %128 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %129 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %126
  %131 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %132 = load %struct.link*, %struct.link** %4, align 8
  %133 = getelementptr inbounds %struct.link, %struct.link* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %134)
  %136 = load %struct.link*, %struct.link** %4, align 8
  %137 = getelementptr inbounds %struct.link, %struct.link* %136, i32 0, i32 3
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = icmp ne %struct.TYPE_6__* %138, null
  br i1 %139, label %140, label %171

140:                                              ; preds = %130
  %141 = load %struct.link*, %struct.link** %4, align 8
  %142 = getelementptr inbounds %struct.link, %struct.link* %141, i32 0, i32 3
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = call i32 @buf_msg(%struct.TYPE_6__* %143)
  %145 = call i64 @msg_seqno(i32 %144)
  store i64 %145, i64* %7, align 8
  %146 = load %struct.link*, %struct.link** %4, align 8
  %147 = getelementptr inbounds %struct.link, %struct.link* %146, i32 0, i32 2
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = call i32 @buf_msg(%struct.TYPE_6__* %148)
  %150 = call i64 @msg_seqno(i32 %149)
  store i64 %150, i64* %8, align 8
  %151 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %152 = load i64, i64* %7, align 8
  %153 = load i64, i64* %8, align 8
  %154 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i64 %152, i64 %153)
  %155 = load %struct.link*, %struct.link** %4, align 8
  %156 = getelementptr inbounds %struct.link, %struct.link* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %8, align 8
  %159 = add nsw i64 %158, 1
  %160 = load i64, i64* %7, align 8
  %161 = sub nsw i64 %159, %160
  %162 = call i64 @mod(i64 %161)
  %163 = icmp ne i64 %157, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %140
  %165 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %166 = load %struct.link*, %struct.link** %4, align 8
  %167 = getelementptr inbounds %struct.link, %struct.link* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 %168)
  br label %170

170:                                              ; preds = %164, %140
  br label %171

171:                                              ; preds = %170, %130
  %172 = load %struct.link*, %struct.link** %4, align 8
  %173 = call i64 @link_working_unknown(%struct.link* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %177 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %171
  %179 = load %struct.link*, %struct.link** %4, align 8
  %180 = call i64 @link_reset_reset(%struct.link* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %184 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %178
  %186 = load %struct.link*, %struct.link** %4, align 8
  %187 = call i64 @link_reset_unknown(%struct.link* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %191 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %185
  %193 = load %struct.link*, %struct.link** %4, align 8
  %194 = call i64 @link_working_working(%struct.link* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %198 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %197, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %199

199:                                              ; preds = %196, %192
  %200 = load %struct.print_buf*, %struct.print_buf** %5, align 8
  %201 = call i32 (%struct.print_buf*, i8*, ...) @tipc_printf(%struct.print_buf* %200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %202

202:                                              ; preds = %199, %19
  ret void
}

declare dso_local i32 @tipc_printf(%struct.print_buf*, i8*, ...) #1

declare dso_local i64 @link_reset_reset(%struct.link*) #1

declare dso_local i64 @link_reset_unknown(%struct.link*) #1

declare dso_local i64 @mod(i64) #1

declare dso_local i64 @msg_seqno(i32) #1

declare dso_local i32 @buf_msg(%struct.TYPE_6__*) #1

declare dso_local i32 @link_dump_send_queue(%struct.link*) #1

declare dso_local i64 @link_working_unknown(%struct.link*) #1

declare dso_local i64 @link_working_working(%struct.link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

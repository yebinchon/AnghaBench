; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_recv_changeover_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_recv_changeover_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i64, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.link** }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"NOLINK/<REC<\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Unexpected changeover message on link <%s>\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%c<-%c:\00", align 1
@DUPLICATE_MSG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"DROP/<REC<\00", align 1
@INT_H_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Link changeover error, duplicate msg dropped\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"TNL<REC<\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"UP/FIRST/<REC<\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Resetting link <%s>, changeover initiated by peer\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Expecting %u tunnelled messages\0A\00", align 1
@START_CHANGEOVER = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"BLK/FIRST/<REC<\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Link switchover error, got too many tunnelled messages\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"OVERDUE/DROP/<REC<\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"LINK:\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"DROP/DUPL/<REC<\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Link changeover error, original msg dropped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link**, %struct.sk_buff**)* @link_recv_changeover_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_recv_changeover_msg(%struct.link** %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.link**, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.link*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.link** %0, %struct.link*** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %12 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %14)
  store %struct.tipc_msg* %15, %struct.tipc_msg** %9, align 8
  %16 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %17 = call i64 @msg_type(%struct.tipc_msg* %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %19 = call i64 @msg_msgcnt(%struct.tipc_msg* %18)
  store i64 %19, i64* %11, align 8
  %20 = load %struct.link**, %struct.link*** %4, align 8
  %21 = load %struct.link*, %struct.link** %20, align 8
  %22 = getelementptr inbounds %struct.link, %struct.link* %21, i32 0, i32 5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.link**, %struct.link*** %24, align 8
  %26 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %27 = call i64 @msg_bearer_id(%struct.tipc_msg* %26)
  %28 = getelementptr inbounds %struct.link*, %struct.link** %25, i64 %27
  %29 = load %struct.link*, %struct.link** %28, align 8
  store %struct.link* %29, %struct.link** %7, align 8
  %30 = load %struct.link*, %struct.link** %7, align 8
  %31 = icmp ne %struct.link* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %34 = call i32 @msg_dbg(%struct.tipc_msg* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %178

35:                                               ; preds = %2
  %36 = load %struct.link*, %struct.link** %7, align 8
  %37 = load %struct.link**, %struct.link*** %4, align 8
  %38 = load %struct.link*, %struct.link** %37, align 8
  %39 = icmp eq %struct.link* %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.link**, %struct.link*** %4, align 8
  %42 = load %struct.link*, %struct.link** %41, align 8
  %43 = getelementptr inbounds %struct.link, %struct.link* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %178

46:                                               ; preds = %35
  %47 = load %struct.link*, %struct.link** %7, align 8
  %48 = getelementptr inbounds %struct.link, %struct.link* %47, i32 0, i32 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.link**, %struct.link*** %4, align 8
  %54 = load %struct.link*, %struct.link** %53, align 8
  %55 = getelementptr inbounds %struct.link, %struct.link* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %52, i32 %58)
  %60 = load %struct.link*, %struct.link** %7, align 8
  %61 = load %struct.link**, %struct.link*** %4, align 8
  store %struct.link* %60, %struct.link** %61, align 8
  %62 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %63 = call %struct.tipc_msg* @msg_get_wrapped(%struct.tipc_msg* %62)
  store %struct.tipc_msg* %63, %struct.tipc_msg** %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @DUPLICATE_MSG, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %46
  %68 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %69 = call i32 @msg_seqno(%struct.tipc_msg* %68)
  %70 = load %struct.link*, %struct.link** %7, align 8
  %71 = getelementptr inbounds %struct.link, %struct.link* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @mod(i32 %72)
  %74 = call i64 @less(i32 %69, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %78 = call i32 @msg_dbg(%struct.tipc_msg* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %178

79:                                               ; preds = %67
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load i32, i32* @INT_H_SIZE, align 4
  %82 = call %struct.sk_buff* @buf_extract(%struct.sk_buff* %80, i32 %81)
  %83 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %82, %struct.sk_buff** %83, align 8
  %84 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %84, align 8
  %86 = icmp eq %struct.sk_buff* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = call i32 @warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %178

89:                                               ; preds = %79
  %90 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %91 = call i32 @msg_dbg(%struct.tipc_msg* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = call i32 @buf_discard(%struct.sk_buff* %92)
  store i32 1, i32* %3, align 4
  br label %182

94:                                               ; preds = %46
  %95 = load %struct.link*, %struct.link** %7, align 8
  %96 = call i64 @tipc_link_is_up(%struct.link* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %100 = call i32 @msg_dbg(%struct.tipc_msg* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %101 = load %struct.link*, %struct.link** %7, align 8
  %102 = getelementptr inbounds %struct.link, %struct.link* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  %105 = load %struct.link*, %struct.link** %7, align 8
  %106 = call i32 @tipc_link_reset(%struct.link* %105)
  %107 = load i64, i64* %11, align 8
  %108 = load %struct.link*, %struct.link** %7, align 8
  %109 = getelementptr inbounds %struct.link, %struct.link* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %11, align 8
  %111 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %110)
  %112 = load i64, i64* %11, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %98
  br label %178

115:                                              ; preds = %98
  br label %135

116:                                              ; preds = %94
  %117 = load %struct.link*, %struct.link** %7, align 8
  %118 = getelementptr inbounds %struct.link, %struct.link* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @START_CHANGEOVER, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %116
  %123 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %124 = call i32 @msg_dbg(%struct.tipc_msg* %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.link*, %struct.link** %7, align 8
  %127 = getelementptr inbounds %struct.link, %struct.link* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %11, align 8
  %129 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %128)
  %130 = load i64, i64* %11, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %122
  br label %178

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133, %116
  br label %135

135:                                              ; preds = %134, %115
  %136 = load %struct.link*, %struct.link** %7, align 8
  %137 = getelementptr inbounds %struct.link, %struct.link* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = call i32 @warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  %142 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %143 = call i32 @msg_dbg(%struct.tipc_msg* %142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %144 = load %struct.link*, %struct.link** %7, align 8
  %145 = call i32 @dbg_print_link(%struct.link* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %178

146:                                              ; preds = %135
  %147 = load %struct.link*, %struct.link** %7, align 8
  %148 = getelementptr inbounds %struct.link, %struct.link* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, -1
  store i64 %150, i64* %148, align 8
  %151 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %152 = call i32 @msg_seqno(%struct.tipc_msg* %151)
  %153 = load %struct.link*, %struct.link** %7, align 8
  %154 = getelementptr inbounds %struct.link, %struct.link* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @less(i32 %152, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %146
  %159 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %160 = call i32 @msg_dbg(%struct.tipc_msg* %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %178

161:                                              ; preds = %146
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = load i32, i32* @INT_H_SIZE, align 4
  %164 = call %struct.sk_buff* @buf_extract(%struct.sk_buff* %162, i32 %163)
  %165 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %164, %struct.sk_buff** %165, align 8
  %166 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %166, align 8
  %168 = icmp ne %struct.sk_buff* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %161
  %170 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %171 = call i32 @msg_dbg(%struct.tipc_msg* %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %172 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %173 = call i32 @buf_discard(%struct.sk_buff* %172)
  store i32 1, i32* %3, align 4
  br label %182

174:                                              ; preds = %161
  %175 = call i32 @warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177, %158, %140, %132, %114, %87, %76, %40, %32
  %179 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %179, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %181 = call i32 @buf_discard(%struct.sk_buff* %180)
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %178, %169, %89
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_type(%struct.tipc_msg*) #1

declare dso_local i64 @msg_msgcnt(%struct.tipc_msg*) #1

declare dso_local i64 @msg_bearer_id(%struct.tipc_msg*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @dbg(i8*, i64, ...) #1

declare dso_local %struct.tipc_msg* @msg_get_wrapped(%struct.tipc_msg*) #1

declare dso_local i64 @less(i32, i32) #1

declare dso_local i32 @msg_seqno(%struct.tipc_msg*) #1

declare dso_local i32 @mod(i32) #1

declare dso_local %struct.sk_buff* @buf_extract(%struct.sk_buff*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i64 @tipc_link_is_up(%struct.link*) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @tipc_link_reset(%struct.link*) #1

declare dso_local i32 @dbg_print_link(%struct.link*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

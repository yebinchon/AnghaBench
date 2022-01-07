; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-connevent.c_rxrpc_process_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-connevent.c_rxrpc_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i64, i32, i32, i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { {}*, {}*, i32 (%struct.rxrpc_connection*)*, i32 (%struct.rxrpc_connection*)* }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@RXRPC_CONN_REMOTELY_ABORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c" = -ECONNABORTED [%u]\00", align 1
@ECONNABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"{%d},{%u,%%%u},\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Rx ABORT %%%u { ac=%d }\00", align 1
@RXRPC_CALL_REMOTELY_ABORTED = common dso_local global i32 0, align 4
@RXRPC_CONN_SERVER_CHALLENGING = common dso_local global i64 0, align 8
@RXRPC_CONN_SERVER = common dso_local global i64 0, align 8
@RXRPC_MAXCALLS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c" = -EPROTO [%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)* @rxrpc_process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_process_event(%struct.rxrpc_connection* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_connection*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rxrpc_skb_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %13)
  store %struct.rxrpc_skb_priv* %14, %struct.rxrpc_skb_priv** %8, align 8
  %15 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %16 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RXRPC_CONN_REMOTELY_ABORTED, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %22 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @kleave(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @ECONNABORTED, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %177

27:                                               ; preds = %3
  %28 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %29 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ntohl(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %34 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %37 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @_enter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %39, i32 %40)
  %42 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %43 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %169 [
    i32 130, label %46
    i32 129, label %68
    i32 128, label %87
  ]

46:                                               ; preds = %27
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i32 @skb_copy_bits(%struct.sk_buff* %47, i32 0, i32* %9, i32 4)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EPROTO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %177

53:                                               ; preds = %46
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ntohl(i32 %55)
  %57 = call i32 @_proto(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %56)
  %58 = load i64, i64* @RXRPC_CONN_REMOTELY_ABORTED, align 8
  %59 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %60 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %62 = load i32, i32* @RXRPC_CALL_REMOTELY_ABORTED, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @ntohl(i32 %63)
  %65 = call i32 @rxrpc_abort_calls(%struct.rxrpc_connection* %61, i32 %62, i32 %64)
  %66 = load i32, i32* @ECONNABORTED, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %177

68:                                               ; preds = %27
  %69 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %70 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %69, i32 0, i32 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = icmp ne %struct.TYPE_3__* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %75 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %74, i32 0, i32 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = bitcast {}** %77 to i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)**
  %79 = load i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)*, i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)** %78, align 8
  %80 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 %79(%struct.rxrpc_connection* %80, %struct.sk_buff* %81, i32* %82)
  store i32 %83, i32* %4, align 4
  br label %177

84:                                               ; preds = %68
  %85 = load i32, i32* @EPROTO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %177

87:                                               ; preds = %27
  %88 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %89 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %88, i32 0, i32 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = icmp ne %struct.TYPE_3__* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @EPROTO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %177

95:                                               ; preds = %87
  %96 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %97 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %96, i32 0, i32 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = bitcast {}** %99 to i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)**
  %101 = load i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)*, i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i32*)** %100, align 8
  %102 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 %101(%struct.rxrpc_connection* %102, %struct.sk_buff* %103, i32* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %95
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %4, align 4
  br label %177

110:                                              ; preds = %95
  %111 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %112 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %111, i32 0, i32 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32 (%struct.rxrpc_connection*)*, i32 (%struct.rxrpc_connection*)** %114, align 8
  %116 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %117 = call i32 %115(%struct.rxrpc_connection* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %4, align 4
  br label %177

122:                                              ; preds = %110
  %123 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %124 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %123, i32 0, i32 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32 (%struct.rxrpc_connection*)*, i32 (%struct.rxrpc_connection*)** %126, align 8
  %128 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %129 = call i32 %127(%struct.rxrpc_connection* %128)
  %130 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %131 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %130, i32 0, i32 1
  %132 = call i32 @read_lock_bh(i32* %131)
  %133 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %134 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %133, i32 0, i32 2
  %135 = call i32 @spin_lock(i32* %134)
  %136 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %137 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @RXRPC_CONN_SERVER_CHALLENGING, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %162

141:                                              ; preds = %122
  %142 = load i64, i64* @RXRPC_CONN_SERVER, align 8
  %143 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %144 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %158, %141
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @RXRPC_MAXCALLS, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %151 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @rxrpc_call_is_secure(i32 %156)
  br label %158

158:                                              ; preds = %149
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %145

161:                                              ; preds = %145
  br label %162

162:                                              ; preds = %161, %122
  %163 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %164 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %163, i32 0, i32 2
  %165 = call i32 @spin_unlock(i32* %164)
  %166 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %167 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %166, i32 0, i32 1
  %168 = call i32 @read_unlock_bh(i32* %167)
  store i32 0, i32* %4, align 4
  br label %177

169:                                              ; preds = %27
  %170 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %8, align 8
  %171 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @EPROTO, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %169, %162, %120, %108, %92, %84, %73, %53, %50, %20
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @kleave(i8*, i64) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @_proto(i8*, i32, i32) #1

declare dso_local i32 @rxrpc_abort_calls(%struct.rxrpc_connection*, i32, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rxrpc_call_is_secure(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

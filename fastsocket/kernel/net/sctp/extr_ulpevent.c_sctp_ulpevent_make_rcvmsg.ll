; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.sctp_association = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.sctp_chunk = type { i64, %struct.TYPE_14__*, %struct.TYPE_13__, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.sk_buff = type { i64, i32 }

@SOCK_RCVBUF_LOCK = common dso_local global i32 0, align 4
@SCTP_DATA_UNORDERED = common dso_local global i32 0, align 4
@SCTP_UNORDERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_rcvmsg(%struct.sctp_association* %0, %struct.sctp_chunk* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_ulpevent*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_ulpevent*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %8, align 8
  %13 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %14 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %13, i32 0, i32 3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 2
  %22 = call i32 @atomic_read(i32* %21)
  store i32 %22, i32* %12, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  %29 = call i32 @atomic_read(i32* %28)
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %23, %19
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %33 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %31, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %30
  %40 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %41 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SOCK_RCVBUF_LOCK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %39
  %50 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %51 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %55 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %54, i32 0, i32 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sk_rmem_schedule(%struct.TYPE_16__* %53, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49, %39
  br label %198

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %30
  %64 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %65 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %64, i32 0, i32 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call %struct.sk_buff* @skb_clone(%struct.TYPE_15__* %66, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %9, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %198

72:                                               ; preds = %63
  %73 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %74 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %77 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ntohl(i32 %81)
  %83 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %84 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @sctp_tsnmap_mark(i32* %75, i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %72
  br label %195

89:                                               ; preds = %72
  %90 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %91 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @ntohs(i32 %94)
  %96 = ptrtoint i8* %95 to i64
  store i64 %96, i64* %11, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i64 @WORD_ROUND(i64 %97)
  %99 = load i64, i64* %11, align 8
  %100 = sub i64 %98, %99
  store i64 %100, i64* %10, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %102 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %103 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = sub i64 %104, %105
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub i64 %106, %109
  %111 = call i32 @skb_trim(%struct.sk_buff* %101, i64 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %113 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %112)
  store %struct.sctp_ulpevent* %113, %struct.sctp_ulpevent** %8, align 8
  %114 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = add i64 %118, 16
  %120 = trunc i64 %119 to i32
  %121 = call i32 @sctp_ulpevent_init(%struct.sctp_ulpevent* %114, i32 0, i32 %120)
  %122 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %123 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %124 = call i32 @sctp_ulpevent_receive_data(%struct.sctp_ulpevent* %122, %struct.sctp_association* %123)
  %125 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %126 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @ntohs(i32 %130)
  %132 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %133 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %132, i32 0, i32 7
  store i8* %131, i8** %133, align 8
  %134 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %135 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @ntohs(i32 %139)
  %141 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %142 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %141, i32 0, i32 6
  store i8* %140, i8** %142, align 8
  %143 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %144 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %150 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 4
  %151 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %152 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %151, i32 0, i32 1
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @SCTP_DATA_UNORDERED, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %89
  %160 = load i32, i32* @SCTP_UNORDERED, align 4
  %161 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %162 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %166 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = call i32 @sctp_tsnmap_get_ctsn(i32* %167)
  %169 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %170 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %159, %89
  %172 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %173 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @ntohl(i32 %177)
  %179 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %180 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %182 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %181, i32 0, i32 1
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %187 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %191 = call i32 @sctp_chunk_iif(%struct.sctp_chunk* %190)
  %192 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %193 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  store %struct.sctp_ulpevent* %194, %struct.sctp_ulpevent** %4, align 8
  br label %199

195:                                              ; preds = %88
  %196 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %197 = call i32 @kfree_skb(%struct.sk_buff* %196)
  br label %198

198:                                              ; preds = %195, %71, %61
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %4, align 8
  br label %199

199:                                              ; preds = %198, %171
  %200 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  ret %struct.sctp_ulpevent* %200
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @sk_rmem_schedule(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @sctp_tsnmap_mark(i32*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i64 @WORD_ROUND(i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @sctp_ulpevent_init(%struct.sctp_ulpevent*, i32, i32) #1

declare dso_local i32 @sctp_ulpevent_receive_data(%struct.sctp_ulpevent*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_tsnmap_get_ctsn(i32*) #1

declare dso_local i32 @sctp_chunk_iif(%struct.sctp_chunk*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

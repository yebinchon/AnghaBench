; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_conn_v0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_conn_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.ip_vs_conn = type { i64, i32, i32, %struct.ip_vs_conn*, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ip_vs_sync_mesg_v0 = type { i32, i32 }
%struct.ip_vs_sync_conn_v0 = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.ip_vs_sync_conn_options = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@IP_VS_CONN_F_ONE_PACKET = common dso_local global i32 0, align 4
@curr_sb_lock = common dso_local global i32 0, align 4
@curr_sb = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"ip_vs_sync_buff_create failed.\0A\00", align 1
@IP_VS_CONN_F_SEQ_MASK = common dso_local global i32 0, align 4
@FULL_CONN_SIZE = common dso_local global i32 0, align 4
@SIMPLE_CONN_SIZE = common dso_local global i32 0, align 4
@IP_VS_CONN_F_HASHED = common dso_local global i32 0, align 4
@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_sync_conn_v0(%struct.ip_vs_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_vs_sync_mesg_v0*, align 8
  %6 = alloca %struct.ip_vs_sync_conn_v0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_vs_sync_conn_options*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %10 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AF_INET, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %188

18:                                               ; preds = %2
  %19 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %20 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IP_VS_CONN_F_ONE_PACKET, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %188

26:                                               ; preds = %18
  %27 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ip_vs_sync_conn_needed(%struct.ip_vs_conn* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %188

32:                                               ; preds = %26
  %33 = call i32 @spin_lock(i32* @curr_sb_lock)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curr_sb, align 8
  %35 = icmp ne %struct.TYPE_10__* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = call %struct.TYPE_10__* (...) @ip_vs_sync_buff_create_v0()
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** @curr_sb, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = call i32 @spin_unlock(i32* @curr_sb_lock)
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %188

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %32
  %44 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %45 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IP_VS_CONN_F_SEQ_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @FULL_CONN_SIZE, align 4
  br label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @SIMPLE_CONN_SIZE, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %7, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curr_sb, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.ip_vs_sync_mesg_v0*
  store %struct.ip_vs_sync_mesg_v0* %59, %struct.ip_vs_sync_mesg_v0** %5, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curr_sb, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.ip_vs_sync_conn_v0*
  store %struct.ip_vs_sync_conn_v0* %63, %struct.ip_vs_sync_conn_v0** %6, align 8
  %64 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %65 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %64, i32 0, i32 9
  store i64 0, i64* %65, align 8
  %66 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %67 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %66, i32 0, i32 12
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %70 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %72 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %75 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %77 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %80 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %82 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %85 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %87 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %91 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %93 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %97 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %99 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %103 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %105 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IP_VS_CONN_F_HASHED, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = call i8* @htons(i32 %109)
  %111 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %112 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %114 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @htons(i32 %115)
  %117 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %118 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %120 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @IP_VS_CONN_F_SEQ_MASK, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %54
  %126 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %127 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %126, i64 1
  %128 = bitcast %struct.ip_vs_sync_conn_v0* %127 to %struct.ip_vs_sync_conn_options*
  store %struct.ip_vs_sync_conn_options* %128, %struct.ip_vs_sync_conn_options** %8, align 8
  %129 = load %struct.ip_vs_sync_conn_options*, %struct.ip_vs_sync_conn_options** %8, align 8
  %130 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %131 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %130, i32 0, i32 5
  %132 = call i32 @memcpy(%struct.ip_vs_sync_conn_options* %129, i32* %131, i32 4)
  br label %133

133:                                              ; preds = %125, %54
  %134 = load %struct.ip_vs_sync_mesg_v0*, %struct.ip_vs_sync_mesg_v0** %5, align 8
  %135 = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, %struct.ip_vs_sync_mesg_v0* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.ip_vs_sync_mesg_v0*, %struct.ip_vs_sync_mesg_v0** %5, align 8
  %140 = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, %struct.ip_vs_sync_mesg_v0* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curr_sb, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, %144
  store i64 %148, i64* %146, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curr_sb, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @FULL_CONN_SIZE, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %151, %153
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curr_sb, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %154, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %133
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curr_sb, align 8
  %161 = call i32 @sb_queue_tail(%struct.TYPE_10__* %160)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @curr_sb, align 8
  br label %162

162:                                              ; preds = %159, %133
  %163 = call i32 @spin_unlock(i32* @curr_sb_lock)
  %164 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %165 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %164, i32 0, i32 3
  %166 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %165, align 8
  store %struct.ip_vs_conn* %166, %struct.ip_vs_conn** %3, align 8
  %167 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %168 = icmp ne %struct.ip_vs_conn* %167, null
  br i1 %168, label %169, label %188

169:                                              ; preds = %162
  %170 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %171 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %178 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %177, i32 0, i32 4
  %179 = call i32 @atomic_add_return(i32 1, i32* %178)
  store i32 %179, i32* %4, align 4
  br label %182

180:                                              ; preds = %169
  %181 = call i32 (...) @sysctl_sync_threshold()
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %180, %176
  %183 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %184 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %183, i32 0, i32 3
  %185 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %184, align 8
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @ip_vs_sync_conn(%struct.ip_vs_conn* %185, i32 %186)
  br label %188

188:                                              ; preds = %17, %25, %31, %39, %182, %162
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_vs_sync_conn_needed(%struct.ip_vs_conn*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_10__* @ip_vs_sync_buff_create_v0(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @memcpy(%struct.ip_vs_sync_conn_options*, i32*, i32) #1

declare dso_local i32 @sb_queue_tail(%struct.TYPE_10__*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @sysctl_sync_threshold(...) #1

declare dso_local i32 @ip_vs_sync_conn(%struct.ip_vs_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

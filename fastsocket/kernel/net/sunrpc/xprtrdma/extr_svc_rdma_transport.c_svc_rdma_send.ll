; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_svc_rdma_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i64, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ib_send_wr = type { i64, %struct.ib_send_wr* }

@XPT_CLOSE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i64 0, align 8
@rdma_stat_sq_starve = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"svcrdma: failed to post SQ WR rc=%d, sc_sq_count=%d, sc_sq_depth=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rdma_send(%struct.svcxprt_rdma* %0, %struct.ib_send_wr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svcxprt_rdma*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_send_wr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %4, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %5, align 8
  %11 = load i32, i32* @XPT_CLOSE, align 4
  %12 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %13 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOTCONN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %152

20:                                               ; preds = %2
  %21 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %22 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_SEND_SIGNALED, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  store i32 1, i32* %8, align 4
  %28 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %29 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %28, i32 0, i32 1
  %30 = load %struct.ib_send_wr*, %struct.ib_send_wr** %29, align 8
  store %struct.ib_send_wr* %30, %struct.ib_send_wr** %7, align 8
  br label %31

31:                                               ; preds = %37, %20
  %32 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %33 = icmp ne %struct.ib_send_wr* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34
  %38 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %39 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %38, i32 0, i32 1
  %40 = load %struct.ib_send_wr*, %struct.ib_send_wr** %39, align 8
  store %struct.ib_send_wr* %40, %struct.ib_send_wr** %7, align 8
  br label %31

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %84
  %43 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %44 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %43, i32 0, i32 2
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %47 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %50 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %49, i32 0, i32 3
  %51 = call i64 @atomic_read(i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = icmp slt i64 %48, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %42
  %57 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %58 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %57, i32 0, i32 2
  %59 = call i32 @spin_unlock_bh(i32* %58)
  %60 = call i32 @atomic_inc(i32* @rdma_stat_sq_starve)
  %61 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %62 = call i32 @sq_cq_reap(%struct.svcxprt_rdma* %61)
  %63 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %64 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %67 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %66, i32 0, i32 3
  %68 = call i64 @atomic_read(i32* %67)
  %69 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %70 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @wait_event(i32 %65, i32 %73)
  %75 = load i32, i32* @XPT_CLOSE, align 4
  %76 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %77 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = call i64 @test_bit(i32 %75, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %56
  %82 = load i32, i32* @ENOTCONN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %152

84:                                               ; preds = %56
  br label %42

85:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %94, %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %92 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %91, i32 0, i32 4
  %93 = call i32 @svc_xprt_get(%struct.TYPE_3__* %92)
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %86

97:                                               ; preds = %86
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %100 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %99, i32 0, i32 3
  %101 = call i32 @atomic_add(i32 %98, i32* %100)
  %102 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %103 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %106 = call i32 @ib_post_send(i32 %104, %struct.ib_send_wr* %105, %struct.ib_send_wr** %6)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %97
  %110 = load i32, i32* @XPT_CLOSE, align 4
  %111 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %112 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = call i32 @set_bit(i32 %110, i32* %113)
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %117 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %116, i32 0, i32 3
  %118 = call i32 @atomic_sub(i32 %115, i32* %117)
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %127, %109
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %125 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %124, i32 0, i32 4
  %126 = call i32 @svc_xprt_put(%struct.TYPE_3__* %125)
  br label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %119

130:                                              ; preds = %119
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %133 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %132, i32 0, i32 3
  %134 = call i64 @atomic_read(i32* %133)
  %135 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %136 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @dprintk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %131, i64 %134, i64 %137)
  br label %139

139:                                              ; preds = %130, %97
  %140 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %141 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %140, i32 0, i32 2
  %142 = call i32 @spin_unlock_bh(i32* %141)
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %147 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %146, i32 0, i32 1
  %148 = call i32 @wake_up(i32* %147)
  br label %149

149:                                              ; preds = %145, %139
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %81, %17
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @sq_cq_reap(%struct.svcxprt_rdma*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @svc_xprt_get(%struct.TYPE_3__*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @svc_xprt_put(%struct.TYPE_3__*) #1

declare dso_local i32 @dprintk(i8*, i32, i64, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_send.c_rds_iw_build_send_fastreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_send.c_rds_iw_build_send_fastreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_device = type { i32 }
%struct.rds_iw_connection = type { i32 }
%struct.rds_iw_send_work = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@IB_WR_FAST_REG_MR = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_iw_device*, %struct.rds_iw_connection*, %struct.rds_iw_send_work*, i32, i32, i32)* @rds_iw_build_send_fastreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_iw_build_send_fastreg(%struct.rds_iw_device* %0, %struct.rds_iw_connection* %1, %struct.rds_iw_send_work* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rds_iw_device*, align 8
  %8 = alloca %struct.rds_iw_connection*, align 8
  %9 = alloca %struct.rds_iw_send_work*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rds_iw_device* %0, %struct.rds_iw_device** %7, align 8
  store %struct.rds_iw_connection* %1, %struct.rds_iw_connection** %8, align 8
  store %struct.rds_iw_send_work* %2, %struct.rds_iw_send_work** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %9, align 8
  %15 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %13, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* @IB_WR_FAST_REG_MR, align 4
  %23 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %9, align 8
  %24 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %9, align 8
  %28 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 8
  %32 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %9, align 8
  %33 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %9, align 8
  %38 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 6
  store i32 %36, i32* %41, align 8
  %42 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %9, align 8
  %43 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %9, align 8
  %46 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 5
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %9, align 8
  %52 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* @PAGE_SHIFT, align 4
  %57 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %9, align 8
  %58 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  store i32 %56, i32* %61, align 8
  %62 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %63 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %9, align 8
  %64 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store i32 %62, i32* %67, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %9, align 8
  %70 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i32 %68, i32* %73, align 8
  %74 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %9, align 8
  %75 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load %struct.rds_iw_send_work*, %struct.rds_iw_send_work** %9, align 8
  %78 = getelementptr inbounds %struct.rds_iw_send_work, %struct.rds_iw_send_work* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = call i32 @ib_update_fast_reg_key(%struct.TYPE_10__* %76, i32 %79)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ib_update_fast_reg_key(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

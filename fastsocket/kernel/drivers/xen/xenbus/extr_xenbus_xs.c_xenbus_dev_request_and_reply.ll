; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_xenbus_dev_request_and_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_xenbus_dev_request_and_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.xsd_sockmsg = type { i64, i64 }

@XS_TRANSACTION_START = common dso_local global i64 0, align 8
@xs_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@XS_ERROR = common dso_local global i64 0, align 8
@XS_TRANSACTION_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xenbus_dev_request_and_reply(%struct.xsd_sockmsg* %0) #0 {
  %2 = alloca %struct.xsd_sockmsg*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xsd_sockmsg, align 8
  %5 = alloca i32, align 4
  store %struct.xsd_sockmsg* %0, %struct.xsd_sockmsg** %2, align 8
  %6 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %2, align 8
  %7 = bitcast %struct.xsd_sockmsg* %4 to i8*
  %8 = bitcast %struct.xsd_sockmsg* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %4, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XS_TRANSACTION_START, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @down_read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 1))
  %17 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %2, align 8
  %18 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %2, align 8
  %19 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add i64 16, %20
  %22 = call i32 @xb_write(%struct.xsd_sockmsg* %17, i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load i64, i64* @XS_ERROR, align 8
  %27 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %2, align 8
  %28 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @ERR_PTR(i32 %29)
  store i8* %30, i8** %3, align 8
  br label %37

31:                                               ; preds = %15
  %32 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %2, align 8
  %33 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %32, i32 0, i32 0
  %34 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %2, align 8
  %35 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %34, i32 0, i32 1
  %36 = call i8* @read_reply(i64* %33, i64* %35)
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %31, %25
  %38 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 1))
  %39 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %2, align 8
  %40 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XS_TRANSACTION_END, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %55, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XS_TRANSACTION_START, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %2, align 8
  %51 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @XS_ERROR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %37
  %56 = call i32 @up_read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 0))
  br label %57

57:                                               ; preds = %55, %49, %44
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @down_read(i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @xb_write(%struct.xsd_sockmsg*, i64) #2

declare dso_local i8* @ERR_PTR(i32) #2

declare dso_local i8* @read_reply(i64*, i64*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @up_read(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

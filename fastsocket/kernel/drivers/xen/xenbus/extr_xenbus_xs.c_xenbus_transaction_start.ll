; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_xenbus_transaction_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_xenbus_transaction_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.xenbus_transaction = type { i32 }

@xs_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@XBT_NIL = common dso_local global i32 0, align 4
@XS_TRANSACTION_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xenbus_transaction*, align 8
  %4 = alloca i8*, align 8
  store %struct.xenbus_transaction* %0, %struct.xenbus_transaction** %3, align 8
  %5 = call i32 @down_read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 0))
  %6 = load i32, i32* @XBT_NIL, align 4
  %7 = load i32, i32* @XS_TRANSACTION_START, align 4
  %8 = call i8* @xs_single(i32 %6, i32 %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @IS_ERR(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 @up_read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 0))
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @PTR_ERR(i8* %14)
  store i32 %15, i32* %2, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @simple_strtoul(i8* %17, i32* null, i32 0)
  %19 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %3, align 8
  %20 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @kfree(i8* %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %16, %12
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i8* @xs_single(i32, i32, i8*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

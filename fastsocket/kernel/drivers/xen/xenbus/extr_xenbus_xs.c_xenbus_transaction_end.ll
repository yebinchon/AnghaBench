; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_xenbus_transaction_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_xenbus_transaction_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.xenbus_transaction = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@XS_TRANSACTION_END = common dso_local global i32 0, align 4
@xs_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_transaction_end(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.xenbus_transaction, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8], align 1
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %3, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %12 = call i32 @strcpy(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %15 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @XS_TRANSACTION_END, align 4
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %19 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @xs_single(i32 %20, i32 %17, i8* %18, i32* null)
  %22 = call i32 @xs_error(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = call i32 @up_read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 0))
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @xs_error(i32) #1

declare dso_local i32 @xs_single(i32, i32, i8*, i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

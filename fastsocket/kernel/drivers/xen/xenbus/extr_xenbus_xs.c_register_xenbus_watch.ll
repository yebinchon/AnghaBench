; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_register_xenbus_watch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_register_xenbus_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.xenbus_watch = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%lX\00", align 1
@xs_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@watches_lock = common dso_local global i32 0, align 4
@watches = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_xenbus_watch(%struct.xenbus_watch* %0) #0 {
  %2 = alloca %struct.xenbus_watch*, align 8
  %3 = alloca [17 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.xenbus_watch* %0, %struct.xenbus_watch** %2, align 8
  %5 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %6 = load %struct.xenbus_watch*, %struct.xenbus_watch** %2, align 8
  %7 = ptrtoint %struct.xenbus_watch* %6 to i64
  %8 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = call i32 @down_read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 0))
  %10 = call i32 @spin_lock(i32* @watches_lock)
  %11 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %12 = call i32 @find_watch(i8* %11)
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.xenbus_watch*, %struct.xenbus_watch** %2, align 8
  %15 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %14, i32 0, i32 0
  %16 = call i32 @list_add(i32* %15, i32* @watches)
  %17 = call i32 @spin_unlock(i32* @watches_lock)
  %18 = load %struct.xenbus_watch*, %struct.xenbus_watch** %2, align 8
  %19 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [17 x i8], [17 x i8]* %3, i64 0, i64 0
  %22 = call i32 @xs_watch(i32 %20, i8* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @EEXIST, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = call i32 @spin_lock(i32* @watches_lock)
  %32 = load %struct.xenbus_watch*, %struct.xenbus_watch** %2, align 8
  %33 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %32, i32 0, i32 0
  %34 = call i32 @list_del(i32* %33)
  %35 = call i32 @spin_unlock(i32* @watches_lock)
  br label %36

36:                                               ; preds = %30, %25, %1
  %37 = call i32 @up_read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 0))
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @find_watch(i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xs_watch(i32, i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_run_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_run_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_4__, %struct.TYPE_3__, {}*, %struct.kioctx* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kioctx = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"aio_run_iocb: iocb->ki_retry = NULL\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@EIOCBRETRY = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*)* @aio_run_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_run_iocb(%struct.kiocb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.kioctx*, align 8
  %5 = alloca i32 (%struct.kiocb*)*, align 8
  %6 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  %7 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %8 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %7, i32 0, i32 3
  %9 = load %struct.kioctx*, %struct.kioctx** %8, align 8
  store %struct.kioctx* %9, %struct.kioctx** %4, align 8
  %10 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %11 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %10, i32 0, i32 2
  %12 = bitcast {}** %11 to i32 (%struct.kiocb*)**
  %13 = load i32 (%struct.kiocb*)*, i32 (%struct.kiocb*)** %12, align 8
  store i32 (%struct.kiocb*)* %13, i32 (%struct.kiocb*)** %5, align 8
  %14 = icmp ne i32 (%struct.kiocb*)* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %87

17:                                               ; preds = %1
  %18 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %19 = call i32 @kiocbClearKicked(%struct.kiocb* %18)
  %20 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %21 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %24 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %27 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_irq(i32* %27)
  %29 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %30 = call i64 @kiocbIsCancelled(%struct.kiocb* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %17
  %33 = load i32, i32* @EINTR, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @aio_complete(%struct.kiocb* %35, i32 %36, i32 0)
  br label %64

38:                                               ; preds = %17
  %39 = load i32 (%struct.kiocb*)*, i32 (%struct.kiocb*)** %5, align 8
  %40 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %41 = call i32 %39(%struct.kiocb* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @EIOCBRETRY, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @EIOCBQUEUED, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %53 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @list_empty(i32* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @aio_complete(%struct.kiocb* %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %51, %46, %38
  br label %64

64:                                               ; preds = %63, %32
  %65 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %66 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %65, i32 0, i32 0
  %67 = call i32 @spin_lock_irq(i32* %66)
  %68 = load i32, i32* @EIOCBRETRY, align 4
  %69 = sub nsw i32 0, %68
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %74 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %73, i32 0, i32 0
  %75 = call i32 @INIT_LIST_HEAD(%struct.TYPE_4__* %74)
  %76 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %77 = call i64 @kiocbIsKicked(%struct.kiocb* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %81 = call i32 @__queue_kicked_iocb(%struct.kiocb* %80)
  %82 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %83 = call i32 @aio_queue_work(%struct.kioctx* %82)
  br label %84

84:                                               ; preds = %79, %72
  br label %85

85:                                               ; preds = %84, %64
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @kiocbClearKicked(%struct.kiocb*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @kiocbIsCancelled(%struct.kiocb*) #1

declare dso_local i32 @aio_complete(%struct.kiocb*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.TYPE_4__*) #1

declare dso_local i64 @kiocbIsKicked(%struct.kiocb*) #1

declare dso_local i32 @__queue_kicked_iocb(%struct.kiocb*) #1

declare dso_local i32 @aio_queue_work(%struct.kioctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

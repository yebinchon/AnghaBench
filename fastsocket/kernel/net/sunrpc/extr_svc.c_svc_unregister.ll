; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.svc_serv = type { %struct.svc_program* }
%struct.svc_program = type { i32, i32, i32, %struct.TYPE_4__**, %struct.svc_program* }
%struct.TYPE_4__ = type { i64 }

@TIF_SIGPENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"svc: attempting to unregister %sv%u\0A\00", align 1
@current = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_serv*)* @svc_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_unregister(%struct.svc_serv* %0) #0 {
  %2 = alloca %struct.svc_serv*, align 8
  %3 = alloca %struct.svc_program*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %2, align 8
  %6 = load i32, i32* @TIF_SIGPENDING, align 4
  %7 = call i32 @clear_thread_flag(i32 %6)
  %8 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %9 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %8, i32 0, i32 0
  %10 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  store %struct.svc_program* %10, %struct.svc_program** %3, align 8
  br label %11

11:                                               ; preds = %61, %1
  %12 = load %struct.svc_program*, %struct.svc_program** %3, align 8
  %13 = icmp ne %struct.svc_program* %12, null
  br i1 %13, label %14, label %65

14:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %57, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.svc_program*, %struct.svc_program** %3, align 8
  %18 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %15
  %22 = load %struct.svc_program*, %struct.svc_program** %3, align 8
  %23 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp eq %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %57

31:                                               ; preds = %21
  %32 = load %struct.svc_program*, %struct.svc_program** %3, align 8
  %33 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %57

43:                                               ; preds = %31
  %44 = load %struct.svc_program*, %struct.svc_program** %3, align 8
  %45 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.svc_program*, %struct.svc_program** %3, align 8
  %50 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.svc_program*, %struct.svc_program** %3, align 8
  %54 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @__svc_unregister(i32 %51, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %43, %42, %30
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %15

60:                                               ; preds = %15
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.svc_program*, %struct.svc_program** %3, align 8
  %63 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %62, i32 0, i32 4
  %64 = load %struct.svc_program*, %struct.svc_program** %63, align 8
  store %struct.svc_program* %64, %struct.svc_program** %3, align 8
  br label %11

65:                                               ; preds = %11
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = call i32 (...) @recalc_sigpending()
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  ret void
}

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @__svc_unregister(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @recalc_sigpending(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

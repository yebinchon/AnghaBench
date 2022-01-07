; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_recvrec_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_recvrec_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@BR_ERR_UNEXPECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_ssl_engine_recvrec_ack(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @recvrec_ack(%struct.TYPE_9__* %6, i64 %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = call i64 @br_ssl_engine_closed(%struct.TYPE_9__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = call i8* @recvpld_buf(%struct.TYPE_9__* %14, i64* %4)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %41 [
    i32 129, label %22
    i32 131, label %22
    i32 128, label %22
    i32 130, label %25
  ]

22:                                               ; preds = %18, %18, %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = call i32 @jump_handshake(%struct.TYPE_9__* %23, i32 0)
  br label %45

25:                                               ; preds = %18
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %45

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @recvpld_ack(%struct.TYPE_9__* %37, i64 %38)
  br label %45

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %18, %40
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = load i32, i32* @BR_ERR_UNEXPECTED, align 4
  %44 = call i32 @br_ssl_engine_fail(%struct.TYPE_9__* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %36, %30, %22
  br label %46

46:                                               ; preds = %12, %45, %13
  ret void
}

declare dso_local i32 @recvrec_ack(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @br_ssl_engine_closed(%struct.TYPE_9__*) #1

declare dso_local i8* @recvpld_buf(%struct.TYPE_9__*, i64*) #1

declare dso_local i32 @jump_handshake(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @recvpld_ack(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @br_ssl_engine_fail(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

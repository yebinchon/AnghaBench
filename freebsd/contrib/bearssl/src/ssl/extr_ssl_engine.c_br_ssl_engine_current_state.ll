; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_current_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_current_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BR_SSL_CLOSED = common dso_local global i32 0, align 4
@BR_SSL_SENDREC = common dso_local global i32 0, align 4
@BR_SSL_RECVREC = common dso_local global i32 0, align 4
@BR_SSL_SENDAPP = common dso_local global i32 0, align 4
@BR_SSL_RECVAPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_ssl_engine_current_state(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @br_ssl_engine_closed(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @BR_SSL_CLOSED, align 4
  store i32 %10, i32* %2, align 4
  br label %45

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @br_ssl_engine_sendrec_buf(i32* %12, i64* %5)
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @BR_SSL_SENDREC, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @br_ssl_engine_recvrec_buf(i32* %20, i64* %5)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @BR_SSL_RECVREC, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32*, i32** %3, align 8
  %29 = call i32* @br_ssl_engine_sendapp_buf(i32* %28, i64* %5)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @BR_SSL_SENDAPP, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32*, i32** %3, align 8
  %37 = call i32* @br_ssl_engine_recvapp_buf(i32* %36, i64* %5)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @BR_SSL_RECVAPP, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @br_ssl_engine_closed(i32*) #1

declare dso_local i32* @br_ssl_engine_sendrec_buf(i32*, i64*) #1

declare dso_local i32* @br_ssl_engine_recvrec_buf(i32*, i64*) #1

declare dso_local i32* @br_ssl_engine_sendapp_buf(i32*, i64*) #1

declare dso_local i32* @br_ssl_engine_recvapp_buf(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

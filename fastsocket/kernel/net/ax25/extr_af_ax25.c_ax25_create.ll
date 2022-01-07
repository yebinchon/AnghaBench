; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_af_ax25.c_ax25_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_af_ax25.c_ax25_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i32, i32* }
%struct.sock = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sock* }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@AX25_P_TEXT = common dso_local global i32 0, align 4
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ax25_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ax25_free_sock = common dso_local global i32 0, align 4
@ax25_proto_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @ax25_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net*, %struct.net** %6, align 8
  %13 = icmp ne %struct.net* %12, @init_net
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EAFNOSUPPORT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %78

17:                                               ; preds = %4
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %40 [
    i32 130, label %21
    i32 128, label %30
    i32 129, label %39
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 131
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @AX25_P_TEXT, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %24
  br label %43

30:                                               ; preds = %17
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %37 [
    i32 0, label %32
    i32 131, label %32
    i32 132, label %34
  ]

32:                                               ; preds = %30, %30
  %33 = load i32, i32* @AX25_P_TEXT, align 4
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %78

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %32
  br label %43

39:                                               ; preds = %17
  br label %43

40:                                               ; preds = %17
  %41 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %78

43:                                               ; preds = %39, %38, %29
  %44 = load %struct.net*, %struct.net** %6, align 8
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call %struct.sock* @sk_alloc(%struct.net* %44, i32 131, i32 %45, i32* @ax25_proto)
  store %struct.sock* %46, %struct.sock** %10, align 8
  %47 = load %struct.sock*, %struct.sock** %10, align 8
  %48 = icmp eq %struct.sock* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %78

52:                                               ; preds = %43
  %53 = call %struct.TYPE_3__* (...) @ax25_create_cb()
  %54 = load %struct.sock*, %struct.sock** %10, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 2
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %55, align 8
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %11, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %57 = icmp ne %struct.TYPE_3__* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = load %struct.sock*, %struct.sock** %10, align 8
  %60 = call i32 @sk_free(%struct.sock* %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %78

63:                                               ; preds = %52
  %64 = load %struct.socket*, %struct.socket** %7, align 8
  %65 = load %struct.sock*, %struct.sock** %10, align 8
  %66 = call i32 @sock_init_data(%struct.socket* %64, %struct.sock* %65)
  %67 = load i32, i32* @ax25_free_sock, align 4
  %68 = load %struct.sock*, %struct.sock** %10, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.socket*, %struct.socket** %7, align 8
  %71 = getelementptr inbounds %struct.socket, %struct.socket* %70, i32 0, i32 1
  store i32* @ax25_proto_ops, i32** %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.sock*, %struct.sock** %10, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sock*, %struct.sock** %10, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store %struct.sock* %75, %struct.sock** %77, align 8
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %63, %58, %49, %40, %34, %14
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @ax25_create_cb(...) #1

declare dso_local i32 @sk_free(%struct.sock*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

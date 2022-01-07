; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sock*)* }
%struct.TYPE_4__ = type { i32 }

@TCP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@TCP_CLOSE_WAIT = common dso_local global i32 0, align 4
@TCP_MIB_ESTABRESETS = common dso_local global i32 0, align 4
@SOCK_BINDPORT_LOCK = common dso_local global i32 0, align 4
@statename = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_set_state(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %55 [
    i32 128, label %10
    i32 129, label %19
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 128
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call i32 @sock_net(%struct.sock* %14)
  %16 = load i32, i32* @TCP_MIB_CURRESTAB, align 4
  %17 = call i32 @TCP_INC_STATS(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %10
  br label %64

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @TCP_CLOSE_WAIT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %26, label %31

26:                                               ; preds = %23, %19
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call i32 @sock_net(%struct.sock* %27)
  %29 = load i32, i32* @TCP_MIB_ESTABRESETS, align 4
  %30 = call i32 @TCP_INC_STATS(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %35, align 8
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = call i32 %36(%struct.sock* %37)
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %31
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SOCK_BINDPORT_LOCK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = call i32 @inet_put_port(%struct.sock* %52)
  br label %54

54:                                               ; preds = %51, %44, %31
  br label %55

55:                                               ; preds = %2, %54
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 128
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = call i32 @sock_net(%struct.sock* %59)
  %61 = load i32, i32* @TCP_MIB_CURRESTAB, align 4
  %62 = call i32 @TCP_DEC_STATS(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %55
  br label %64

64:                                               ; preds = %63, %18
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  ret void
}

declare dso_local i32 @TCP_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_put_port(%struct.sock*) #1

declare dso_local i32 @TCP_DEC_STATS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

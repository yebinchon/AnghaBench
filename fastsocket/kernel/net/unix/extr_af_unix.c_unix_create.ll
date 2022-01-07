; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i32, i32*, i32 }

@PF_UNIX = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@unix_stream_ops = common dso_local global i32 0, align 4
@unix_dgram_ops = common dso_local global i32 0, align 4
@unix_seqpacket_ops = common dso_local global i32 0, align 4
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @unix_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @PF_UNIX, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EPROTONOSUPPORT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %52

19:                                               ; preds = %12, %4
  %20 = load i32, i32* @SS_UNCONNECTED, align 4
  %21 = load %struct.socket*, %struct.socket** %7, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.socket*, %struct.socket** %7, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %38 [
    i32 128, label %26
    i32 130, label %29
    i32 131, label %32
    i32 129, label %35
  ]

26:                                               ; preds = %19
  %27 = load %struct.socket*, %struct.socket** %7, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 1
  store i32* @unix_stream_ops, i32** %28, align 8
  br label %41

29:                                               ; preds = %19
  %30 = load %struct.socket*, %struct.socket** %7, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  store i32 131, i32* %31, align 8
  br label %32

32:                                               ; preds = %19, %29
  %33 = load %struct.socket*, %struct.socket** %7, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 1
  store i32* @unix_dgram_ops, i32** %34, align 8
  br label %41

35:                                               ; preds = %19
  %36 = load %struct.socket*, %struct.socket** %7, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 1
  store i32* @unix_seqpacket_ops, i32** %37, align 8
  br label %41

38:                                               ; preds = %19
  %39 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %52

41:                                               ; preds = %35, %32, %26
  %42 = load %struct.net*, %struct.net** %6, align 8
  %43 = load %struct.socket*, %struct.socket** %7, align 8
  %44 = call i64 @unix_create1(%struct.net* %42, %struct.socket* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  br label %50

50:                                               ; preds = %47, %46
  %51 = phi i32 [ 0, %46 ], [ %49, %47 ]
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %38, %16
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @unix_create1(%struct.net*, %struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

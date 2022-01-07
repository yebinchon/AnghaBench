; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_af_rds.c_rds_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_af_rds.c_rds_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32* }
%struct.rds_sock = type { i64, i64, i32, i32, i32, i32, i64, i32, i32 }

@rds_poll_waitq = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLWRBAND = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, i32*)* @rds_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.rds_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %7, align 8
  %15 = call %struct.rds_sock* @rds_sk_to_rs(%struct.sock* %14)
  store %struct.rds_sock* %15, %struct.rds_sock** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @poll_wait(%struct.file* %16, i32* %19, i32* %20)
  %22 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %23 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @poll_wait(%struct.file* %27, i32* @rds_poll_waitq, i32* %28)
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %32 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %31, i32 0, i32 2
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @read_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %36 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %30
  %40 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %41 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %40, i32 0, i32 7
  %42 = call i64 @rds_cong_updated_since(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* @POLLIN, align 4
  %46 = load i32, i32* @POLLRDNORM, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @POLLWRBAND, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %44, %39
  br label %71

53:                                               ; preds = %30
  %54 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %55 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %54, i32 0, i32 5
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %58 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load i32, i32* @POLLIN, align 4
  %63 = load i32, i32* @POLLRDNORM, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %61, %53
  %68 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %69 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %68, i32 0, i32 5
  %70 = call i32 @spin_unlock(i32* %69)
  br label %71

71:                                               ; preds = %67, %52
  %72 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %73 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %72, i32 0, i32 4
  %74 = call i32 @list_empty(i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %78 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %77, i32 0, i32 3
  %79 = call i32 @list_empty(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76, %71
  %82 = load i32, i32* @POLLIN, align 4
  %83 = load i32, i32* @POLLRDNORM, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %81, %76
  %88 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %89 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %92 = call i64 @rds_sk_sndbuf(%struct.rds_sock* %91)
  %93 = icmp slt i64 %90, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, i32* @POLLOUT, align 4
  %96 = load i32, i32* @POLLWRNORM, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %94, %87
  %101 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %102 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %101, i32 0, i32 2
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @read_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.rds_sock*, %struct.rds_sock** %8, align 8
  %109 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %100
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

declare dso_local %struct.rds_sock* @rds_sk_to_rs(%struct.sock*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i64 @rds_cong_updated_since(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @rds_sk_sndbuf(%struct.rds_sock*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

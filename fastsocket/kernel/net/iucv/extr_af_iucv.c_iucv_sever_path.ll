; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sever_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sever_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.iucv_path*, i8*)* }
%struct.iucv_path = type { i32 }
%struct.sock = type { i32 }
%struct.iucv_sock = type { i32, i32, %struct.iucv_path* }

@pr_iucv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @iucv_sever_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_sever_path(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca %struct.iucv_sock*, align 8
  %7 = alloca %struct.iucv_path*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %8)
  store %struct.iucv_sock* %9, %struct.iucv_sock** %6, align 8
  %10 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %11 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %10, i32 0, i32 2
  %12 = load %struct.iucv_path*, %struct.iucv_path** %11, align 8
  store %struct.iucv_path* %12, %struct.iucv_path** %7, align 8
  %13 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %14 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %13, i32 0, i32 2
  %15 = load %struct.iucv_path*, %struct.iucv_path** %14, align 8
  %16 = icmp ne %struct.iucv_path* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %2
  %18 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %19 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %18, i32 0, i32 2
  store %struct.iucv_path* null, %struct.iucv_path** %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %24 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %25 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @low_nmcpy(i8* %23, i32 %26)
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %29 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %30 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @high_nmcpy(i8* %28, i32 %31)
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %34 = call i32 @ASCEBC(i8* %33, i32 16)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pr_iucv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.iucv_path*, i8*)*, i32 (%struct.iucv_path*, i8*)** %36, align 8
  %38 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %40 = call i32 %37(%struct.iucv_path* %38, i8* %39)
  br label %47

41:                                               ; preds = %17
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pr_iucv, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.iucv_path*, i8*)*, i32 (%struct.iucv_path*, i8*)** %43, align 8
  %45 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %46 = call i32 %44(%struct.iucv_path* %45, i8* null)
  br label %47

47:                                               ; preds = %41, %22
  %48 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %49 = call i32 @iucv_path_free(%struct.iucv_path* %48)
  br label %50

50:                                               ; preds = %47, %2
  ret void
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @low_nmcpy(i8*, i32) #1

declare dso_local i32 @high_nmcpy(i8*, i32) #1

declare dso_local i32 @ASCEBC(i8*, i32) #1

declare dso_local i32 @iucv_path_free(%struct.iucv_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

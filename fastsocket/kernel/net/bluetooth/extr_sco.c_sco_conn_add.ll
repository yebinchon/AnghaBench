; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_conn_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_conn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sco_conn = type { i64, i32*, i32*, %struct.hci_conn*, i32 }
%struct.hci_conn = type { i32, %struct.sco_conn*, %struct.hci_dev* }
%struct.hci_dev = type { i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"hcon %p conn %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sco_conn* (%struct.hci_conn*, i64)* @sco_conn_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sco_conn* @sco_conn_add(%struct.hci_conn* %0, i64 %1) #0 {
  %3 = alloca %struct.sco_conn*, align 8
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca %struct.sco_conn*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %9 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %8, i32 0, i32 2
  %10 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  store %struct.hci_dev* %10, %struct.hci_dev** %6, align 8
  %11 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %12 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %11, i32 0, i32 1
  %13 = load %struct.sco_conn*, %struct.sco_conn** %12, align 8
  store %struct.sco_conn* %13, %struct.sco_conn** %7, align 8
  %14 = load %struct.sco_conn*, %struct.sco_conn** %7, align 8
  %15 = icmp ne %struct.sco_conn* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %2
  %20 = load %struct.sco_conn*, %struct.sco_conn** %7, align 8
  store %struct.sco_conn* %20, %struct.sco_conn** %3, align 8
  br label %63

21:                                               ; preds = %16
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.sco_conn* @kzalloc(i32 40, i32 %22)
  store %struct.sco_conn* %23, %struct.sco_conn** %7, align 8
  %24 = load %struct.sco_conn*, %struct.sco_conn** %7, align 8
  %25 = icmp ne %struct.sco_conn* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store %struct.sco_conn* null, %struct.sco_conn** %3, align 8
  br label %63

27:                                               ; preds = %21
  %28 = load %struct.sco_conn*, %struct.sco_conn** %7, align 8
  %29 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %28, i32 0, i32 4
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.sco_conn*, %struct.sco_conn** %7, align 8
  %32 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %33 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %32, i32 0, i32 1
  store %struct.sco_conn* %31, %struct.sco_conn** %33, align 8
  %34 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %35 = load %struct.sco_conn*, %struct.sco_conn** %7, align 8
  %36 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %35, i32 0, i32 3
  store %struct.hci_conn* %34, %struct.hci_conn** %36, align 8
  %37 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 1
  %39 = load %struct.sco_conn*, %struct.sco_conn** %7, align 8
  %40 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %42 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %41, i32 0, i32 0
  %43 = load %struct.sco_conn*, %struct.sco_conn** %7, align 8
  %44 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %27
  %50 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sco_conn*, %struct.sco_conn** %7, align 8
  %54 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %58

55:                                               ; preds = %27
  %56 = load %struct.sco_conn*, %struct.sco_conn** %7, align 8
  %57 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %56, i32 0, i32 0
  store i64 60, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %60 = load %struct.sco_conn*, %struct.sco_conn** %7, align 8
  %61 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %59, %struct.sco_conn* %60)
  %62 = load %struct.sco_conn*, %struct.sco_conn** %7, align 8
  store %struct.sco_conn* %62, %struct.sco_conn** %3, align 8
  br label %63

63:                                               ; preds = %58, %26, %19
  %64 = load %struct.sco_conn*, %struct.sco_conn** %3, align 8
  ret %struct.sco_conn* %64
}

declare dso_local %struct.sco_conn* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, %struct.sco_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

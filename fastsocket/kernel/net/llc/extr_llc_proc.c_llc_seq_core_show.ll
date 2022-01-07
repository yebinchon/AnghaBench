; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_proc.c_llc_seq_core_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_proc.c_llc_seq_core_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.sock = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.llc_sock = type { i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [93 x i8] c"Connection list:\0Adsap state      retr txw rxw pf ff sf df rs cs tack tpfc trs tbs blog busr\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c" %02X  %-10s %3d  %3d %3d %2d %2d %2d %2d %2d %2d %4d %4d %3d %3d %4d %4d\0A\00", align 1
@llc_conn_state_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @llc_seq_core_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_seq_core_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.llc_sock*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %9 = icmp eq i8* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = call i32 @seq_puts(%struct.seq_file* %11, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0))
  br label %87

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.sock*
  store %struct.sock* %15, %struct.sock** %5, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call %struct.llc_sock* @llc_sk(%struct.sock* %16)
  store %struct.llc_sock* %17, %struct.llc_sock** %6, align 8
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %20 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %19, i32 0, i32 14
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @llc_conn_state_names, align 8
  %24 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %25 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %30 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %33 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %36 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %39 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %42 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %45 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %48 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %51 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %54 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %57 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = call i32 @timer_pending(i32* %58)
  %60 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %61 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = call i32 @timer_pending(i32* %62)
  %64 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %65 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = call i32 @timer_pending(i32* %66)
  %68 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %69 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = call i32 @timer_pending(i32* %70)
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load %struct.sock*, %struct.sock** %5, align 8
  %81 = call i32 @sock_owned_by_user(%struct.sock* %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %59, i32 %63, i32 %67, i32 %71, i32 %79, i32 %85)
  br label %87

87:                                               ; preds = %13, %10
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

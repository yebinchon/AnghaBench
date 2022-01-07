; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_t1_timer_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_t1_timer_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i64, i32*, i32, i32, %struct.sctp_transport* }
%struct.sctp_transport = type { i64 }

@.str = private unnamed_addr constant [70 x i8] c"T1 %s Timeout adjustment init_err_counter: %d cycle: %d timeout: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_association*, i64, i8*)* @sctp_cmd_t1_timer_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cmd_t1_timer_update(%struct.sctp_association* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sctp_transport*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %8, i32 0, i32 4
  %10 = load %struct.sctp_transport*, %struct.sctp_transport** %9, align 8
  store %struct.sctp_transport* %10, %struct.sctp_transport** %7, align 8
  %11 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %16 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = icmp sgt i64 %17, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %3
  %24 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %28, align 4
  %31 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %32 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %38 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %23
  %42 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %43 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %46 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %44, i32* %49, align 4
  br label %50

50:                                               ; preds = %41, %23
  %51 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %52 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %57 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %60 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %63 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %58, i64 %61, i32 %67)
  br label %69

69:                                               ; preds = %50, %3
  ret void
}

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

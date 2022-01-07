; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pipe_grant_credits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pipe_grant_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.pep_sock = type { i32, i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@PN_PEP_IND_FLOW_CONTROL = common dso_local global i32 0, align 4
@PEP_IND_READY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CREDITS_THR = common dso_local global i32 0, align 4
@CREDITS_MAX = common dso_local global i32 0, align 4
@PN_PEP_IND_ID_MCFC_GRANT_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @pipe_grant_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_grant_credits(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.pep_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.pep_sock* @pep_sk(%struct.sock* %4)
  store %struct.pep_sock* %5, %struct.pep_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TCP_ESTABLISHED, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %14 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %50 [
    i32 130, label %16
    i32 128, label %17
    i32 129, label %25
  ]

16:                                               ; preds = %1
  br label %50

17:                                               ; preds = %1
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = load i32, i32* @PN_PEP_IND_FLOW_CONTROL, align 4
  %20 = load i32, i32* @PEP_IND_READY, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call i32 @pipe_snd_status(%struct.sock* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %24 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  br label %50

25:                                               ; preds = %1
  %26 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %27 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CREDITS_THR, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* @CREDITS_MAX, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %50

34:                                               ; preds = %25
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = load i32, i32* @PN_PEP_IND_ID_MCFC_GRANT_CREDITS, align 4
  %37 = load i32, i32* @CREDITS_MAX, align 4
  %38 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %39 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call i32 @pipe_snd_status(%struct.sock* %35, i32 %36, i32 %41, i32 %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i32, i32* @CREDITS_MAX, align 4
  %47 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %48 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %34
  br label %50

50:                                               ; preds = %1, %49, %33, %17, %16
  ret void
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pipe_snd_status(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

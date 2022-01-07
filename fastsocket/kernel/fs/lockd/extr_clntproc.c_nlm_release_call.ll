; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlm_release_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlm_release_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_rqst = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_release_call(%struct.nlm_rqst* %0) #0 {
  %2 = alloca %struct.nlm_rqst*, align 8
  store %struct.nlm_rqst* %0, %struct.nlm_rqst** %2, align 8
  %3 = load %struct.nlm_rqst*, %struct.nlm_rqst** %2, align 8
  %4 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %3, i32 0, i32 1
  %5 = call i32 @atomic_dec_and_test(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %17

8:                                                ; preds = %1
  %9 = load %struct.nlm_rqst*, %struct.nlm_rqst** %2, align 8
  %10 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @nlm_release_host(i32 %11)
  %13 = load %struct.nlm_rqst*, %struct.nlm_rqst** %2, align 8
  %14 = call i32 @nlmclnt_release_lockargs(%struct.nlm_rqst* %13)
  %15 = load %struct.nlm_rqst*, %struct.nlm_rqst** %2, align 8
  %16 = call i32 @kfree(%struct.nlm_rqst* %15)
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @nlm_release_host(i32) #1

declare dso_local i32 @nlmclnt_release_lockargs(%struct.nlm_rqst*) #1

declare dso_local i32 @kfree(%struct.nlm_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

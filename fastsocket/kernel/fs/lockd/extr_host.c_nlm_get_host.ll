; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_host.c_nlm_get_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_host.c_nlm_get_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"lockd: get host %s\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@NLM_HOST_EXPIRE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nlm_host* @nlm_get_host(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %2, align 8
  %3 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %4 = icmp ne %struct.nlm_host* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %7 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %11 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %10, i32 0, i32 1
  %12 = call i32 @atomic_inc(i32* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* @NLM_HOST_EXPIRE, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %17 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %5, %1
  %19 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  ret %struct.nlm_host* %19
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

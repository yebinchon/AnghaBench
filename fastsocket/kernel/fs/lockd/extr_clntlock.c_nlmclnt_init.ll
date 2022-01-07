; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntlock.c_nlmclnt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntlock.c_nlmclnt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32 }
%struct.nlmclnt_initdata = type { i32, i32, i32, i32, i32, i32 }

@ENOLCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nlm_host* @nlmclnt_init(%struct.nlmclnt_initdata* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  %3 = alloca %struct.nlmclnt_initdata*, align 8
  %4 = alloca %struct.nlm_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nlmclnt_initdata* %0, %struct.nlmclnt_initdata** %3, align 8
  %7 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %8 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 2
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 4
  store i32 %12, i32* %5, align 4
  %13 = call i32 (...) @lockd_up()
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.nlm_host* @ERR_PTR(i32 %17)
  store %struct.nlm_host* %18, %struct.nlm_host** %2, align 8
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %21 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %24 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %27 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %31 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %34 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.nlm_host* @nlmclnt_lookup_host(i32 %22, i32 %25, i32 %28, i32 %29, i32 %32, i32 %35)
  store %struct.nlm_host* %36, %struct.nlm_host** %4, align 8
  %37 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %38 = icmp eq %struct.nlm_host* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %19
  %40 = call i32 (...) @lockd_down()
  %41 = load i32, i32* @ENOLCK, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.nlm_host* @ERR_PTR(i32 %42)
  store %struct.nlm_host* %43, %struct.nlm_host** %2, align 8
  br label %46

44:                                               ; preds = %19
  %45 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  store %struct.nlm_host* %45, %struct.nlm_host** %2, align 8
  br label %46

46:                                               ; preds = %44, %39, %16
  %47 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  ret %struct.nlm_host* %47
}

declare dso_local i32 @lockd_up(...) #1

declare dso_local %struct.nlm_host* @ERR_PTR(i32) #1

declare dso_local %struct.nlm_host* @nlmclnt_lookup_host(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lockd_down(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

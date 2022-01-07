; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2fb_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2fb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.pm2fb_par* }
%struct.pm2fb_par = type { i32 }

@PM2R_SYNC = common dso_local global i32 0, align 4
@PM2R_OUT_FIFO_WORDS = common dso_local global i32 0, align 4
@PM2R_OUT_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @pm2fb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2fb_sync(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pm2fb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 0
  %6 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  store %struct.pm2fb_par* %6, %struct.pm2fb_par** %3, align 8
  %7 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %8 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %7, i32 1)
  %9 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %10 = load i32, i32* @PM2R_SYNC, align 4
  %11 = call i32 @pm2_WR(%struct.pm2fb_par* %9, i32 %10, i32 0)
  %12 = call i32 (...) @mb()
  br label %13

13:                                               ; preds = %22, %1
  br label %14

14:                                               ; preds = %19, %13
  %15 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %16 = load i32, i32* @PM2R_OUT_FIFO_WORDS, align 4
  %17 = call i64 @pm2_RD(%struct.pm2fb_par* %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 (...) @cpu_relax()
  br label %14

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %24 = load i32, i32* @PM2R_OUT_FIFO, align 4
  %25 = call i64 @pm2_RD(%struct.pm2fb_par* %23, i32 %24)
  %26 = load i32, i32* @PM2R_SYNC, align 4
  %27 = call i64 @PM2TAG(i32 %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %13, label %29

29:                                               ; preds = %22
  ret i32 0
}

declare dso_local i32 @WAIT_FIFO(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @pm2_RD(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @PM2TAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_init_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_init_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.page** }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@RPCSVC_MAXPAGES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32)* @svc_init_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_init_buffer(%struct.svc_rqst* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %10 = call i64 @svc_is_backchannel(%struct.svc_rqst* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %47

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = udiv i32 %14, %15
  %17 = add i32 %16, 1
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @RPCSVC_MAXPAGES, align 4
  %20 = icmp ugt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  br label %23

23:                                               ; preds = %32, %13
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.page* @alloc_page(i32 %27)
  store %struct.page* %28, %struct.page** %8, align 8
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %43

32:                                               ; preds = %26
  %33 = load %struct.page*, %struct.page** %8, align 8
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %35 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %34, i32 0, i32 0
  %36 = load %struct.page**, %struct.page*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds %struct.page*, %struct.page** %36, i64 %39
  store %struct.page* %33, %struct.page** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %6, align 4
  br label %23

43:                                               ; preds = %31, %23
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @svc_is_backchannel(%struct.svc_rqst*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

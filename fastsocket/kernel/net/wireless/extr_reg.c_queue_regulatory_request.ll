; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_queue_regulatory_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_queue_regulatory_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulatory_request = type { i32, i8** }

@reg_requests_lock = common dso_local global i32 0, align 4
@reg_requests_list = common dso_local global i32 0, align 4
@reg_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regulatory_request*)* @queue_regulatory_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_regulatory_request(%struct.regulatory_request* %0) #0 {
  %2 = alloca %struct.regulatory_request*, align 8
  store %struct.regulatory_request* %0, %struct.regulatory_request** %2, align 8
  %3 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %4 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %3, i32 0, i32 1
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i64 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @toupper(i8* %7)
  %9 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %10 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %9, i32 0, i32 1
  %11 = load i8**, i8*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  store i8* %8, i8** %12, align 8
  %13 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %14 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %13, i32 0, i32 1
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @toupper(i8* %17)
  %19 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %20 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* %18, i8** %22, align 8
  %23 = call i32 @spin_lock(i32* @reg_requests_lock)
  %24 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %25 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %24, i32 0, i32 0
  %26 = call i32 @list_add_tail(i32* %25, i32* @reg_requests_list)
  %27 = call i32 @spin_unlock(i32* @reg_requests_lock)
  %28 = call i32 @schedule_work(i32* @reg_work)
  ret void
}

declare dso_local i8* @toupper(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

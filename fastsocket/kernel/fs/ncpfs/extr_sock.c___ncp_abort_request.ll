; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c___ncp_abort_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c___ncp_abort_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32 }
%struct.ncp_request_reply = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncp_server*, %struct.ncp_request_reply*, i32)* @__ncp_abort_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ncp_abort_request(%struct.ncp_server* %0, %struct.ncp_request_reply* %1, i32 %2) #0 {
  %4 = alloca %struct.ncp_server*, align 8
  %5 = alloca %struct.ncp_request_reply*, align 8
  %6 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %4, align 8
  store %struct.ncp_request_reply* %1, %struct.ncp_request_reply** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %5, align 8
  %8 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %23 [
    i32 130, label %10
    i32 131, label %10
    i32 128, label %11
    i32 129, label %19
    i32 132, label %22
  ]

10:                                               ; preds = %3, %3
  br label %23

11:                                               ; preds = %3
  %12 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %5, align 8
  %13 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %12, i32 0, i32 1
  %14 = call i32 @list_del_init(i32* %13)
  %15 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %16 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ncp_finish_request(%struct.ncp_server* %15, %struct.ncp_request_reply* %16, i32 %17)
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %5, align 8
  %21 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %20, i32 0, i32 0
  store i32 132, i32* %21, align 4
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %3, %22, %19, %11, %10
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @ncp_finish_request(%struct.ncp_server*, %struct.ncp_request_reply*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

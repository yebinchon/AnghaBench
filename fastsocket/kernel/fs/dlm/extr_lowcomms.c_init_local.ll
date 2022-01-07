; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_init_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_init_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }

@dlm_local_count = common dso_local global i64 0, align 8
@DLM_MAX_ADDR_COUNT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@dlm_local_addr = common dso_local global %struct.sockaddr_storage** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_local() #0 {
  %1 = alloca %struct.sockaddr_storage, align 4
  %2 = alloca %struct.sockaddr_storage*, align 8
  %3 = alloca i32, align 4
  store i64 0, i64* @dlm_local_count, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %28, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @DLM_MAX_ADDR_COUNT, align 4
  %7 = sub nsw i32 %6, 1
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @dlm_our_addr(%struct.sockaddr_storage* %1, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %31

14:                                               ; preds = %9
  %15 = load i32, i32* @GFP_NOFS, align 4
  %16 = call %struct.sockaddr_storage* @kmalloc(i32 4, i32 %15)
  store %struct.sockaddr_storage* %16, %struct.sockaddr_storage** %2, align 8
  %17 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %2, align 8
  %18 = icmp ne %struct.sockaddr_storage* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %31

20:                                               ; preds = %14
  %21 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %2, align 8
  %22 = call i32 @memcpy(%struct.sockaddr_storage* %21, %struct.sockaddr_storage* %1, i32 4)
  %23 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %2, align 8
  %24 = load %struct.sockaddr_storage**, %struct.sockaddr_storage*** @dlm_local_addr, align 8
  %25 = load i64, i64* @dlm_local_count, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* @dlm_local_count, align 8
  %27 = getelementptr inbounds %struct.sockaddr_storage*, %struct.sockaddr_storage** %24, i64 %25
  store %struct.sockaddr_storage* %23, %struct.sockaddr_storage** %27, align 8
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %4

31:                                               ; preds = %19, %13, %4
  ret void
}

declare dso_local i64 @dlm_our_addr(%struct.sockaddr_storage*, i32) #1

declare dso_local %struct.sockaddr_storage* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, %struct.sockaddr_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_get_server_iovec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_get_server_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i32 }
%struct.TCP_Server_Info = type { i32, %struct.kvec* }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvec* (%struct.TCP_Server_Info*, i32)* @get_server_iovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvec* @get_server_iovec(%struct.TCP_Server_Info* %0, i32 %1) #0 {
  %3 = alloca %struct.kvec*, align 8
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvec*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %8 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %7, i32 0, i32 1
  %9 = load %struct.kvec*, %struct.kvec** %8, align 8
  %10 = icmp ne %struct.kvec* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %14 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ule i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %19 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %18, i32 0, i32 1
  %20 = load %struct.kvec*, %struct.kvec** %19, align 8
  store %struct.kvec* %20, %struct.kvec** %3, align 8
  br label %43

21:                                               ; preds = %11, %2
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call %struct.kvec* @kmalloc(i32 %25, i32 %26)
  store %struct.kvec* %27, %struct.kvec** %6, align 8
  %28 = load %struct.kvec*, %struct.kvec** %6, align 8
  %29 = icmp ne %struct.kvec* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %32 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %31, i32 0, i32 1
  %33 = load %struct.kvec*, %struct.kvec** %32, align 8
  %34 = call i32 @kfree(%struct.kvec* %33)
  %35 = load %struct.kvec*, %struct.kvec** %6, align 8
  %36 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %37 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %36, i32 0, i32 1
  store %struct.kvec* %35, %struct.kvec** %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %40 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %30, %21
  %42 = load %struct.kvec*, %struct.kvec** %6, align 8
  store %struct.kvec* %42, %struct.kvec** %3, align 8
  br label %43

43:                                               ; preds = %41, %17
  %44 = load %struct.kvec*, %struct.kvec** %3, align 8
  ret %struct.kvec* %44
}

declare dso_local %struct.kvec* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.kvec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

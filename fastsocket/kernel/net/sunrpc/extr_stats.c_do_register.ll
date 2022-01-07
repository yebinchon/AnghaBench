; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_stats.c_do_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_stats.c_do_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }
%struct.file_operations = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"RPC:       registering /proc/net/rpc/%s\0A\00", align 1
@proc_net_rpc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.proc_dir_entry* (i8*, i8*, %struct.file_operations*)* @do_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.proc_dir_entry* @do_register(i8* %0, i8* %1, %struct.file_operations* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.file_operations*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.file_operations* %2, %struct.file_operations** %6, align 8
  %7 = call i32 (...) @rpc_proc_init()
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @proc_net_rpc, align 4
  %12 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.proc_dir_entry* @proc_create_data(i8* %10, i32 0, i32 %11, %struct.file_operations* %12, i8* %13)
  ret %struct.proc_dir_entry* %14
}

declare dso_local i32 @rpc_proc_init(...) #1

declare dso_local i32 @dprintk(i8*, i8*) #1

declare dso_local %struct.proc_dir_entry* @proc_create_data(i8*, i32, i32, %struct.file_operations*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

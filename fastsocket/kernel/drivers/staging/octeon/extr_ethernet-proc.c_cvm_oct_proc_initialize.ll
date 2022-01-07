; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-proc.c_cvm_oct_proc_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-proc.c_cvm_oct_proc_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"octeon_ethernet_stats\00", align 1
@cvm_oct_stats_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvm_oct_proc_initialize() #0 {
  %1 = alloca %struct.proc_dir_entry*, align 8
  %2 = call %struct.proc_dir_entry* @create_proc_entry(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %1, align 8
  %3 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %1, align 8
  %4 = icmp ne %struct.proc_dir_entry* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %1, align 8
  %7 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %6, i32 0, i32 0
  store i32* @cvm_oct_stats_operations, i32** %7, align 8
  br label %8

8:                                                ; preds = %5, %0
  ret void
}

declare dso_local %struct.proc_dir_entry* @create_proc_entry(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

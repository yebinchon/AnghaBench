; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_viafb_remove_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_viafb_remove_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"dvp0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dvp1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dfph\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dfpl\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vt1636\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"vt1625\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"viafb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc_dir_entry*)* @viafb_remove_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viafb_remove_proc(%struct.proc_dir_entry* %0) #0 {
  %2 = alloca %struct.proc_dir_entry*, align 8
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %2, align 8
  %3 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %4 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.proc_dir_entry* %3)
  %5 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %6 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.proc_dir_entry* %5)
  %7 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %8 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.proc_dir_entry* %7)
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %10 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.proc_dir_entry* %9)
  %11 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %12 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.proc_dir_entry* %11)
  %13 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %14 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.proc_dir_entry* %13)
  %15 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.proc_dir_entry* null)
  ret void
}

declare dso_local i32 @remove_proc_entry(i8*, %struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

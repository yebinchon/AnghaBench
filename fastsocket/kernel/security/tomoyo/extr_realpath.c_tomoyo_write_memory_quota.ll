; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_realpath.c_tomoyo_write_memory_quota.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_realpath.c_tomoyo_write_memory_quota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"Shared: %u\00", align 1
@tomoyo_quota_for_savename = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Private: %u\00", align 1
@tomoyo_quota_for_elements = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_write_memory_quota(%struct.tomoyo_io_buffer* %0) #0 {
  %2 = alloca %struct.tomoyo_io_buffer*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %2, align 8
  %5 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @sscanf(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %4)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* @tomoyo_quota_for_savename, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* @tomoyo_quota_for_elements, align 4
  br label %19

19:                                               ; preds = %17, %13
  br label %20

20:                                               ; preds = %19, %11
  ret i32 0
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

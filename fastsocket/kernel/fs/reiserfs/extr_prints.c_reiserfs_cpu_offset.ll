; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_reiserfs_cpu_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_reiserfs_cpu_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_key = type { i32 }

@TYPE_DIRENTRY = common dso_local global i64 0, align 8
@off_buf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%Lu(%Lu)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%Lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cpu_key*)* @reiserfs_cpu_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @reiserfs_cpu_offset(%struct.cpu_key* %0) #0 {
  %2 = alloca %struct.cpu_key*, align 8
  store %struct.cpu_key* %0, %struct.cpu_key** %2, align 8
  %3 = load %struct.cpu_key*, %struct.cpu_key** %2, align 8
  %4 = call i64 @cpu_key_k_type(%struct.cpu_key* %3)
  %5 = load i64, i64* @TYPE_DIRENTRY, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load i8*, i8** @off_buf, align 8
  %9 = load %struct.cpu_key*, %struct.cpu_key** %2, align 8
  %10 = call i64 @cpu_key_k_offset(%struct.cpu_key* %9)
  %11 = call i64 @GET_HASH_VALUE(i64 %10)
  %12 = load %struct.cpu_key*, %struct.cpu_key** %2, align 8
  %13 = call i64 @cpu_key_k_offset(%struct.cpu_key* %12)
  %14 = call i64 @GET_GENERATION_NUMBER(i64 %13)
  %15 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %14)
  br label %21

16:                                               ; preds = %1
  %17 = load i8*, i8** @off_buf, align 8
  %18 = load %struct.cpu_key*, %struct.cpu_key** %2, align 8
  %19 = call i64 @cpu_key_k_offset(%struct.cpu_key* %18)
  %20 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %16, %7
  %22 = load i8*, i8** @off_buf, align 8
  ret i8* %22
}

declare dso_local i64 @cpu_key_k_type(%struct.cpu_key*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #1

declare dso_local i64 @GET_HASH_VALUE(i64) #1

declare dso_local i64 @cpu_key_k_offset(%struct.cpu_key*) #1

declare dso_local i64 @GET_GENERATION_NUMBER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_dump_proto_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_dump_proto_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm_loop_hba = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"SAS\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"FCP\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"iSCSI\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tcm_loop_hba*)* @tcm_loop_dump_proto_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tcm_loop_dump_proto_id(%struct.tcm_loop_hba* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tcm_loop_hba*, align 8
  store %struct.tcm_loop_hba* %0, %struct.tcm_loop_hba** %3, align 8
  %4 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %3, align 8
  %5 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %10 [
    i32 128, label %7
    i32 130, label %8
    i32 129, label %9
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %12

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %12

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %12

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %12

12:                                               ; preds = %11, %9, %8, %7
  %13 = load i8*, i8** %2, align 8
  ret i8* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

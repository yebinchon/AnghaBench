; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_fs.c_ima_ascii_measurements_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_fs.c_ima_ascii_measurements_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ima_queue_entry = type { %struct.ima_template_entry* }
%struct.ima_template_entry = type { i32, i32, i32 }
%struct.ima_template_data = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%2d \00", align 1
@CONFIG_IMA_MEASURE_PCR_IDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@IMA_SHOW_ASCII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ima_ascii_measurements_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_ascii_measurements_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ima_queue_entry*, align 8
  %7 = alloca %struct.ima_template_entry*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ima_queue_entry*
  store %struct.ima_queue_entry* %9, %struct.ima_queue_entry** %6, align 8
  %10 = load %struct.ima_queue_entry*, %struct.ima_queue_entry** %6, align 8
  %11 = getelementptr inbounds %struct.ima_queue_entry, %struct.ima_queue_entry* %10, i32 0, i32 0
  %12 = load %struct.ima_template_entry*, %struct.ima_template_entry** %11, align 8
  store %struct.ima_template_entry* %12, %struct.ima_template_entry** %7, align 8
  %13 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %14 = icmp eq %struct.ima_template_entry* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = load i32, i32* @CONFIG_IMA_MEASURE_PCR_IDX, align 4
  %19 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %22 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ima_print_digest(%struct.seq_file* %20, i32 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %27 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = load %struct.ima_template_entry*, %struct.ima_template_entry** %7, align 8
  %32 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %31, i32 0, i32 0
  %33 = bitcast i32* %32 to %struct.ima_template_data*
  %34 = load i32, i32* @IMA_SHOW_ASCII, align 4
  %35 = call i32 @ima_template_show(%struct.seq_file* %30, %struct.ima_template_data* %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %16, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @ima_print_digest(%struct.seq_file*, i32) #1

declare dso_local i32 @ima_template_show(%struct.seq_file*, %struct.ima_template_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/zorro/extr_proc.c_zorro_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/zorro/extr_proc.c_zorro_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { i32 }

@zorro_autocon = common dso_local global %struct.zorro_dev* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"%02x\09%08x\09%08lx\09%08lx\09%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @zorro_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zorro_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.zorro_dev*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.zorro_dev*, %struct.zorro_dev** @zorro_autocon, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %10, i64 %11
  store %struct.zorro_dev* %12, %struct.zorro_dev** %6, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.zorro_dev*, %struct.zorro_dev** %6, align 8
  %16 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.zorro_dev*, %struct.zorro_dev** %6, align 8
  %19 = call i64 @zorro_resource_start(%struct.zorro_dev* %18)
  %20 = load %struct.zorro_dev*, %struct.zorro_dev** %6, align 8
  %21 = call i64 @zorro_resource_len(%struct.zorro_dev* %20)
  %22 = load %struct.zorro_dev*, %struct.zorro_dev** %6, align 8
  %23 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %17, i64 %19, i64 %21, i32 %25)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i32, i64, i64, i32) #1

declare dso_local i64 @zorro_resource_start(%struct.zorro_dev*) #1

declare dso_local i64 @zorro_resource_len(%struct.zorro_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

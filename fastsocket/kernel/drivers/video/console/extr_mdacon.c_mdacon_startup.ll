; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_mdacon.c_mdacon_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_mdacon.c_mdacon_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mda_num_columns = common dso_local global i32 0, align 4
@mda_num_lines = common dso_local global i32 0, align 4
@mda_vram_len = common dso_local global i32 0, align 4
@mda_vram_base = common dso_local global i32 0, align 4
@mda_index_port = common dso_local global i32 0, align 4
@mda_value_port = common dso_local global i32 0, align 4
@mda_mode_port = common dso_local global i32 0, align 4
@mda_status_port = common dso_local global i32 0, align 4
@mda_gfx_port = common dso_local global i32 0, align 4
@TYPE_MDA = common dso_local global i64 0, align 8
@mda_type = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"MDA\00", align 1
@mda_type_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"mdacon: MDA card not detected.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"mdacon: %s with %ldK of memory detected.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"MDA-2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @mdacon_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mdacon_startup() #0 {
  %1 = alloca i8*, align 8
  store i32 80, i32* @mda_num_columns, align 4
  store i32 25, i32* @mda_num_lines, align 4
  store i32 4096, i32* @mda_vram_len, align 4
  %2 = load i32, i32* @mda_vram_len, align 4
  %3 = call i32 @VGA_MAP_MEM(i32 720896, i32 %2)
  store i32 %3, i32* @mda_vram_base, align 4
  store i32 948, i32* @mda_index_port, align 4
  store i32 949, i32* @mda_value_port, align 4
  store i32 952, i32* @mda_mode_port, align 4
  store i32 954, i32* @mda_status_port, align 4
  store i32 959, i32* @mda_gfx_port, align 4
  %4 = load i64, i64* @TYPE_MDA, align 8
  store i64 %4, i64* @mda_type, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** @mda_type_name, align 8
  %5 = call i32 (...) @mda_detect()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %1, align 8
  br label %23

9:                                                ; preds = %0
  %10 = load i64, i64* @mda_type, align 8
  %11 = load i64, i64* @TYPE_MDA, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (...) @mda_initialize()
  br label %15

15:                                               ; preds = %13, %9
  %16 = load i32, i32* @mda_vram_len, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @mda_set_cursor(i32 %17)
  %19 = load i8*, i8** @mda_type_name, align 8
  %20 = load i32, i32* @mda_vram_len, align 4
  %21 = sdiv i32 %20, 1024
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %19, i32 %21)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %23

23:                                               ; preds = %15, %7
  %24 = load i8*, i8** %1, align 8
  ret i8* %24
}

declare dso_local i32 @VGA_MAP_MEM(i32, i32) #1

declare dso_local i32 @mda_detect(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @mda_initialize(...) #1

declare dso_local i32 @mda_set_cursor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
